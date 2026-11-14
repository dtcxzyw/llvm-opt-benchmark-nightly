Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  %i.ke = sub i32 %.neg52, %i.kd
  %i.kf = mul nsw i32 %i.ke, %3
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kg
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !12
  %i.kj = fadd reassoc nsz arcp contract afn float %i.kb, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.kj, ptr %i.kk, align 4, !tbaa !12
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 4 uses
  %i.kl = mul nsw i64 %indvars.iv.next70, %i.ew
  %i.km = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kl
  %i.kn = load float, ptr %i.km, align 4, !tbaa !12
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, 2.000000e+00
  %i.kp = sub nsw i64 %indvars.iv.next70, %i.ex
  %i.kq = mul nsw i64 %i.kp, %i.ew
  %i.kr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !12
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ko, %i.ks
  %i.ku = trunc nsw i64 %indvars.iv.next70 to i32
  %i.kv = add i32 %5, %i.ku
  %i.kw = sub i32 %.neg52, %i.kv
  %i.kx = mul nsw i32 %i.kw, %3
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !12
  %i.lb = fadd reassoc nsz arcp contract afn float %i.kt, %i.la
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next70
  store float %i.lb, ptr %i.lc, align 4, !tbaa !12
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %indvars.iv.next70.1, %wide.trip.count72
  br i1 %exitcond73.not.1, label %._crit_edge, label %vec.epilog.scalar.ph213, !llvm.loop !109

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph213.prol.loopexit, %vec.epilog.scalar.ph213, %middle.block209, %vec.epilog.middle.block225, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !187  ; 2 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !188  ; 2 uses
  %i.i = icmp ult i16 %i.h, 65
  br i1 %i.i, label %bb.n, label %.preheader296

.preheader296:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !189  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader296
  %.0231 = phi i32 [ %i.n, %bb.c ], [ 1, %.preheader296 ] ; 3 uses
  %i.l = shl i32 %i.k, %.0231
  %i.m = icmp ult i32 %i.l, 65536
  %i.n = add nuw nsw i32 %.0231, 1
  br i1 %i.m, label %bb.c, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.0231, -1                   ; 6 uses
  %i.p = shl i32 %i.k, %i.o
  store i32 %i.p, ptr %i.j, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !190
  %i.s = shl i32 %i.r, %i.o
  store i32 %i.s, ptr %i.q, align 8, !tbaa !190
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.u = load <4 x i32>, ptr %i.t, align 8, !tbaa !79
  %i.v = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = shl <4 x i32> %i.u, %i.w
  store <4 x i32> %i.x, ptr %i.t, align 8, !tbaa !79
  %i.y = zext i16 %i.h to i32                     ; 2 uses
  %i.z = zext i16 %i.e to i32                     ; 2 uses
  %i.aa = mul nuw nsw i32 %i.y, %i.z              ; 4 uses
  %i.ab = icmp samesign ult i32 %i.aa, 357892096
  %i.ac = mul i32 %i.aa, 3                        ; 2 uses
  br i1 %i.ab, label %bb.e, label %._crit_edge408

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.z, 128
  %i.ae = add nuw nsw i32 %i.ad, %i.y
  %i.af = add nuw nsw i32 %i.ae, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ah)
  br label %._crit_edge408

._crit_edge408:                                   ; preds = %bb.d, %bb.e
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 57 uses
  %i.aj = zext i32 %i.ac to i64                   ; 13 uses
  %i.ak = getelementptr [4 x i8], ptr %.0233, i64 %i.aj ; 54 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !80 ; 3 uses
  %i.an = icmp ne i32 %i.am, 3                    ; 2 uses
  br i1 %i.an, label %bb.f, label %.thread

.thread:                                          ; preds = %._crit_edge408
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !191
  %.not = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader295.lr.ph

bb.f:                                             ; preds = %._crit_edge408
  %i.aq = icmp sgt i32 %i.am, 0
  br i1 %i.aq, label %.preheader295.lr.ph, label %.loopexit289

.preheader295.lr.ph:                              ; preds = %.thread, %bb.f
  %.0218424 = phi i32 [ %spec.select, %.thread ], [ %i.am, %bb.f ]
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count384 = zext nneg i32 %.0218424 to i64
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 17 uses
  %i.at = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %.0233, i64 %i.at ; 4 uses
  %i.au = shl nuw nsw i64 %i.aj, 2
  %scevgep681 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep687 = getelementptr i8, ptr %.0233, i64 4
  %scevgep689.a = getelementptr i8, ptr %.0233, i64 -4
  %scevgep692.a = getelementptr i8, ptr %.0233, i64 %i.au
  %scevgep939 = getelementptr i8, ptr %.0233, i64 4
  %scevgep942.a = getelementptr i8, ptr %.0233, i64 4
  %i.av = shl nuw nsw i64 %i.aj, 2
  %scevgep946.a = getelementptr i8, ptr %.0233, i64 %i.av
  %i.aw = and i64 %wide.trip.count, 31            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 32, i64 %i.aw      ; 2 uses
  %n.vec1007 = sub nsw i64 %wide.trip.count, %i.ay ; 3 uses
  %broadcast.splatinsert1008 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat1009 = shufflevector <8 x i32> %broadcast.splatinsert1008, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %min.epilog.iters.check1023 = icmp samesign ult i64 %i.ay, 5
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec1026 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert1027 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat1028 = shufflevector <4 x i32> %broadcast.splatinsert1027, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec466 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n480 = icmp eq i64 %n.vec466, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec481 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n493 = icmp eq i64 %n.vec481, %wide.trip.count
  %xtraiter1067.a = and i64 %wide.trip.count, 1
  %lcmp.mod1068.not.a = icmp eq i64 %xtraiter1067.a, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check1020

iter.check1020:                                   ; preds = %.preheader295.lr.ph, %.loopexit1037
  %indvars.iv381 = phi i64 [ 0, %.preheader295.lr.ph ], [ %indvars.iv.next382, %.loopexit1037 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv381 ; 8 uses
  br label %vector.body1010

vector.body1010:                                  ; preds = %iter.check1020, %vector.body1010
  %index1011 = phi i64 [ 0, %iter.check1020 ], [ %index.next1018, %vector.body1010 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1011
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1011
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1011
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1011
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !82
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1012 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !82
  %strided.vec1013 = shufflevector <32 x i16> %wide.vec1012, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1014 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !82
  %strided.vec1015 = shufflevector <32 x i16> %wide.vec1014, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1016 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !82
  %strided.vec1017 = shufflevector <32 x i16> %wide.vec1016, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec1013 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec1015 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec1017 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat1009
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat1009
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat1009
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat1009
  %i.bt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.bu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bq to <8 x float>
  %i.bv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.br to <8 x float>
  %i.bw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bs to <8 x float>
  %i.bx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
  %i.by = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bu)
  %i.bz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv)
  %i.ca = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, splat (float 2.560000e+02)
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.560000e+02)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.560000e+02)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.560000e+02)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index1011 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !12
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !12
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !12
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !12
  %index.next1018 = add nuw i64 %index1011, 32    ; 2 uses
  %i.cj = icmp eq i64 %index.next1018, %n.vec1007
  br i1 %i.cj, label %vec.epilog.iter.check1021, label %vector.body1010, !llvm.loop !120

vec.epilog.iter.check1021:                        ; preds = %vector.body1010
  br i1 %min.epilog.iters.check1023, label %vec.epilog.scalar.ph1022.preheader, label %vec.epilog.vector.body1029, !prof !83

vec.epilog.scalar.ph1022.preheader:               ; preds = %vec.epilog.vector.body1029, %vec.epilog.iter.check1021
  %indvars.iv.ph = phi i64 [ %n.vec1007, %vec.epilog.iter.check1021 ], [ %n.vec1026, %vec.epilog.vector.body1029 ]
  br label %vec.epilog.scalar.ph1022

vec.epilog.vector.body1029:                       ; preds = %vec.epilog.iter.check1021, %vec.epilog.vector.body1029
  %index1030 = phi i64 [ %index.next1033, %vec.epilog.vector.body1029 ], [ %n.vec1007, %vec.epilog.iter.check1021 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index1030
  %wide.vec1031 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !82
  %strided.vec1032 = shufflevector <16 x i16> %wide.vec1031, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec1032 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat1028
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index1030
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !12
  %index.next1033 = add nuw i64 %index1030, 4     ; 2 uses
  %i.cr = icmp eq i64 %index.next1033, %n.vec1026
  br i1 %i.cr, label %vec.epilog.scalar.ph1022.preheader, label %vec.epilog.vector.body1029, !llvm.loop !121

.preheader294:                                    ; preds = %vec.epilog.scalar.ph1022
  %i.cs = load i16, ptr %i.g, align 4, !tbaa !188 ; 7 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %.not339 = icmp eq i16 %i.cs, 0                 ; 2 uses
  %i.cu = load i16, ptr %i.d, align 2, !tbaa !187 ; 12 uses
  %i.cv = zext i16 %i.cu to i32                   ; 6 uses
  %.not340 = icmp eq i16 %i.cu, 0                 ; 2 uses
  %i.cw = zext i16 %i.cu to i64                   ; 31 uses
  %i.cx = zext i16 %i.cs to i64                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ct, 1                ; 2 uses
  %invariant.op = add nsw i32 %i.cy, -2           ; 6 uses
  %i.cz = zext i16 %i.cu to i64                   ; 10 uses
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 2 uses
  %wide.trip.count355 = zext i16 %i.cs to i64     ; 16 uses
  %i.db = add nsw i32 %i.da, -2                   ; 6 uses
  %wide.trip.count350 = zext i16 %i.cu to i64
  %wide.trip.count365 = zext i16 %i.cu to i64
  %wide.trip.count360 = zext i16 %i.cs to i64
  %i.dc = add nsw i64 %wide.trip.count355, -1     ; 2 uses
  %i.dd = add nsw i32 %i.cy, -2
  %i.de = shl nuw nsw i64 %wide.trip.count355, 2  ; 2 uses
  %i.df = add nuw nsw i64 %i.aj, %wide.trip.count355
  %i.dg = shl nuw nsw i64 %i.df, 2
  %scevgep550 = getelementptr i8, ptr %.0233, i64 %i.dg ; 3 uses
  %i.dh = shl nuw nsw i64 %i.cw, 2                ; 7 uses
  %scevgep682 = getelementptr i8, ptr %scevgep681, i64 %i.dh
  %scevgep685 = getelementptr i8, ptr %.0233, i64 %i.dh
  %scevgep690.a = getelementptr i8, ptr %scevgep689.a, i64 %i.dh
  %i.di = add nsw i32 %i.da, -2
  %i.dj = add nuw nsw i64 %i.aj, %i.cw
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %scevgep808 = getelementptr i8, ptr %.0233, i64 %i.dk ; 3 uses
  %i.dl = mul nsw i64 %i.cw, -4
  %i.dm = shl nuw nsw i64 %wide.trip.count355, 2
  %i.dn = add nsw i64 %i.dm, -4
  %i.do = mul nsw i64 %i.dn, %i.cw                ; 3 uses
  %scevgep936 = getelementptr i8, ptr %.0233, i64 %i.do
  %scevgep940 = getelementptr i8, ptr %scevgep939, i64 %i.do
  %scevgep944.a = getelementptr i8, ptr %.0233, i64 %i.do
  %i.dp = add nsw i64 %i.cz, -1
  %min.iters.check753 = icmp ult i16 %i.cu, 4
  %min.iters.check757 = icmp ult i16 %i.cu, 32
  %i.dq = and i64 %i.cw, 28
  %n.vec759 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n768 = icmp eq i64 %n.vec759, %i.cw
  %min.epilog.iters.check772 = icmp eq i64 %i.dq, 0
  %n.vec775 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n781 = icmp eq i64 %n.vec775, %i.cw
  %ident.check655.not = icmp eq i16 %i.cu, 1
  %ident.check607.not = icmp eq i16 %i.cu, 1
  %ident.check525 = icmp ne i16 %i.cu, 1
  %i.dr = add nsw i64 %wide.trip.count355, -1
  %min.iters.check = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.ds = trunc nsw i64 %i.dc to i32
  %i.dt = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1092.a = or i1 %i.dt, %ident.check
  %min.iters.check498 = icmp ult i16 %i.cs, 32
  %i.du = and i64 %wide.trip.count355, 28
  %n.vec500 = and i64 %wide.trip.count355, 65504  ; 4 uses
  %cmp.n509 = icmp eq i64 %n.vec500, %wide.trip.count355
  %min.epilog.iters.check513 = icmp eq i64 %i.du, 0
  %n.vec516 = and i64 %wide.trip.count355, 65532  ; 3 uses
  %cmp.n522 = icmp eq i64 %n.vec516, %wide.trip.count355
  %xtraiter1064 = and i64 %wide.trip.count355, 3  ; 2 uses
  %lcmp.mod1065.not = icmp eq i64 %xtraiter1064, 0
  br label %bb.g

vec.epilog.scalar.ph1022:                         ; preds = %vec.epilog.scalar.ph1022.preheader, %vec.epilog.scalar.ph1022
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph1022 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph1022.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.dv = load i16, ptr %gep, align 2, !tbaa !82
  %i.dw = zext i16 %i.dv to i32
  %i.dx = shl i32 %i.dw, %i.o
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.dx to float
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dy)
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 2.560000e+02
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv
  store float %i.ea, ptr %i.eb, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader294, label %vec.epilog.scalar.ph1022, !llvm.loop !122

.preheader293:                                    ; preds = %.loopexit1036
  %invariant.gep436.a = getelementptr [4 x i8], ptr %.0233, i64 %i.aht ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader293
  %index = phi i64 [ 0, %.preheader293 ], [ %index.next, %vector.body ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.ec, align 4, !tbaa !12
  %i.ed = getelementptr [4 x i8], ptr %invariant.gep436.a, i64 %index
  %wide.load446 = load <8 x float>, ptr %i.ed, align 4, !tbaa !12
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %wide.load446, %wide.load ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, splat (float f0x37800000)
  %i.eh = fptosi <8 x float> %i.eg to <8 x i32>
  %1 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eh, <8 x i32> zeroinitializer)
  %i.ei = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %1, <8 x i32> splat (i32 65535))
  %i.ej = trunc nuw <8 x i32> %i.ei to <8 x i16>
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.el = shufflevector <8 x i16> %i.ej, <8 x i16> poison, <29 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v29i16.p0(<29 x i16> %i.el, ptr align 2 %i.ek, <29 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit1037, label %scalar.ph

bb.g:                                             ; preds = %.preheader294, %.loopexit1036
  %indvars.iv372 = phi i64 [ 0, %.preheader294 ], [ %indvars.iv.next373, %.loopexit1036 ] ; 10 uses
  %.0229318 = phi i32 [ 0, %.preheader294 ], [ %i.ep, %.loopexit1036 ] ; 3 uses
  %i.en = trunc nuw nsw i64 %indvars.iv372 to i32 ; 5 uses
  %i.eo = and i32 %i.en, 1
  %i.ep = shl nuw i32 %i.aa, %i.eo                ; 5 uses
  br i1 %.not339, label %.preheader292, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.g
  %i.eq = zext i32 %.0229318 to i64               ; 6 uses
  %i.er = getelementptr [4 x i8], ptr %.0233, i64 %i.eq ; 2 uses
  %i.es = shl nuw nsw i32 1, %i.en                ; 9 uses
  %i.et = zext nneg i32 %i.es to i64              ; 33 uses
  %i.eu = shl nuw nsw i32 2, %i.en
  %i.ev = icmp samesign ult i32 %i.eu, %i.cv
  %i.ew = shl nuw nsw i64 %i.et, 1                ; 6 uses
  %invariant.op.i = sub nsw i64 %i.cw, %i.et      ; 2 uses
  %i.ex = sext i32 %i.ep to i64                   ; 2 uses
  %invariant.gep430 = getelementptr [4 x i8], ptr %.0233, i64 %i.ex
  %i.ey = sub nsw i64 %i.ex, %i.aj
  %i.ez = shl nsw i64 %i.ey, 2
  %i.fa = shl nuw nsw i64 %i.eq, 2                ; 5 uses
  %reass.sub = sub nsw i64 %i.fa, %i.dh
  %i.fb = add nuw nsw i64 %i.dh, %i.fa            ; 2 uses
  %i.fc = shl nuw nsw i64 %i.et, 2                ; 2 uses
  %i.fd = sub nsw i64 %i.fb, %i.fc
  %i.fe = sub nsw i64 %i.fa, %i.fc
  %i.ff = add nuw nsw i64 %i.eq, %i.et
  %i.fg = sub nsw i64 %i.aj, %i.ff
  %i.fh = shl nsw i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.aj, %i.et
  %i.fj = sub nsw i64 %i.fi, %i.eq
  %i.fk = shl nsw i64 %i.fj, 2
  %i.fl = sub nsw i64 %i.aj, %i.eq
  %i.fm = shl nsw i64 %i.fl, 2
  %i.fn = add nuw nsw i64 %i.et, 1
  %smax871 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fn)
  %i.fo = sub nsw i64 %smax871, %i.et             ; 7 uses
  %i.fp = shl nuw nsw i64 %i.et, 3
  %i.fq = shl nuw nsw i64 %i.eq, 2                ; 3 uses
  %i.fr = getelementptr i8, ptr %scevgep936, i64 %i.fp
  %scevgep937 = getelementptr i8, ptr %i.fr, i64 %i.fq
  %i.fs = shl nuw nsw i64 %i.et, 2                ; 2 uses
  %i.ft = add nuw nsw i64 %i.fq, %i.fs            ; 3 uses
  %scevgep938 = getelementptr i8, ptr %.0233, i64 %i.ft
  %scevgep941 = getelementptr i8, ptr %scevgep940, i64 %i.ft
  %scevgep943 = getelementptr i8, ptr %scevgep942.a, i64 %i.fq
  %scevgep945 = getelementptr i8, ptr %scevgep944.a, i64 %i.ft
  %scevgep947 = getelementptr i8, ptr %scevgep946.a, i64 %i.fs ; 3 uses
  %min.iters.check949 = icmp samesign ult i64 %indvars.iv372, 3
  %bound0951 = icmp ult ptr %i.ak, %scevgep945
  %bound1952 = icmp ult ptr %i.er, %scevgep947
  %found.conflict953 = and i1 %bound0951, %bound1952
  %bound0954 = icmp ult ptr %i.ak, %scevgep941
  %bound1955 = icmp ult ptr %scevgep943, %scevgep947
  %found.conflict956 = and i1 %bound0954, %bound1955
  %conflict.rdx957 = or i1 %found.conflict953, %found.conflict956
  %bound0958 = icmp ult ptr %i.ak, %scevgep937
  %bound1959 = icmp ult ptr %scevgep938, %scevgep947
  %found.conflict960 = and i1 %bound0958, %bound1959
  %conflict.rdx961 = or i1 %conflict.rdx957, %found.conflict960
  %min.iters.check963 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec965 = and i64 %i.et, 2147483616
  %n.vec993 = and i64 %i.et, 248
  %xtraiter = and i64 %i.et, 3                    ; 3 uses
  %i.fu = icmp samesign ult i64 %indvars.iv372, 2
  %unroll_iter = and i64 %i.et, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1050 = icmp ne i64 %xtraiter, 0
  %min.iters.check873 = icmp ult i64 %i.fo, 4
  %invariant.op1075 = add i64 %i.fm, -1
  %invariant.op1076 = add i64 %i.fk, -1
  %invariant.op1078 = add i64 %i.fh, -1
  %min.iters.check881 = icmp ult i64 %i.fo, 16
  %i.fv = and i64 %i.fo, 12
  %n.vec883 = and i64 %i.fo, -16                  ; 5 uses
  %i.fw = add i64 %n.vec883, %i.et                ; 2 uses
  %i.fx = add i64 %i.ew, %n.vec883
  %cmp.n894 = icmp eq i64 %i.fo, %n.vec883
  %min.epilog.iters.check898 = icmp eq i64 %i.fv, 0
  %n.vec901 = and i64 %i.fo, -4                   ; 4 uses
  %i.fy = add i64 %n.vec901, %i.et                ; 2 uses
  %i.fz = add i64 %i.ew, %n.vec901
  %cmp.n909 = icmp eq i64 %i.fo, %n.vec901
  %i.ga = getelementptr i8, ptr %.0233, i64 %i.fa
  %i.gb = getelementptr i8, ptr %.0233, i64 %i.fb
  %i.gc = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.gd = getelementptr i8, ptr %.0233, i64 %i.fd
  %i.ge = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  %i.gg = getelementptr i8, ptr %.0233, i64 %i.fa
  %i.gh = getelementptr i8, ptr %i.gg, i64 4
  %invariant.op1080 = add i64 %i.ez, -1
  br label %iter.check987

.preheader292:                                    ; preds = %._crit_edge, %bb.g
  br i1 %.not340, label %iter.check, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader292
  %i.gi = zext i32 %i.ep to i64                   ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %i.gi ; 2 uses
  %i.gk = shl nuw nsw i32 1, %i.en                ; 9 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 35 uses
  %i.gm = shl nuw nsw i32 2, %i.en
  %i.gn = icmp samesign ult i32 %i.gm, %i.ct
  %i.go = shl nuw nsw i64 %i.gl, 1                ; 6 uses
  %invariant.op.i266 = sub nsw i64 %i.cx, %i.gl   ; 2 uses
  %i.gp = shl nuw nsw i64 %i.gi, 2                ; 5 uses
  %reass.sub1038 = sub nsw i64 %i.gp, %i.de
  %i.gq = add nuw nsw i64 %i.de, %i.gp            ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gl, 2                ; 2 uses
  %i.gs = sub nsw i64 %i.gq, %i.gr
  %i.gt = sub nsw i64 %i.gp, %i.gr
  %i.gu = add nuw nsw i64 %i.gi, %i.gl
  %i.gv = sub nsw i64 %i.aj, %i.gu
  %i.gw = shl nsw i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.aj, %i.gl
  %i.gy = sub nsw i64 %i.gx, %i.gi
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = sub nsw i64 %i.aj, %i.gi
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.gl, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.hc)
  %i.hd = sub nsw i64 %smax, %i.gl                ; 7 uses
  %i.he = shl nuw nsw i64 %i.gl, 3
  %i.hf = shl nuw nsw i64 %i.gi, 2                ; 3 uses
  %i.hg = getelementptr i8, ptr %scevgep682, i64 %i.he
  %scevgep683 = getelementptr i8, ptr %i.hg, i64 %i.hf
  %i.hh = shl nuw nsw i64 %i.gl, 2                ; 2 uses
  %i.hi = add nuw nsw i64 %i.hf, %i.hh            ; 3 uses
  %scevgep684 = getelementptr i8, ptr %.0233, i64 %i.hi
  %scevgep686 = getelementptr i8, ptr %scevgep685, i64 %i.hi
  %scevgep688 = getelementptr i8, ptr %scevgep687, i64 %i.hf
  %scevgep691 = getelementptr i8, ptr %scevgep690.a, i64 %i.hi
  %scevgep693 = getelementptr i8, ptr %scevgep692.a, i64 %i.hh ; 3 uses
  %min.iters.check695 = icmp samesign ugt i64 %indvars.iv372, 2
  %or.cond = select i1 %min.iters.check695, i1 %ident.check655.not, i1 false
  %bound0697 = icmp ult ptr %i.ak, %scevgep691
  %bound1698 = icmp ult ptr %i.gj, %scevgep693
  %found.conflict699 = and i1 %bound0697, %bound1698
  %bound0700 = icmp ult ptr %i.ak, %scevgep686
  %bound1701 = icmp ult ptr %scevgep688, %scevgep693
  %found.conflict702 = and i1 %bound0700, %bound1701
  %conflict.rdx703 = or i1 %found.conflict699, %found.conflict702
  %bound0704 = icmp ult ptr %i.ak, %scevgep683
  %bound1705 = icmp ult ptr %scevgep684, %scevgep693
  %found.conflict706 = and i1 %bound0704, %bound1705
  %conflict.rdx707 = or i1 %conflict.rdx703, %found.conflict706
  %min.iters.check709 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec711 = and i64 %i.gl, 2147483616
  %n.vec739 = and i64 %i.gl, 248
  %xtraiter1055 = and i64 %i.gl, 1
  %i.hj = icmp eq i64 %indvars.iv372, 0
  %unroll_iter1059 = and i64 %i.gl, 2147483646
  %lcmp.mod1057.not = icmp eq i64 %xtraiter1055, 0
  %lcmp.mod1058 = icmp eq i64 %indvars.iv372, 0
  %min.iters.check615 = icmp ugt i64 %i.hd, 3
  %or.cond1039 = select i1 %min.iters.check615, i1 %ident.check607.not, i1 false
  %invariant.op1086 = add i64 %i.hb, -1
  %invariant.op1088 = add i64 %i.gz, -1
  %invariant.op1090 = add i64 %i.gw, -1
  %min.iters.check623 = icmp ult i64 %i.hd, 16
  %i.hk = and i64 %i.hd, 12
  %n.vec625 = and i64 %i.hd, -16                  ; 5 uses
  %i.hl = add i64 %n.vec625, %i.gl                ; 2 uses
  %i.hm = add i64 %i.go, %n.vec625
  %cmp.n636 = icmp eq i64 %i.hd, %n.vec625
  %min.epilog.iters.check640 = icmp eq i64 %i.hk, 0
  %n.vec643 = and i64 %i.hd, -4                   ; 4 uses
  %i.hn = add i64 %n.vec643, %i.gl                ; 2 uses
  %i.ho = add i64 %i.go, %n.vec643
  %cmp.n651 = icmp eq i64 %i.hd, %n.vec643
  %i.hp = getelementptr i8, ptr %.0233, i64 %i.gp
  %i.hq = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.hr = getelementptr i8, ptr %.0233, i64 %i.gt
  %i.hs = getelementptr i8, ptr %.0233, i64 %i.gs
  %i.ht = getelementptr i8, ptr %.0233, i64 %reass.sub1038
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %i.hv = getelementptr i8, ptr %.0233, i64 %i.gp
  %i.hw = getelementptr i8, ptr %i.hv, i64 4
  br label %iter.check733

iter.check987:                                    ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv352 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next353, %._crit_edge ] ; 5 uses
  %i.hx = mul nuw nsw i64 %indvars.iv352, %i.cz   ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.hx ; 39 uses
  %invariant.gep303 = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.et ; 7 uses
  %brmerge1094 = select i1 %min.iters.check949, i1 true, i1 %conflict.rdx961
  br i1 %brmerge1094, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check962
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %bound1 = icmp ult ptr %.0233, %i.ahw
  %found.conflict = and i1 %bound0, %bound1
  %bound0458 = icmp ult ptr %invariant.gep434, %i.ahy
  %bound1459 = icmp ult ptr %invariant.gep432, %i.ahw
  %found.conflict460 = and i1 %bound0458, %bound1459
  %conflict.rdx = or i1 %found.conflict, %found.conflict460
  %bound0461 = icmp ult ptr %.0233, %i.ahy
  %bound1462 = icmp ult ptr %invariant.gep432, %scevgep
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %conflict.rdx, %found.conflict463
  br i1 %conflict.rdx464, label %vec.epilog.scalar.ph.preheader, label %vector.ph465

vector.ph465:                                     ; preds = %iter.check
  %i.ahz = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.aia = shufflevector <8 x i1> %i.ahz, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert467 = insertelement <8 x float> poison, float %i.ahr, i64 0
  %broadcast.splat468 = shufflevector <8 x float> %broadcast.splatinsert467, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert469 = insertelement <8 x float> poison, float %i.ahs, i64 0
  %broadcast.splat470 = shufflevector <8 x float> %broadcast.splatinsert469, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body471

vector.body471:                                   ; preds = %vector.ph465, %vector.body471
  %index472 = phi i64 [ 0, %vector.ph465 ], [ %index.next478, %vector.body471 ] ; 4 uses
  %i.aib = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index472 ; 2 uses
  %i.aic = getelementptr i8, ptr %i.aib, i64 32
  %wide.load473 = load <8 x float>, ptr %i.aib, align 4, !tbaa !12, !alias.scope !213
  %wide.load474 = load <8 x float>, ptr %i.aic, align 4, !tbaa !12, !alias.scope !213
  %i.aid = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index472 ; 3 uses
  %i.aie = getelementptr i8, ptr %i.aid, i64 32   ; 2 uses
  %wide.load475 = load <8 x float>, ptr %i.aid, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %wide.load476 = load <8 x float>, ptr %i.aie, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aif = fsub reassoc nsz arcp contract afn <8 x float> %wide.load475, %wide.load473 ; 4 uses
  %i.aig = fsub reassoc nsz arcp contract afn <8 x float> %wide.load476, %wide.load474 ; 4 uses
  %i.aih = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.aif, %broadcast.splat470
  %i.aii = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.aig, %broadcast.splat470
  %i.aij = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aif, %broadcast.splat468
  %i.aik = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aig, %broadcast.splat468
  %i.ail = fsub reassoc nsz arcp contract afn <8 x float> %i.aif, %broadcast.splat468
  %i.aim = fsub reassoc nsz arcp contract afn <8 x float> %i.aig, %broadcast.splat468
  %i.ain = select <8 x i1> %i.aij, <8 x float> %i.ail, <8 x float> zeroinitializer
  %i.aio = select <8 x i1> %i.aik, <8 x float> %i.aim, <8 x float> zeroinitializer
  %i.aip = fadd reassoc nsz arcp contract afn <8 x float> %i.aif, %broadcast.splat468
  %i.aiq = fadd reassoc nsz arcp contract afn <8 x float> %i.aig, %broadcast.splat468
  %i.air = select <8 x i1> %i.aih, <8 x float> %i.aip, <8 x float> %i.ain ; 2 uses
  %i.ais = select <8 x i1> %i.aii, <8 x float> %i.aiq, <8 x float> %i.aio ; 2 uses
  store <8 x float> %i.air, ptr %i.aid, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  store <8 x float> %i.ais, ptr %i.aie, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ait = getelementptr [4 x i8], ptr %.0233, i64 %index472 ; 3 uses
  %i.aiu = getelementptr i8, ptr %i.ait, i64 32   ; 2 uses
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ait, <8 x i1> %i.aia, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %wide.masked.load477 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aiu, <8 x i1> %i.aia, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.aiv = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %i.air
  %i.aiw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load477, %i.ais
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.aiv, ptr align 4 %i.ait, <8 x i1> %i.aia), !tbaa !12, !alias.scope !216, !noalias !213
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.aiw, ptr align 4 %i.aiu, <8 x i1> %i.aia), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next478 = add nuw i64 %index472, 16      ; 2 uses
  %i.aix = icmp eq i64 %index.next478, %n.vec466
  br i1 %i.aix, label %middle.block479, label %vector.body471, !llvm.loop !177

middle.block479:                                  ; preds = %vector.body471
  br i1 %cmp.n480, label %.loopexit1036, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block479
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %i.aiy = insertelement <4 x i1> poison, i1 %.not254, i64 0
  %i.aiz = shufflevector <4 x i1> %i.aiy, <4 x i1> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert484 = insertelement <4 x float> poison, float %i.ahr, i64 0
  %broadcast.splat485 = shufflevector <4 x float> %broadcast.splatinsert484, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert486 = insertelement <4 x float> poison, float %i.ahs, i64 0
  %broadcast.splat487 = shufflevector <4 x float> %broadcast.splatinsert486, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index488 = phi i64 [ %n.vec466, %vec.epilog.ph ], [ %index.next492, %vec.epilog.vector.body ] ; 4 uses
  %i.aja = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index488
  %wide.load489 = load <4 x float>, ptr %i.aja, align 4, !tbaa !12, !alias.scope !213
  %i.ajb = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index488 ; 2 uses
  %wide.load490 = load <4 x float>, ptr %i.ajb, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ajc = fsub reassoc nsz arcp contract afn <4 x float> %wide.load490, %wide.load489 ; 4 uses
  %i.ajd = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ajc, %broadcast.splat487
  %i.aje = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ajc, %broadcast.splat485
  %i.ajf = fsub reassoc nsz arcp contract afn <4 x float> %i.ajc, %broadcast.splat485
  %i.ajg = select <4 x i1> %i.aje, <4 x float> %i.ajf, <4 x float> zeroinitializer
  %i.ajh = fadd reassoc nsz arcp contract afn <4 x float> %i.ajc, %broadcast.splat485
  %i.aji = select <4 x i1> %i.ajd, <4 x float> %i.ajh, <4 x float> %i.ajg ; 2 uses
  store <4 x float> %i.aji, ptr %i.ajb, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ajj = getelementptr [4 x i8], ptr %.0233, i64 %index488 ; 2 uses
  %wide.masked.load491 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ajj, <4 x i1> %i.aiz, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ajk = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load491, %i.aji
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ajk, ptr align 4 %i.ajj, <4 x i1> %i.aiz), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next492 = add nuw i64 %index488, 4       ; 2 uses
  %i.ajl = icmp eq i64 %index.next492, %n.vec481
  br i1 %i.ajl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n493, label %.loopexit1036, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv367.ph = phi i64 [ 0, %iter.check ], [ %n.vec466, %vec.epilog.iter.check ], [ %n.vec481, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod1068.not.a, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep433.prol = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367.ph
  %i.ajm = load float, ptr %gep433.prol, align 4, !tbaa !12
  %gep435.prol = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367.ph ; 2 uses
  %i.ajn = load float, ptr %gep435.prol, align 4, !tbaa !12
  %i.ajo = fsub reassoc nsz arcp contract afn float %i.ajn, %i.ajm ; 4 uses
  %i.ajp = fcmp reassoc nsz arcp contract afn olt float %i.ajo, %i.ahs
  %i.ajq = fcmp reassoc nsz arcp contract afn ogt float %i.ajo, %i.ahr
  %i.ajr = fsub reassoc nsz arcp contract afn float %i.ajo, %i.ahr
  %spec.select442.prol = select i1 %i.ajq, float %i.ajr, float 0.000000e+00
  %i.ajs = fadd reassoc nsz arcp contract afn float %i.ajo, %i.ahr
  %.sink.prol = select i1 %i.ajp, float %i.ajs, float %spec.select442.prol ; 2 uses
  store float %.sink.prol, ptr %gep435.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367.ph ; 2 uses
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !12
  %i.ajv = fadd reassoc nsz arcp contract afn float %i.aju, %.sink.prol
  store float %i.ajv, ptr %i.ajt, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next368.prol = or disjoint i64 %indvars.iv367.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next368.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.ajw = icmp eq i64 %indvars.iv367.ph, %i.bd
  br i1 %i.ajw, label %.loopexit1036, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.1, %bb.k ], [ %indvars.iv367.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep433 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367
  %i.ajx = load float, ptr %gep433, align 4, !tbaa !12
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367 ; 2 uses
  %i.ajy = load float, ptr %gep435, align 4, !tbaa !12
  %i.ajz = fsub reassoc nsz arcp contract afn float %i.ajy, %i.ajx ; 4 uses
  %i.aka = fcmp reassoc nsz arcp contract afn olt float %i.ajz, %i.ahs
  %i.akb = fcmp reassoc nsz arcp contract afn ogt float %i.ajz, %i.ahr
  %i.akc = fsub reassoc nsz arcp contract afn float %i.ajz, %i.ahr
  %spec.select442 = select i1 %i.akb, float %i.akc, float 0.000000e+00
  %i.akd = fadd reassoc nsz arcp contract afn float %i.ajz, %i.ahr
  %.sink = select i1 %i.aka, float %i.akd, float %spec.select442 ; 2 uses
  store float %.sink, ptr %gep435, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367 ; 2 uses
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !12
  %i.akg = fadd reassoc nsz arcp contract afn float %i.akf, %.sink
  store float %i.akg, ptr %i.ake, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 3 uses
  %gep433.1 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv.next368
  %i.akh = load float, ptr %gep433.1, align 4, !tbaa !12
  %gep435.1 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv.next368 ; 2 uses
  %i.aki = load float, ptr %gep435.1, align 4, !tbaa !12
  %i.akj = fsub reassoc nsz arcp contract afn float %i.aki, %i.akh ; 4 uses
  %i.akk = fcmp reassoc nsz arcp contract afn olt float %i.akj, %i.ahs
  %i.akl = fcmp reassoc nsz arcp contract afn ogt float %i.akj, %i.ahr
  %i.akm = fsub reassoc nsz arcp contract afn float %i.akj, %i.ahr
  %spec.select442.1 = select i1 %i.akl, float %i.akm, float 0.000000e+00
  %i.akn = fadd reassoc nsz arcp contract afn float %i.akj, %i.ahr
  %.sink.1 = select i1 %i.akk, float %i.akn, float %spec.select442.1 ; 2 uses
  store float %.sink.1, ptr %gep435.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next368 ; 2 uses
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !12
  %i.akq = fadd reassoc nsz arcp contract afn float %i.akp, %.sink.1
  store float %i.akq, ptr %i.ako, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vec.epilog.scalar.ph.1
  %indvars.iv.next368.1 = add nuw nsw i64 %indvars.iv367, 2 ; 2 uses
  %exitcond371.not.1 = icmp eq i64 %indvars.iv.next368.1, %wide.trip.count
  br i1 %exitcond371.not.1, label %.loopexit1036, label %vec.epilog.scalar.ph, !llvm.loop !179

.loopexit1036:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k, %vec.epilog.middle.block, %middle.block479
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next373, 5
  br i1 %exitcond375.not, label %.preheader293, label %bb.g, !llvm.loop !180

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv376
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !12
  %gep437 = getelementptr [4 x i8], ptr %invariant.gep436.a, i64 %indvars.iv376
  %i.akt = load float, ptr %gep437, align 4, !tbaa !12
  %i.aku = fadd reassoc nsz arcp contract afn float %i.akt, %i.aks ; 2 uses
  %i.akv = fmul reassoc nsz arcp contract afn float %i.aku, %i.aku
  %i.akw = fmul reassoc nsz arcp contract afn float %i.akv, f0x37800000
  %i.akx = fptosi float %i.akw to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %i.akx, i32 0)
  %i.aky = tail call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.akz = trunc nuw i32 %i.aky to i16
  %gep320 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv376
  store i16 %i.akz, ptr %gep320, align 2, !tbaa !82
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count
  br i1 %exitcond380.not, label %.loopexit1037, label %scalar.ph, !llvm.loop !181

.loopexit1037:                                    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge323, label %iter.check1020, !llvm.loop !182

._crit_edge323:                                   ; preds = %.loopexit1037
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.alb, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit289, label %.preheader291

.preheader291:                                    ; preds = %._crit_edge323
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.ald = lshr i32 %i.alb, 4
  %i.ale = and i32 %i.ald, 2                      ; 2 uses
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.alf
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  %i.ali = load float, ptr %i.alh, align 8, !tbaa !12 ; 2 uses
  %i.alj = and i32 %i.alb, 2
  %i.alk = or disjoint i32 %i.alj, 1
  %i.all = zext nneg i32 %i.alk to i64            ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.all
  %i.aln = load float, ptr %i.alm, align 8, !tbaa !12
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.all
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !79
  store i32 %i.alp, ptr %i.b, align 4, !tbaa !79
  %i.alq = lshr i32 %i.alb, 8
  %i.alr = and i32 %i.alq, 2
  %i.als = zext nneg i32 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.als
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 4
  %i.alv = load float, ptr %i.alu, align 8, !tbaa !12
  %i.alw = insertelement <2 x float> poison, float %i.ali, i64 0
  %i.alx = insertelement <2 x float> %i.alw, float %i.alv, i64 1
  %i.aly = fmul reassoc nsz arcp contract afn <2 x float> %i.alx, splat (float 1.250000e-01)
  %i.alz = insertelement <2 x float> poison, float %i.aln, i64 0
  %i.ama = insertelement <2 x float> %i.alz, float %i.ali, i64 1
  %i.amb = fdiv reassoc nsz arcp contract afn <2 x float> %i.aly, %i.ama
  store <2 x float> %i.amb, ptr %i.a, align 8, !tbaa !12
  %i.amc = zext nneg i32 %i.ale to i64
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !79
  %i.amg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.amf, ptr %i.amg, align 4, !tbaa !79
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.amj = load i16, ptr %i.ami, align 4, !tbaa !85
  %i.amk = icmp ugt i16 %i.amj, 2
  br i1 %i.amk, label %.preheader.lr.ph, label %.loopexit289

.preheader.lr.ph:                                 ; preds = %.preheader291
  %i.aml = load i16, ptr %i.amh, align 2, !tbaa !86 ; 2 uses
  %i.amm = zext i16 %i.aml to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.amm, 2
  %i.amn = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.amm
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !212
  %i.ams = fmul reassoc nsz arcp contract afn float %i.amr, f0x3B000000 ; 4 uses
  %i.amt = fneg reassoc nsz arcp contract afn float %i.ams
  br label %.preheader

.loopexit287:                                     ; preds = %bb.m, %._crit_edge333
  %i.amu = phi i16 [ %i.aok, %._crit_edge333 ], [ %i.arr, %bb.m ]
  %i.amv = load i16, ptr %i.ami, align 4, !tbaa !85
  %i.amw = zext i16 %i.amv to i32
  %i.amx = add nsw i32 %i.amw, -1
  %i.amy = icmp slt i32 %.pre409, %i.amx
  br i1 %i.amy, label %.preheader, label %.loopexit289, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit287
  %i.amz = phi i16 [ %i.aml, %.preheader.lr.ph ], [ %i.amu, %.loopexit287 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.amn, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit287 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.amo, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit287 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit287 ] ; 2 uses
  %.0338 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit287 ] ; 3 uses
  %.3226337 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre409, %.loopexit287 ] ; 6 uses
  %.not253330 = icmp sgt i32 %.0338, %.3226337
  %.pre409 = add nuw i32 %.3226337, 1             ; 3 uses
  br i1 %.not253330, label %._crit_edge333, label %.lr.ph332

.loopexit:                                        ; preds = %bb.l, %.lr.ph332
  %i.ana = phi i16 [ %i.anc, %.lr.ph332 ], [ %i.aoh, %bb.l ] ; 2 uses
  %i.anb = phi i16 [ %i.and, %.lr.ph332 ], [ %i.aoh, %bb.l ]
  %exitcond400.not = icmp eq i32 %.1331, %.3226337
  br i1 %exitcond400.not, label %._crit_edge333, label %.lr.ph332, !llvm.loop !184

.lr.ph332:                                        ; preds = %.preheader, %.loopexit
  %i.anc = phi i16 [ %i.ana, %.loopexit ], [ %i.amz, %.preheader ]
  %i.and = phi i16 [ %i.anb, %.loopexit ], [ %i.amz, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1331 = phi i32 [ %i.ane, %.loopexit ], [ %.0338, %.preheader ] ; 2 uses
  %i.ane = add nsw i32 %.1331, 1                  ; 3 uses
  %i.anf = shl i32 %i.ane, 1
  %i.ang = and i32 %i.anf, 14                     ; 2 uses
  %i.anh = shl nuw nsw i32 %i.ang, 1
  %i.ani = or disjoint i32 %i.anh, 2
  %i.anj = lshr i32 %i.alb, %i.ani                ; 2 uses
  %i.ank = and i32 %i.anj, 1                      ; 2 uses
  %i.anl = zext i16 %i.and to i32
  %i.anm = icmp samesign ult i32 %i.ank, %i.anl
  br i1 %i.anm, label %.lr.ph329, label %.loopexit

.lr.ph329:                                        ; preds = %.lr.ph332
  %i.ann = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.ano = and i32 %i.anj, 1
  %i.anp = zext nneg i32 %i.ano to i64
  %i.anq = or disjoint i32 %i.ank, %i.ang
  %i.anr = shl nuw nsw i32 %i.anq, 1
  %i.ans = lshr i32 %i.alb, %i.anr
  %i.ant = and i32 %i.ans, 3
  %i.anu = zext nneg i32 %i.ant to i64
  %invariant.gep438 = getelementptr [2 x i8], ptr %i.ann, i64 %i.anu
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph329, %bb.l
  %indvars.iv397 = phi i64 [ %i.anp, %.lr.ph329 ], [ %indvars.iv.next398, %bb.l ] ; 3 uses
  %i.anv = load i16, ptr %i.amp, align 4, !tbaa !87
  %i.anw = zext i16 %i.anv to i32                 ; 2 uses
  %i.anx = ashr i32 %i.ane, %i.anw
  %i.any = load i16, ptr %i.d, align 2, !tbaa !187
  %i.anz = zext i16 %i.any to i32
  %i.aoa = mul nsw i32 %i.anx, %i.anz
  %i.aob = trunc nuw nsw i64 %indvars.iv397 to i32
  %i.aoc = lshr i32 %i.aob, %i.anw
  %i.aod = add nsw i32 %i.aoa, %i.aoc
  %i.aoe = sext i32 %i.aod to i64
  %gep439 = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.aoe
  %i.aof = load i16, ptr %gep439, align 2, !tbaa !82
  %i.aog = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv397
  store i16 %i.aof, ptr %i.aog, align 2, !tbaa !82
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %i.aoh = load i16, ptr %i.amh, align 2, !tbaa !86 ; 3 uses
  %i.aoi = zext i16 %i.aoh to i64
  %i.aoj = icmp samesign ult i64 %indvars.iv.next398, %i.aoi
  br i1 %i.aoj, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge333:                                   ; preds = %.loopexit, %.preheader
  %i.aok = phi i16 [ %i.amz, %.preheader ], [ %i.ana, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0338, %.preheader ], [ %.pre409, %.loopexit ]
  %i.aol = shl nuw nsw i32 %.3226337, 1
  %i.aom = and i32 %i.aol, 14                     ; 2 uses
  %i.aon = shl nuw nsw i32 %i.aom, 1
  %i.aoo = lshr i32 %i.alb, %i.aon                ; 3 uses
  %i.aop = and i32 %i.aoo, 1
  %i.aoq = add nuw nsw i32 %i.aop, 1
  %i.aor = zext i16 %i.aok to i32
  %i.aos = add nsw i32 %i.aor, -1
  %i.aot = icmp slt i32 %i.aoq, %i.aos
  br i1 %i.aot, label %.lr.ph336, label %.loopexit287

.lr.ph336:                                        ; preds = %._crit_edge333
  %i.aou = and i32 %.3226337, 1                   ; 2 uses
  %i.aov = xor i32 %i.aou, 1
  %i.aow = zext nneg i32 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !79
  %i.aoz = zext nneg i32 %i.aou to i64            ; 2 uses
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aoz
  %i.apb = load float, ptr %i.apa, align 4, !tbaa !12
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aoz
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !79
  %i.ape = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.apf = and i32 %i.aoo, 1
  %i.apg = and i32 %i.aoo, 1
  %narrow = add nuw nsw i32 %i.apg, 1
  %i.aph = zext nneg i32 %narrow to i64
  %i.api = shl i32 %i.aoy, 2
  %i.apj = or disjoint i32 %i.apf, %i.aom
  %i.apk = shl nuw nsw i32 %i.apj, 1
  %i.apl = xor i32 %i.apk, 2
  %i.apm = lshr i32 %i.alb, %i.apl
  %i.apn = and i32 %i.apm, 3
  %i.apo = zext nneg i32 %i.apn to i64
  %invariant.gep440 = getelementptr inbounds nuw [2 x i8], ptr %i.ape, i64 %i.apo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph336, %bb.m
  %indvars.iv401 = phi i64 [ %i.aph, %.lr.ph336 ], [ %indvars.iv.next402, %bb.m ] ; 5 uses
  %i.app = add nsw i64 %indvars.iv401, -1         ; 2 uses
  %i.apq = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.app
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !82
  %i.aps = zext i16 %i.apr to i32
  %i.apt = add nuw nsw i64 %indvars.iv401, 1      ; 2 uses
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.apt
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !82
  %i.apw = zext i16 %i.apv to i32
  %i.apx = add nuw nsw i32 %i.apw, %i.aps
  %i.apy = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.app
  %i.apz = load i16, ptr %i.apy, align 2, !tbaa !82
  %i.aqa = zext i16 %i.apz to i32
  %i.aqb = add nuw nsw i32 %i.apx, %i.aqa
  %i.aqc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.apt
  %i.aqd = load i16, ptr %i.aqc, align 2, !tbaa !82
  %i.aqe = zext i16 %i.aqd to i32
  %i.aqf = add nuw nsw i32 %i.aqb, %i.aqe
  %i.aqg = sub i32 %i.aqf, %i.api
  %i.aqh = sitofp reassoc nsz arcp contract afn i32 %i.aqg to float
  %i.aqi = fmul reassoc nsz arcp contract afn float %i.apb, %i.aqh
  %i.aqj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv401
  %i.aqk = load i16, ptr %i.aqj, align 2, !tbaa !82
  %i.aql = zext i16 %i.aqk to i32
  %i.aqm = add nsw i32 %i.apd, %i.aql
  %i.aqn = sitofp reassoc nsz arcp contract afn i32 %i.aqm to float
  %i.aqo = fmul reassoc nsz arcp contract afn float %i.aqn, 5.000000e-01
  %i.aqp = fadd reassoc nsz arcp contract afn float %i.aqo, %i.aqi ; 2 uses
  %i.aqq = fcmp reassoc nsz arcp contract afn olt float %i.aqp, 0.000000e+00
  %i.aqr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aqp)
  %spec.select280 = select reassoc nsz arcp contract afn i1 %i.aqq, float 0.000000e+00, float %i.aqr ; 2 uses
  %i.aqs = load i16, ptr %i.amp, align 4, !tbaa !87
  %i.aqt = zext i16 %i.aqs to i32                 ; 2 uses
  %i.aqu = lshr i32 %.3226337, %i.aqt
  %i.aqv = load i16, ptr %i.d, align 2, !tbaa !187
  %i.aqw = zext i16 %i.aqv to i32
  %i.aqx = mul nuw nsw i32 %i.aqu, %i.aqw
  %i.aqy = trunc nuw nsw i64 %indvars.iv401 to i32
  %i.aqz = lshr i32 %i.aqy, %i.aqt
  %i.ara = add nuw nsw i32 %i.aqx, %i.aqz
  %i.arb = zext nneg i32 %i.ara to i64
  %gep441 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep440, i64 %i.arb ; 2 uses
  %i.arc = load i16, ptr %gep441, align 2, !tbaa !82
  %i.ard = uitofp reassoc nsz arcp contract afn i16 %i.arc to float
  %i.are = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ard)
  %i.arf = fsub reassoc nsz arcp contract afn float %i.are, %spec.select280 ; 4 uses
  %i.arg = fcmp reassoc nsz arcp contract afn olt float %i.arf, %i.amt
  %i.arh = fadd reassoc nsz arcp contract afn float %i.arf, %i.ams
  %i.ari = fcmp reassoc nsz arcp contract afn ogt float %i.arf, %i.ams
  %i.arj = fsub reassoc nsz arcp contract afn float %i.arf, %i.ams
  %spec.select255 = select nsz i1 %i.ari, float %i.arj, float 0.000000e+00
  %.0232 = select nsz i1 %i.arg, float %i.arh, float %spec.select255
  %i.ark = fadd reassoc nsz arcp contract afn float %.0232, %spec.select280 ; 2 uses
  %i.arl = fmul reassoc nsz arcp contract afn float %i.ark, %i.ark
  %i.arm = fpext reassoc nsz arcp contract afn float %i.arl to double
  %i.arn = fadd reassoc nsz arcp contract afn double %i.arm, 5.000000e-01
  %i.aro = fptosi double %i.arn to i32
  %3 = tail call i32 @llvm.smax.i32(i32 %i.aro, i32 0)
  %i.arp = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.arq = trunc nuw i32 %i.arp to i16
  store i16 %i.arq, ptr %gep441, align 2, !tbaa !82
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %i.arr = load i16, ptr %i.amh, align 2, !tbaa !86 ; 2 uses
  %i.ars = zext i16 %i.arr to i64
  %i.art = add nsw i64 %i.ars, -1
  %i.aru = icmp slt i64 %indvars.iv.next402, %i.art
  br i1 %i.aru, label %bb.m, label %.loopexit287, !llvm.loop !186

.loopexit289:                                     ; preds = %.loopexit287, %bb.f, %.preheader291, %._crit_edge323
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.0233)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %.loopexit289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13median_filterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !221  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.j = phi i32 [ %i.d, %.lr.ph82 ], [ %i.ix, %._crit_edge77.1 ]
  %.04880 = phi i32 [ 1, %.lr.ph82 ], [ %i.iw, %._crit_edge77.1 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.m = add nsw i32 %.04880, -1
  %i.n = tail call noundef i32 %i.k(ptr noundef %i.l, i32 noundef 8192, i32 noundef %i.m, i32 noundef %i.j)
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.o, align 16, !tbaa !91
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !81   ; 9 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = load i16, ptr %i.g, align 2, !tbaa !86   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = load i16, ptr %i.h, align 4, !tbaa !85   ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.s
  %.not84 = icmp eq i64 %i.v, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04965 = phi ptr [ %i.y, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = load i16, ptr %.04965, align 2, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %.04965, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %.04965, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.g, align 2, !tbaa !86   ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !85  ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = icmp ult ptr %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ag = phi i16 [ %i.t, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ah = phi i16 [ %i.r, %bb.e ], [ %i.z, %.lr.ph ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = zext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %.pre-phi, %i.am
  br i1 %i.an, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.l
  %i.ap = phi i16 [ %i.ag, %.lr.ph76 ], [ %i.dw, %bb.l ]
  %i.aq = phi i16 [ %i.ah, %.lr.ph76 ], [ %i.dx, %bb.l ] ; 2 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph76 ], [ %i.dz, %bb.l ] ; 4 uses
  %.15074 = phi ptr [ %i.ao, %.lr.ph76 ], [ %i.dy, %bb.l ] ; 7 uses
  %i.as = ptrtoint ptr %.15074 to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  %i.aw = zext i16 %i.aq to i64
  %i.ax = srem i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %bb.l, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.az = sub nsw i32 0, %i.ar
  %narrow = xor i32 %i.ar, -1
  %i.ba = sext i32 %narrow to i64
  %i.bb = zext nneg i32 %i.ar to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next95, %.lr.ph72 ] ; 4 uses
  %indvars.iv86 = phi i64 [ %i.ba, %.lr.ph72.preheader ], [ %indvars.iv.next87, %.lr.ph72 ] ; 4 uses
  %.04569 = phi i32 [ %i.az, %.lr.ph72.preheader ], [ %i.cf, %.lr.ph72 ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !82
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !79
  %i.bl = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bl, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !82
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !79
  %i.bv = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 22
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bv, i64 18
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !82
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !79
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv, 3
  %i.cf = add nsw i32 %.04569, %i.ar
  %.not59 = icmp sgt i32 %.04569, 0
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %i.bb
  br i1 %.not59, label %.preheader, label %.lr.ph72, !llvm.loop !218

.preheader:                                       ; preds = %.lr.ph72, %bb.j
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1143, %bb.j ], [ 0, %.lr.ph72 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw13median_filterEvE3opt, i64 %indvars.iv97 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !222
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !79 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !222
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cn ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79 ; 2 uses
  %i.cq = icmp sgt i32 %i.ck, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.cr = add nsw i32 %i.cp, %i.ck                ; 2 uses
  store i32 %i.cr, ptr %i.cj, align 4, !tbaa !79
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !79
  %i.ct = sub nsw i32 %i.cr, %i.cs                ; 2 uses
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !79
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !79
  %i.cv = sub nsw i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %i.cw = icmp samesign ult i64 %indvars.iv97, 36
  br i1 %i.cw, label %.preheader.1142, label %bb.k

end_hunk_1
begin_hunk_2_@_ZN6LibRaw18recover_highlightsEv:bb.a
._crit_edge224.us.us:                             ; preds = %bb.r, %.prol.loopexit
  %.2182.us.us.lcssa = phi float [ %.2182.us.us.lcssa.unr, %.prol.loopexit ], [ %.2182.us.us.1, %bb.r ] ; 2 uses
  %.2179.us.us.lcssa = phi float [ %.2179.us.us.lcssa.unr, %.prol.loopexit ], [ %.2179.us.us.1, %bb.r ] ; 2 uses
  %.2175.us.us.lcssa = phi i32 [ %.2175.us.us.lcssa.unr, %.prol.loopexit ], [ %.2175.us.us.1, %bb.r ] ; 2 uses
  %i.gq = add nuw nsw i32 %.0160231.us.us, 1      ; 2 uses
  %exitcond320.not = icmp eq i32 %i.gq, %indvars.iv318
  br i1 %exitcond320.not, label %._crit_edge234.us, label %.lr.ph223.us.us, !llvm.loop !260

._crit_edge234.us:                                ; preds = %._crit_edge224.us.us, %.lr.ph233.us
  %.us-phi.us = phi float [ 0.000000e+00, %.lr.ph233.us ], [ %.2182.us.us.lcssa, %._crit_edge224.us.us ]
  %.us-phi238.us = phi float [ 0.000000e+00, %.lr.ph233.us ], [ %.2179.us.us.lcssa, %._crit_edge224.us.us ]
  %.us-phi239.us = phi i32 [ 0, %.lr.ph233.us ], [ %.2175.us.us.lcssa, %._crit_edge224.us.us ]
  %i.gr = icmp eq i32 %.us-phi239.us, %i.eb
  br i1 %i.gr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge234.us
  %i.gs = fdiv reassoc nsz arcp contract afn float %.us-phi.us, %.us-phi238.us
  %gep449 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep448, i64 %indvars.iv323
  store float %i.gs, ptr %gep449, align 4, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge234.us
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, %i.ed
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, %i.ed
  %exitcond329.not = icmp eq i64 %indvars.iv.next324, %i.dm
  br i1 %exitcond329.not, label %._crit_edge242, label %.lr.ph233.us, !llvm.loop !261

.lr.ph241.split:                                  ; preds = %.preheader205
  br i1 %i.ec, label %iter.check524, label %._crit_edge242

iter.check524:                                    ; preds = %.lr.ph241.split
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ei ; 3 uses
  br i1 %min.iters.check514, label %.lr.ph241.split.split.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %iter.check524
  br i1 %min.iters.check516, label %vec.epilog.ph528, label %vector.body519

vector.body519:                                   ; preds = %vector.main.loop.iter.check515, %vector.body519
  %index520 = phi i64 [ %index.next521, %vector.body519 ], [ 0, %vector.main.loop.iter.check515 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index520 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 96
  store <8 x float> splat (float +qnan), ptr %i.gt, align 4, !tbaa !12
  store <8 x float> splat (float +qnan), ptr %i.gu, align 4, !tbaa !12
  store <8 x float> splat (float +qnan), ptr %i.gv, align 4, !tbaa !12
  store <8 x float> splat (float +qnan), ptr %i.gw, align 4, !tbaa !12
  %index.next521 = add nuw i64 %index520, 32      ; 2 uses
  %i.gx = icmp eq i64 %index.next521, %n.vec518
  br i1 %i.gx, label %middle.block522, label %vector.body519, !llvm.loop !262

middle.block522:                                  ; preds = %vector.body519
  br i1 %cmp.n523, label %._crit_edge242, label %vec.epilog.iter.check525

vec.epilog.iter.check525:                         ; preds = %middle.block522
  br i1 %min.epilog.iters.check527, label %.lr.ph241.split.split.preheader, label %vec.epilog.ph528, !prof !83

vec.epilog.ph528:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check525
  %vec.epilog.resume.val529 = phi i64 [ %n.vec518, %vec.epilog.iter.check525 ], [ 0, %vector.main.loop.iter.check515 ]
  br label %vec.epilog.vector.body531

vec.epilog.vector.body531:                        ; preds = %vec.epilog.vector.body531, %vec.epilog.ph528
  %index532 = phi i64 [ %vec.epilog.resume.val529, %vec.epilog.ph528 ], [ %index.next533, %vec.epilog.vector.body531 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index532
  store <4 x float> splat (float +qnan), ptr %i.gy, align 4, !tbaa !12
  %index.next533 = add nuw i64 %index532, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next533, %n.vec530
  br i1 %i.gz, label %vec.epilog.middle.block534, label %vec.epilog.vector.body531, !llvm.loop !263

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body531
  br i1 %cmp.n535, label %._crit_edge242, label %.lr.ph241.split.split.preheader

.lr.ph241.split.split.preheader:                  ; preds = %iter.check524, %vec.epilog.iter.check525, %vec.epilog.middle.block534
  %indvars.iv304.ph = phi i64 [ 0, %iter.check524 ], [ %n.vec518, %vec.epilog.iter.check525 ], [ %n.vec530, %vec.epilog.middle.block534 ]
  br label %.lr.ph241.split.split

.lr.ph241.split.split:                            ; preds = %.lr.ph241.split.split.preheader, %.lr.ph241.split.split
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph241.split.split ], [ %indvars.iv304.ph, %.lr.ph241.split.split.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv304
  store float +qnan, ptr %gep, align 4, !tbaa !12
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %i.dm
  br i1 %exitcond308.not, label %._crit_edge242, label %.lr.ph241.split.split, !llvm.loop !264

._crit_edge242:                                   ; preds = %.lr.ph241.split.split, %bb.t, %middle.block522, %vec.epilog.middle.block534, %.lr.ph241.split
  %indvars.iv.next319 = add nuw nsw i32 %indvars.iv318, %i.ea
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %i.cz
  br i1 %exitcond334.not, label %._crit_edge247.split, label %.preheader205, !llvm.loop !265

._crit_edge247.split:                             ; preds = %._crit_edge242, %.preheader205.lr.ph, %bb.i
  br i1 %.not199464, label %._crit_edge465, label %.preheader204

bb.u:                                             ; preds = %._crit_edge258
  %.not199 = icmp eq i32 %i.ha, 0
  br i1 %.not199, label %._crit_edge465, label %.preheader204, !llvm.loop !266

.preheader204:                                    ; preds = %._crit_edge247.split, %bb.u
  %.in = phi i32 [ %i.ha, %bb.u ], [ %i.dk, %._crit_edge247.split ]
  %i.ha = add nsw i32 %.in, -1                    ; 2 uses
  br i1 %brmerge, label %.preheader203, label %.preheader201

.preheader203:                                    ; preds = %._crit_edge253, %.preheader204
  br i1 %i.dl, label %.lr.ph257.preheader, label %.preheader206

.lr.ph257.preheader:                              ; preds = %.preheader203
  br i1 %min.iters.check503, label %.lr.ph257.preheader538, label %vector.body506

vector.body506:                                   ; preds = %.lr.ph257.preheader, %vector.body506
  %index507 = phi i64 [ %index.next509, %vector.body506 ], [ 0, %.lr.ph257.preheader ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.hh, %vector.body506 ], [ zeroinitializer, %.lr.ph257.preheader ]
  %i.hb = phi <8 x i1> [ %i.hg, %vector.body506 ], [ zeroinitializer, %.lr.ph257.preheader ]
  %i.hc = getelementptr [4 x i8], ptr %i.dc, i64 %index507 ; 2 uses
  %wide.load508 = load <8 x float>, ptr %i.hc, align 4, !tbaa !12
  %wide.load508.fr = freeze <8 x float> %wide.load508 ; 2 uses
  %i.hd = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load508.fr, zeroinitializer ; 3 uses
  %i.he = fneg reassoc nsz arcp contract afn <8 x float> %wide.load508.fr
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.he, ptr align 4 %i.hc, <8 x i1> %i.hd), !tbaa !12
  %i.hf = bitcast <8 x i1> %i.hd to i8
  %.not537 = icmp eq i8 %i.hf, 0                  ; 2 uses
  %i.hg = select i1 %.not537, <8 x i1> %i.hb, <8 x i1> %i.hd ; 2 uses
  %i.hh = select i1 %.not537, <8 x i32> %vec.phi, <8 x i32> splat (i32 1) ; 2 uses
  %index.next509 = add nuw i64 %index507, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next509, %n.vec505
  br i1 %i.hi, label %middle.block510, label %vector.body506, !llvm.loop !267

middle.block510:                                  ; preds = %vector.body506
  %i.hj = tail call i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32> %i.hh, <8 x i1> %i.hg, i32 0) ; 2 uses
  br i1 %cmp.n511, label %._crit_edge258, label %.lr.ph257.preheader538

.lr.ph257.preheader538:                           ; preds = %.lr.ph257.preheader, %middle.block510
  %indvars.iv349.ph = phi i64 [ 0, %.lr.ph257.preheader ], [ %n.vec505, %middle.block510 ]
  %.0170255.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.hj, %middle.block510 ]
  br label %.lr.ph257

.preheader201:                                    ; preds = %.preheader204, %._crit_edge253
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %._crit_edge253 ], [ 0, %.preheader204 ] ; 5 uses
  %i.hk = mul nuw nsw i64 %indvars.iv344, %i.dm   ; 3 uses
  %invariant.gep450 = getelementptr [4 x i8], ptr %i.dc, i64 %i.hk
  %i.hl = trunc i64 %indvars.iv344 to i32
  %i.hm = add i32 %i.hl, -1                       ; 4 uses
  %i.hn = icmp ult i32 %i.hm, %i.cu               ; 2 uses
  %i.ho = mul nuw i32 %i.hm, %i.cy
  %i.hp = mul nuw i32 %i.hm, %i.cy
  %i.hq = zext i32 %i.hp to i64
  %invariant.gep452 = getelementptr [4 x i8], ptr %i.dc, i64 %i.hq
  %i.hr = mul nuw i32 %i.hm, %i.cy
  %i.hs = zext i32 %i.hr to i64
  %invariant.gep454 = getelementptr [4 x i8], ptr %i.dc, i64 %i.hs
  %i.ht = add nuw nsw i64 %indvars.iv344, 1       ; 2 uses
  %i.hu = icmp samesign ult i64 %i.ht, %i.cz
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hk
  %i.hw = add nuw nsw i64 %indvars.iv344, 1       ; 4 uses
  %i.hx = icmp samesign ult i64 %i.hw, %i.cz
  %i.hy = mul nuw nsw i64 %i.hw, %i.dm
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hk
  br label %bb.v

bb.v:                                             ; preds = %.preheader201, %bb.af
  %indvars.iv339 = phi i64 [ 0, %.preheader201 ], [ %indvars.iv.next340.pre-phi, %bb.af ] ; 7 uses
  %gep451 = getelementptr [4 x i8], ptr %invariant.gep450, i64 %indvars.iv339 ; 2 uses
  %i.ib = load float, ptr %gep451, align 4, !tbaa !12
  %i.ic = fcmp reassoc nsz arcp contract afn une float %i.ib, 0.000000e+00
  br i1 %i.ic, label %._crit_edge383, label %.preheader.preheader

._crit_edge383:                                   ; preds = %bb.v
  %.pre384 = add nuw nsw i64 %indvars.iv339, 1
  br label %bb.af

.preheader.preheader:                             ; preds = %bb.v
  %i.id = trunc i64 %indvars.iv339 to i32
  %i.ie = add i32 %i.id, -1                       ; 4 uses
  %i.if = icmp ult i32 %i.ie, %i.cy               ; 3 uses
  %or.cond = and i1 %i.hn, %i.if
  br i1 %or.cond, label %bb.w, label %.preheader.1

bb.w:                                             ; preds = %.preheader.preheader
  %i.ig = add nuw i32 %i.ho, %i.ie
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !12 ; 2 uses
  %i.ik = fcmp reassoc nsz arcp contract afn ogt float %i.ij, 0.000000e+00 ; 2 uses
  %spec.select458 = select nsz i1 %i.ik, float %i.ij, float 0.000000e+00
  %spec.select459 = zext i1 %i.ik to i32
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.w, %.preheader.preheader
  %.4184 = phi nsz float [ 0.000000e+00, %.preheader.preheader ], [ %spec.select458, %bb.w ] ; 4 uses
  %.4 = phi i32 [ 0, %.preheader.preheader ], [ %spec.select459, %bb.w ] ; 4 uses
  br i1 %i.hn, label %.preheader.2, label %.preheader.2.thread

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.il = add nuw nsw i64 %indvars.iv339, 1       ; 3 uses
  %i.im = icmp samesign ult i64 %i.il, %i.dm
  br i1 %i.im, label %.preheader.4, label %.preheader.4.thread

.preheader.2:                                     ; preds = %.preheader.1
  %gep453 = getelementptr [4 x i8], ptr %invariant.gep452, i64 %indvars.iv339
  %i.in = load float, ptr %gep453, align 4, !tbaa !12 ; 2 uses
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.in, 0.000000e+00 ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn float %i.in, 2.000000e+00
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %.4184
  %i.ir = or disjoint i32 %.4, 2
  %.4184.1 = select nsz i1 %i.io, float %i.iq, float %.4184 ; 3 uses
  %.4.1 = select i1 %i.io, i32 %i.ir, i32 %.4     ; 3 uses
  %i.is = add nuw nsw i64 %indvars.iv339, 1       ; 5 uses
  %i.it = icmp samesign ult i64 %i.is, %i.dm
  br i1 %i.it, label %bb.x, label %.preheader.4.thread

bb.x:                                             ; preds = %.preheader.2
  %gep455 = getelementptr [4 x i8], ptr %invariant.gep454, i64 %i.is
  %i.iu = load float, ptr %gep455, align 4, !tbaa !12 ; 2 uses
  %i.iv = fcmp reassoc nsz arcp contract afn ogt float %i.iu, 0.000000e+00
  br i1 %i.iv, label %.split, label %.preheader.4

.split:                                           ; preds = %bb.x
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iu, %.4184.1
  %i.ix = add nuw nsw i32 %.4.1, 1
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.x, %.split, %.preheader.2.thread
  %.4.2425 = phi i32 [ %i.ix, %.split ], [ %.4, %.preheader.2.thread ], [ %.4.1, %bb.x ] ; 2 uses
  %.4184.2424 = phi float [ %i.iw, %.split ], [ %.4184, %.preheader.2.thread ], [ %.4184.1, %bb.x ] ; 2 uses
  %i.iy = phi i64 [ %i.is, %.split ], [ %i.il, %.preheader.2.thread ], [ %i.is, %bb.x ] ; 5 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.iy
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !12 ; 2 uses
  %i.jb = fcmp reassoc nsz arcp contract afn ogt float %i.ja, 0.000000e+00 ; 2 uses
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ja, 2.000000e+00
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jc, %.4184.2424
  %i.je = add nuw nsw i32 %.4.2425, 2
  %.4184.3 = select nsz i1 %i.jb, float %i.jd, float %.4184.2424 ; 3 uses
  %.4.3 = select i1 %i.jb, i32 %i.je, i32 %.4.2425 ; 3 uses
  br i1 %i.hx, label %bb.y, label %.preheader.7

.preheader.4.thread:                              ; preds = %.preheader.2, %.preheader.2.thread
  %.ph = phi i64 [ %i.il, %.preheader.2.thread ], [ %i.is, %.preheader.2 ] ; 2 uses
  %.4184.3.ph = phi float [ %.4184, %.preheader.2.thread ], [ %.4184.1, %.preheader.2 ] ; 2 uses
  %.4.3.ph = phi i32 [ %.4, %.preheader.2.thread ], [ %.4.1, %.preheader.2 ] ; 2 uses
  br i1 %i.hu, label %.preheader.6, label %.preheader.7

bb.y:                                             ; preds = %.preheader.4
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.iy
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !12 ; 2 uses
  %i.jh = fcmp reassoc nsz arcp contract afn ogt float %i.jg, 0.000000e+00
  br i1 %i.jh, label %.split431, label %.preheader.6

.split431:                                        ; preds = %bb.y
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jg, %.4184.3
  %i.jj = add nuw nsw i32 %.4.3, 1
  br label %.preheader.6

.preheader.6:                                     ; preds = %bb.y, %.split431, %.preheader.4.thread
  %.4.4435 = phi i32 [ %i.jj, %.split431 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %bb.y ] ; 2 uses
  %.4184.4434 = phi float [ %i.ji, %.split431 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %bb.y ] ; 2 uses
  %i.jk = phi i64 [ %i.iy, %.split431 ], [ %.ph, %.preheader.4.thread ], [ %i.iy, %bb.y ] ; 3 uses
  %i.jl = phi i64 [ %i.hw, %.split431 ], [ %i.ht, %.preheader.4.thread ], [ %i.hw, %bb.y ] ; 2 uses
  %i.jm = mul nuw nsw i64 %i.jl, %i.dm
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv339
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !12 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt float %i.jp, 0.000000e+00 ; 2 uses
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jp, 2.000000e+00
  %i.js = fadd reassoc nsz arcp contract afn float %i.jr, %.4184.4434
  %i.jt = add nuw nsw i32 %.4.4435, 2
  %.4184.5 = select nsz i1 %i.jq, float %i.js, float %.4184.4434 ; 3 uses
  %.4.5 = select i1 %i.jq, i32 %i.jt, i32 %.4.4435 ; 3 uses
  br i1 %i.if, label %bb.z, label %.preheader.7

bb.z:                                             ; preds = %.preheader.6
  %i.ju = mul nuw nsw i64 %i.jl, %i.dm
  %i.jv = zext nneg i32 %i.ie to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !12 ; 2 uses
  %i.jz = fcmp reassoc nsz arcp contract afn ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.aa, label %.preheader.7

bb.aa:                                            ; preds = %bb.z
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jy, %.4184.5
  %i.kb = add nuw nsw i32 %.4.5, 1
  br label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.4, %.preheader.4.thread, %bb.aa, %bb.z, %.preheader.6
  %i.kc = phi i64 [ %i.jk, %bb.aa ], [ %i.jk, %bb.z ], [ %i.jk, %.preheader.6 ], [ %.ph, %.preheader.4.thread ], [ %i.iy, %.preheader.4 ] ; 2 uses
  %.4184.6 = phi nsz float [ %i.ka, %bb.aa ], [ %.4184.5, %bb.z ], [ %.4184.5, %.preheader.6 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %.preheader.4 ] ; 3 uses
  %.4.6 = phi i32 [ %i.kb, %bb.aa ], [ %.4.5, %bb.z ], [ %.4.5, %.preheader.6 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %.preheader.4 ] ; 3 uses
  br i1 %i.if, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.preheader.7
  %i.kd = zext nneg i32 %i.ie to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !12 ; 2 uses
  %i.kg = fcmp reassoc nsz arcp contract afn ogt float %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kf, 2.000000e+00
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %.4184.6
  %i.kj = add nuw nsw i32 %.4.6, 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.preheader.7
  %.4184.7 = phi nsz float [ %i.ki, %bb.ac ], [ %.4184.6, %bb.ab ], [ %.4184.6, %.preheader.7 ]
  %.4.7 = phi i32 [ %i.kj, %bb.ac ], [ %.4.6, %bb.ab ], [ %.4.6, %.preheader.7 ] ; 2 uses
  %i.kk = icmp samesign ugt i32 %.4.7, 3
  br i1 %i.kk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.kl = fadd reassoc nsz arcp contract afn float %.4184.7, %exp2
  %i.km = fneg reassoc nsz arcp contract afn float %i.kl
  %i.kn = uitofp nneg i32 %.4.7 to float
  %i.ko = fadd reassoc nsz arcp contract afn float %exp2, %i.kn
  %i.kp = fdiv reassoc nsz arcp contract afn float %i.km, %i.ko
  store float %i.kp, ptr %gep451, align 4, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge383, %bb.ad, %bb.ae
  %indvars.iv.next340.pre-phi = phi i64 [ %.pre384, %._crit_edge383 ], [ %i.kc, %bb.ad ], [ %i.kc, %bb.ae ] ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340.pre-phi, %i.dm
  br i1 %exitcond343.not, label %._crit_edge253, label %bb.v, !llvm.loop !268

._crit_edge253:                                   ; preds = %bb.af
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %i.cz
  br i1 %exitcond348.not, label %.preheader203, label %.preheader201, !llvm.loop !269

.lr.ph257:                                        ; preds = %.lr.ph257.preheader538, %bb.ah
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %bb.ah ], [ %indvars.iv349.ph, %.lr.ph257.preheader538 ] ; 2 uses
  %.0170255 = phi i32 [ %.1171, %bb.ah ], [ %.0170255.ph, %.lr.ph257.preheader538 ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv349 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !12 ; 2 uses
  %i.ks = fcmp reassoc nsz arcp contract afn olt float %i.kr, 0.000000e+00
  br i1 %i.ks, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph257
  %i.kt = fneg reassoc nsz arcp contract afn float %i.kr
  store float %i.kt, ptr %i.kq, align 4, !tbaa !12
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph257, %bb.ag
  %.1171 = phi i32 [ 1, %bb.ag ], [ %.0170255, %.lr.ph257 ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %i.dh
  br i1 %exitcond353.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !270

._crit_edge258:                                   ; preds = %bb.ah, %middle.block510
  %.1171.lcssa = phi i32 [ %i.hj, %middle.block510 ], [ %.1171, %bb.ah ]
  %i.ku = icmp eq i32 %.1171.lcssa, 0
  br i1 %i.ku, label %._crit_edge258._crit_edge, label %bb.u, !llvm.loop !266

._crit_edge258._crit_edge:                        ; preds = %._crit_edge258
  br label %._crit_edge465, !llvm.loop !266

._crit_edge465:                                   ; preds = %bb.u, %._crit_edge258._crit_edge, %._crit_edge247.split
  br i1 %i.dl, label %iter.check489, label %.preheader206

iter.check489:                                    ; preds = %._crit_edge465
  br i1 %min.iters.check475, label %.lr.ph262.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %iter.check489
  br i1 %min.iters.check477, label %vec.epilog.ph493, label %vector.body480

vector.body480:                                   ; preds = %vector.main.loop.iter.check476, %vector.body480
  %index481 = phi i64 [ %index.next486, %vector.body480 ], [ 0, %vector.main.loop.iter.check476 ] ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %i.dc, i64 %index481 ; 5 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 32     ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kv, i64 64     ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kv, i64 96     ; 2 uses
  %wide.load482 = load <8 x float>, ptr %i.kv, align 4, !tbaa !12
  %wide.load483 = load <8 x float>, ptr %i.kw, align 4, !tbaa !12
  %wide.load484 = load <8 x float>, ptr %i.kx, align 4, !tbaa !12
  %wide.load485 = load <8 x float>, ptr %i.ky, align 4, !tbaa !12
  %i.kz = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load482, zeroinitializer
  %i.la = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load483, zeroinitializer
  %i.lb = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load484, zeroinitializer
  %i.lc = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load485, zeroinitializer
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kv, <8 x i1> %i.kz), !tbaa !12
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kw, <8 x i1> %i.la), !tbaa !12
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kx, <8 x i1> %i.lb), !tbaa !12
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.ky, <8 x i1> %i.lc), !tbaa !12
  %index.next486 = add nuw i64 %index481, 32      ; 2 uses
  %i.ld = icmp eq i64 %index.next486, %n.vec479
  br i1 %i.ld, label %middle.block487, label %vector.body480, !llvm.loop !271

middle.block487:                                  ; preds = %vector.body480
  br i1 %cmp.n488, label %.preheader206, label %vec.epilog.iter.check490

vec.epilog.iter.check490:                         ; preds = %middle.block487
  br i1 %min.epilog.iters.check492, label %.lr.ph262.preheader, label %vec.epilog.ph493, !prof !83

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check490
  %vec.epilog.resume.val494 = phi i64 [ %n.vec479, %vec.epilog.iter.check490 ], [ 0, %vector.main.loop.iter.check476 ]
  br label %vec.epilog.vector.body496

vec.epilog.vector.body496:                        ; preds = %vec.epilog.vector.body496, %vec.epilog.ph493
  %index497 = phi i64 [ %vec.epilog.resume.val494, %vec.epilog.ph493 ], [ %index.next499, %vec.epilog.vector.body496 ] ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.dc, i64 %index497 ; 2 uses
  %wide.load498 = load <4 x float>, ptr %i.le, align 4, !tbaa !12
  %i.lf = fcmp reassoc nsz arcp contract afn oeq <4 x float> %wide.load498, zeroinitializer
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float 1.000000e+00), ptr align 4 %i.le, <4 x i1> %i.lf), !tbaa !12
  %index.next499 = add nuw i64 %index497, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next499, %n.vec495
  br i1 %i.lg, label %vec.epilog.middle.block500, label %vec.epilog.vector.body496, !llvm.loop !272

vec.epilog.middle.block500:                       ; preds = %vec.epilog.vector.body496
  br i1 %cmp.n501, label %.preheader206, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check489, %vec.epilog.iter.check490, %vec.epilog.middle.block500
  %indvars.iv354.ph = phi i64 [ 0, %iter.check489 ], [ %n.vec479, %vec.epilog.iter.check490 ], [ %n.vec495, %vec.epilog.middle.block500 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.aj, %middle.block487, %vec.epilog.middle.block500, %._crit_edge465
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.cq, align 4, !tbaa !87
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.aj
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.aj ], [ %indvars.iv354.ph, %.lr.ph262.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv354 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !12
  %i.lk = fcmp reassoc nsz arcp contract afn oeq float %i.lj, 0.000000e+00
  br i1 %i.lk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.li, align 4, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph262, %bb.ai
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.dh
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !273

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372376, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.ll = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.lm = mul nuw nsw i64 %indvars.iv364, %i.dm
  %invariant.gep456 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.lm
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372381 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372376, %._crit_edge270 ] ; 2 uses
  %i.ln = phi i16 [ %.pre372, %.preheader202 ], [ %i.np, %._crit_edge270 ] ; 2 uses
  %i.lo = phi i16 [ %.pre372, %.preheader202 ], [ %i.nq, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.lp = zext nneg i16 %i.lo to i32
  %i.lq = lshr i32 4, %i.lp                       ; 3 uses
  %i.lr = mul i32 %i.lq, %indvars366              ; 2 uses
  %i.ls = mul i32 %i.lq, %i.ll
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.ak
  %i.lu = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep457 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep456, i64 %indvars.iv359
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372380 = phi i16 [ %.pre372381, %.lr.ph269 ], [ %.pre372377, %._crit_edge266 ] ; 2 uses
  %i.lv = phi i16 [ %i.ln, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.lw = phi i16 [ %i.lo, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.lx = phi i32 [ %i.lq, %.lr.ph269 ], [ %i.nm, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.lr, %.lr.ph269 ], [ %i.nk, %._crit_edge266 ] ; 2 uses
  %i.ly = mul i32 %i.lx, %indvars361              ; 2 uses
  %i.lz = zext nneg i16 %i.lw to i32
  %i.ma = lshr i32 4, %i.lz
  %i.mb = mul i32 %i.ma, %i.lu
  %i.mc = icmp ult i32 %i.ly, %i.mb
  br i1 %i.mc, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.al
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.me = load i32, ptr %i.lh, align 4, !tbaa !79
  %.pre374 = load i16, ptr %i.cv, align 2, !tbaa !86
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph265, %bb.ap
  %.pre372379 = phi i16 [ %.pre372380, %.lr.ph265 ], [ %.pre372378, %bb.ap ] ; 2 uses
  %i.mf = phi i16 [ %i.lv, %.lr.ph265 ], [ %i.nb, %bb.ap ] ; 2 uses
  %i.mg = phi i16 [ %i.lw, %.lr.ph265 ], [ %i.nc, %bb.ap ] ; 2 uses
  %i.mh = phi i16 [ %.pre374, %.lr.ph265 ], [ %i.nd, %bb.ap ] ; 3 uses
  %.1159263 = phi i32 [ %i.ly, %.lr.ph265 ], [ %i.ne, %bb.ap ] ; 2 uses
  %i.mi = zext i16 %i.mh to i32
  %i.mj = mul i32 %.1161267, %i.mi
  %i.mk = add i32 %i.mj, %.1159263
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %indvars.iv369 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = zext i16 %i.mo to i32                   ; 2 uses
  %i.mq = sdiv i32 %i.mp, %i.me
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %.0156.lcssa
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !82
  %i.mu = uitofp i16 %i.mt to float
  %i.mv = load float, ptr %gep457, align 4, !tbaa !12
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mu
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  %i.my = icmp slt i32 %i.mp, %i.mx
  br i1 %i.my, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 65535)
  %i.na = trunc nuw i32 %i.mz to i16
  store i16 %i.na, ptr %i.mn, align 2, !tbaa !82
  %.pre373 = load i16, ptr %i.cv, align 2, !tbaa !86
  %.pre375 = load i16, ptr %i.cq, align 4, !tbaa !87 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %.pre372378 = phi i16 [ %.pre372379, %bb.am ], [ %.pre375, %bb.ao ], [ %.pre372379, %bb.an ] ; 2 uses
  %i.nb = phi i16 [ %i.mf, %bb.am ], [ %.pre375, %bb.ao ], [ %i.mf, %bb.an ] ; 2 uses
  %i.nc = phi i16 [ %i.mg, %bb.am ], [ %.pre375, %bb.ao ], [ %i.mg, %bb.an ] ; 2 uses
  %i.nd = phi i16 [ %i.mh, %bb.am ], [ %.pre373, %bb.ao ], [ %i.mh, %bb.an ]
  %i.ne = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.nf = zext nneg i16 %i.nc to i32
  %i.ng = lshr i32 4, %i.nf
  %i.nh = mul i32 %i.ng, %i.lu
  %i.ni = icmp samesign ult i32 %i.ne, %i.nh
  br i1 %i.ni, label %bb.am, label %._crit_edge266, !llvm.loop !274

._crit_edge266:                                   ; preds = %bb.ap, %bb.al
  %.pre372377 = phi i16 [ %.pre372380, %bb.al ], [ %.pre372378, %bb.ap ] ; 2 uses
  %i.nj = phi i16 [ %i.lv, %bb.al ], [ %i.nb, %bb.ap ] ; 5 uses
  %i.nk = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.nl = zext nneg i16 %i.nj to i32
  %i.nm = lshr i32 4, %i.nl                       ; 2 uses
  %i.nn = mul i32 %i.nm, %i.ll
  %i.no = icmp samesign ult i32 %i.nk, %i.nn
  br i1 %i.no, label %bb.al, label %._crit_edge270, !llvm.loop !275

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.ak
  %.pre372376 = phi i16 [ %.pre372381, %bb.ak ], [ %.pre372377, %._crit_edge266 ] ; 2 uses
  %i.np = phi i16 [ %i.ln, %bb.ak ], [ %i.nj, %._crit_edge266 ]
  %i.nq = phi i16 [ %i.lo, %bb.ak ], [ %i.nj, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.dm
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.ak, !llvm.loop !276

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.cz
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !277

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.e
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.nr = load i32, ptr %i.f, align 4, !tbaa !80  ; 2 uses
  %i.ns = zext i32 %i.nr to i64
  %i.nt = icmp samesign ult i64 %indvars.iv.next370, %i.ns
  br i1 %i.nt, label %bb.e, label %._crit_edge279, !llvm.loop !278

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dc)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v29i16.p0(<29 x i16>, ptr captures(none), <29 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32>, <8 x i1>, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 8, i32 24}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 short", !18, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = !{!"_ZTS20libraw_image_sizes_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !8, i64 16, !21, i64 24, !8, i64 32, !7, i64 36, !20, i64 164, !7, i64 166}
!23 = !{!"p1 omnipotent char", !18, i64 0}
!24 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !23, i64 432}
!25 = !{!"_ZTS18libraw_nikonlens_t", !11, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!26 = !{!"_ZTS16libraw_dnglens_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!27 = !{!"long long", !7, i64 0}
!28 = !{!"_ZTS24libraw_makernotes_lens_t", !27, i64 0, !7, i64 8, !20, i64 136, !20, i64 138, !27, i64 144, !20, i64 152, !20, i64 154, !7, i64 156, !20, i64 220, !7, i64 222, !7, i64 238, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !27, i64 320, !7, i64 328, !27, i64 456, !7, i64 464, !27, i64 592, !7, i64 600, !20, i64 728, !11, i64 732}
!29 = !{!"_ZTS17libraw_lensinfo_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !20, i64 532, !25, i64 536, !26, i64 544, !28, i64 560}
!30 = !{!"_ZTS13libraw_area_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!31 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !20, i64 52, !20, i64 54, !7, i64 56, !20, i64 58, !20, i64 60, !20, i64 62, !20, i64 64, !20, i64 66, !20, i64 68, !20, i64 70, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !20, i64 80, !20, i64 82, !8, i64 84, !11, i64 88, !20, i64 92, !20, i64 94, !20, i64 96, !20, i64 98, !8, i64 100, !20, i64 104, !8, i64 108, !8, i64 112, !20, i64 116, !8, i64 120, !30, i64 124, !30, i64 132, !30, i64 140, !30, i64 148, !30, i64 156, !7, i64 164}
!32 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!33 = !{!"_ZTS25libraw_nikon_makernotes_t", !21, i64 0, !20, i64 8, !20, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !20, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !20, i64 170, !32, i64 172, !20, i64 180, !20, i64 182, !20, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !23, i64 256, !20, i64 264, !20, i64 266, !7, i64 268, !20, i64 270, !21, i64 272, !21, i64 280, !21, i64 288}
!34 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !21, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!35 = !{!"_ZTS18libraw_fuji_info_t", !11, i64 0, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !7, i64 20, !7, i64 53, !11, i64 88, !20, i64 92, !20, i64 94, !7, i64 96, !20, i64 100, !8, i64 104, !8, i64 108, !20, i64 112, !7, i64 114, !20, i64 120, !20, i64 122, !20, i64 124, !20, i64 126, !20, i64 128, !8, i64 132, !20, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !20, i64 168, !8, i64 172, !20, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!36 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !20, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !20, i64 82, !7, i64 84, !20, i64 88, !20, i64 90, !7, i64 92, !7, i64 352, !20, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !20, i64 416, !20, i64 418, !20, i64 420, !20, i64 422, !21, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !20, i64 456, !20, i64 458}
!37 = !{!"_ZTS18libraw_sony_info_t", !20, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !20, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !20, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !20, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !20, i64 54, !8, i64 56, !20, i64 60, !7, i64 62, !20, i64 66, !20, i64 68, !20, i64 70, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !8, i64 80, !11, i64 84, !20, i64 88, !8, i64 92, !8, i64 96, !20, i64 100, !7, i64 102, !8, i64 124, !20, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !20, i64 138, !20, i64 140, !20, i64 142, !20, i64 144, !20, i64 146, !20, i64 148, !20, i64 150, !20, i64 152, !20, i64 154, !8, i64 156, !20, i64 160, !7, i64 162, !11, i64 180}
!38 = !{!"_ZTS25libraw_kodak_makernotes_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !20, i64 228, !20, i64 230, !20, i64 232, !20, i64 234, !11, i64 236, !11, i64 240}
!39 = !{!"_ZTS29libraw_panasonic_makernotes_t", !20, i64 0, !20, i64 2, !7, i64 4, !8, i64 36, !11, i64 40, !7, i64 44, !20, i64 56, !20, i64 58, !8, i64 60, !8, i64 64}
!40 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !20, i64 12, !8, i64 16, !8, i64 20, !20, i64 24, !7, i64 26, !20, i64 30, !7, i64 32, !7, i64 33, !20, i64 34}
!41 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!42 = !{!"_ZTS25libraw_ricoh_makernotes_t", !20, i64 0, !7, i64 4, !7, i64 12, !20, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !20, i64 40, !20, i64 42, !20, i64 44, !20, i64 46, !20, i64 48, !20, i64 50, !21, i64 56, !21, i64 64}
!43 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !21, i64 88, !8, i64 96, !7, i64 100}
!44 = !{!"_ZTS24libraw_metadata_common_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !20, i64 64, !7, i64 66, !11, i64 196, !7, i64 200, !8, i64 296}
!45 = !{!"_ZTS19libraw_makernotes_t", !31, i64 0, !33, i64 168, !34, i64 464, !35, i64 848, !36, i64 1200, !37, i64 1664, !38, i64 1848, !39, i64 2092, !40, i64 2160, !41, i64 2196, !42, i64 2648, !43, i64 2720, !44, i64 2856}
!46 = !{!"_ZTS21libraw_shootinginfo_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !7, i64 14, !7, i64 78}
!47 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !11, i64 128, !11, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !11, i64 248, !11, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !11, i64 288, !11, i64 292, !8, i64 296, !8, i64 300}
!48 = !{!"any p2 pointer", !18, i64 0}
!49 = !{!"p2 omnipotent char", !48, i64 0}
!50 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28, !7, i64 32, !49, i64 40}
!51 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32}
!52 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !11, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !11, i64 32920, !11, i64 32924, !7, i64 32928}
!53 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !11, i64 147516, !11, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !51, i64 147876, !11, i64 147912, !11, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !18, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !52, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!54 = !{!"long", !7, i64 0}
!55 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !11, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!56 = !{!"_ZTS17libraw_imgother_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !54, i64 16, !8, i64 24, !7, i64 28, !55, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!57 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!58 = !{!"_ZTS18libraw_thumbnail_t", !57, i64 0, !20, i64 4, !20, i64 6, !8, i64 8, !8, i64 12, !23, i64 16}
!59 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!60 = !{!"p1 float", !18, i64 0}
!61 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !20, i64 12, !20, i64 14}
!62 = !{!"_ZTS16libraw_rawdata_t", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !19, i64 56, !19, i64 64, !24, i64 72, !22, i64 512, !61, i64 696, !53, i64 712}
!63 = !{!"_ZTS13libraw_data_t", !19, i64 0, !22, i64 8, !24, i64 192, !29, i64 632, !45, i64 1928, !46, i64 5088, !47, i64 5232, !50, i64 5536, !8, i64 5584, !8, i64 5588, !53, i64 5592, !56, i64 192680, !58, i64 193480, !59, i64 193504, !62, i64 193768, !18, i64 381568}
!64 = !{!"p1 _ZTS10LibRaw_TLS", !18, i64 0}
!65 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !18, i64 0}
!66 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!67 = !{!"_ZTS15internal_data_t", !65, i64 0, !66, i64 8, !8, i64 16, !23, i64 24, !27, i64 32, !27, i64 40, !7, i64 48}
!68 = !{!"p1 int", !18, i64 0}
!69 = !{!"_ZTS13output_data_t", !68, i64 0, !68, i64 8}
!70 = !{!"_ZTS15identify_data_t", !8, i64 0, !27, i64 8, !27, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!71 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!72 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !20, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !20, i64 148, !20, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!73 = !{!"_ZTS15unpacker_data_t", !20, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !71, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !27, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !72, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !20, i64 2496, !20, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !20, i64 2608}
!74 = !{!"_ZTS22libraw_internal_data_t", !67, i64 0, !61, i64 64, !69, i64 80, !70, i64 96, !73, i64 136}
!75 = !{!"p1 _ZTS6decode", !18, i64 0}
!76 = !{!"_ZTS13libraw_memmgr", !48, i64 0, !8, i64 8}
!77 = !{!"_ZTS18libraw_callbacks_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144}
!78 = !{!"_ZTS6LibRaw", !63, i64 8, !64, i64 381584, !74, i64 381592, !7, i64 384344, !75, i64 433496, !75, i64 433504, !7, i64 433512, !76, i64 768232, !77, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !18, i64 768448, !18, i64 768456, !18, i64 768464, !54, i64 768472, !18, i64 768480, !18, i64 768488, !18, i64 768496, !18, i64 768504}
!79 = !{!8, !8, i64 0}
!80 = !{!78, !8, i64 540}
!81 = !{!78, !19, i64 8}
!82 = !{!20, !20, i64 0}
!83 = !{!"branch_weights", i32 4, i32 28}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!78, !20, i64 20}
!86 = !{!78, !20, i64 22}
!87 = !{!78, !20, i64 381668}
!88 = !{!78, !18, i64 768264}
!89 = !{!78, !18, i64 768272}
!90 = !{!"_ZTS17LibRaw_exceptions", !7, i64 0}
!91 = !{!90, !90, i64 0}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !13, !14, !15}
!97 = distinct !{!97, !13, !14, !15}
!98 = distinct !{!98, !13, !14, !15}
!99 = distinct !{!99, !13, !14, !15}
!100 = distinct !{!100, !13, !14}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !101}
!106 = distinct !{!106, !13, !14, !15}
!107 = distinct !{!107, !13, !14, !15}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13, !14}
!110 = !{!93}
!111 = !{!94}
!112 = !{!95}
!113 = !{!94, !93}
!114 = !{!102}
!115 = !{!103}
!116 = !{!104}
!117 = !{!105}
!118 = !{!104, !103, !102}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13, !14, !15}
!121 = distinct !{!121, !13, !14, !15}
!122 = distinct !{!122, !13, !15, !14}
!123 = distinct !{!123, !13, !14, !15}
!124 = distinct !{!124, i1 false, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !124}
!128 = distinct !{!128, !124}
!129 = distinct !{!129, !13, !14, !15}
!130 = distinct !{!130, !13, !14, !15}
!131 = distinct !{!131, !84}
!132 = distinct !{!132, !13, !14, !15}
!133 = distinct !{!133, !13, !14, !15}
!134 = distinct !{!134, !13, !14}
!135 = distinct !{!135, i1 false, !"LVerDomain"}
end_hunk_2
