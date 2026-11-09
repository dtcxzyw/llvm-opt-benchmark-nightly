Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a

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
  %.0233 = phi ptr [ %i.ai, %bb.e ], [ null, %bb.d ] ; 61 uses
  %i.aj = zext i32 %i.ac to i64                   ; 13 uses
  %i.ak = getelementptr [4 x i8], ptr %.0233, i64 %i.aj ; 52 uses
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
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 19 uses
  %i.at = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %.0233, i64 %i.at ; 2 uses
  %i.au = shl nuw nsw i64 %i.aj, 2                ; 3 uses
  %scevgep681 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep687 = getelementptr i8, ptr %.0233, i64 4
  %scevgep689 = getelementptr i8, ptr %.0233, i64 -4
  %scevgep692 = getelementptr i8, ptr %.0233, i64 %i.au
  %scevgep939 = getelementptr i8, ptr %.0233, i64 4
  %scevgep942 = getelementptr i8, ptr %.0233, i64 4
  %i.av = shl nuw nsw i64 %i.aj, 2
  %scevgep946 = getelementptr i8, ptr %.0233, i64 %i.av
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
  %invariant.gep1080 = getelementptr i8, ptr %.0233, i64 %i.au
  %invariant.gep1094 = getelementptr i8, ptr %.0233, i64 %i.au
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec466 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n480 = icmp eq i64 %n.vec466, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec481 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n493 = icmp eq i64 %n.vec481, %wide.trip.count
  %xtraiter1067 = and i64 %wide.trip.count, 1
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1067, 0
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
  %i.bx = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
  %i.by = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bu)
  %i.bz = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv)
  %i.ca = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
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
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
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
  %scevgep690 = getelementptr i8, ptr %scevgep689, i64 %i.dh
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
  %scevgep944 = getelementptr i8, ptr %.0233, i64 %i.do
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
  %invariant.op1096 = or i1 %i.dt, %ident.check
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
  %i.dz = tail call reassoc ninf nsz arcp contract afn float @llvm.sqrt.f32(float %i.dy)
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 2.560000e+02
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv
  store float %i.ea, ptr %i.eb, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader294, label %vec.epilog.scalar.ph1022, !llvm.loop !122

.preheader293:                                    ; preds = %.loopexit1036
  %invariant.gep436 = getelementptr [4 x i8], ptr %.0233, i64 %i.ahr ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader293
  %index = phi i64 [ 0, %.preheader293 ], [ %index.next, %vector.body ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.ec, align 4, !tbaa !12
  %i.ed = getelementptr [4 x i8], ptr %invariant.gep436, i64 %index
  %wide.load446 = load <8 x float>, ptr %i.ed, align 4, !tbaa !12
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %wide.load446, %wide.load ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, splat (float f0x37800000)
  %i.eh = fptosi <8 x float> %i.eg to <8 x i32>
  %i.ei = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.eh, <8 x i32> splat (i32 65535))
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
  %scevgep943 = getelementptr i8, ptr %scevgep942, i64 %i.fq
  %scevgep945 = getelementptr i8, ptr %scevgep944, i64 %i.ft
  %scevgep947 = getelementptr i8, ptr %scevgep946, i64 %i.fs ; 3 uses
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
  %invariant.op1082 = add i64 %i.ez, -1
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
  %scevgep691 = getelementptr i8, ptr %scevgep690, i64 %i.hi
  %scevgep693 = getelementptr i8, ptr %scevgep692, i64 %i.hh ; 3 uses
  %min.iters.check695 = icmp samesign ugt i64 %indvars.iv372, 2
  %or.cond = select i1 %min.iters.check695, i1 %ident.check655.not, i1 false
  %bound0697 = icmp ult ptr %i.ak, %scevgep691
  %bound1698 = icmp ult ptr %i.gj, %scevgep693
  %found.conflict699 = and i1 %bound0697, %bound1698
  %bound0700 = icmp ult ptr %i.ak, %scevgep686
  %bound1701 = icmp ult ptr %scevgep688, %scevgep693
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.ju = fadd reassoc nsz arcp contract afn float %i.jq, %i.jt
  %gep304.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.i.epil
  %i.jv = load float, ptr %gep304.epil, align 4, !tbaa !12
  %i.jw = fadd reassoc nsz arcp contract afn float %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.epil
  store float %i.jw, ptr %i.jx, align 4, !tbaa !12
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader53.i, label %.lr.ph.i.epil, !llvm.loop !131

.preheader53.i:                                   ; preds = %vector.body966, %vec.epilog.vector.body994, %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.epil
  br i1 %i.ev, label %iter.check895, label %.preheader.i

iter.check895:                                    ; preds = %.preheader53.i
  br i1 %min.iters.check873, label %.lr.ph56.i.preheader, label %vector.memcheck874

vector.memcheck874:                               ; preds = %iter.check895
  %i.jy = mul i64 %indvars.iv352, %i.dl           ; 3 uses
  %.reass = add i64 %i.jy, %invariant.op1075
  %diff.check875 = icmp ult i64 %.reass, 63
  %.reass1077 = add i64 %i.jy, %invariant.op1076
  %diff.check876 = icmp ult i64 %.reass1077, 63
  %conflict.rdx877 = or i1 %diff.check875, %diff.check876
  %.reass1079 = add i64 %i.jy, %invariant.op1078
  %diff.check878 = icmp ult i64 %.reass1079, 63
  %conflict.rdx879 = or i1 %conflict.rdx877, %diff.check878
  br i1 %conflict.rdx879, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check880

vector.main.loop.iter.check880:                   ; preds = %vector.memcheck874
  br i1 %min.iters.check881, label %vec.epilog.ph899, label %vector.ph882

vector.ph882:                                     ; preds = %vector.main.loop.iter.check880
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ew
  br label %vector.body884

vector.body884:                                   ; preds = %vector.ph882, %vector.body884
  %index885 = phi i64 [ 0, %vector.ph882 ], [ %index.next892, %vector.body884 ] ; 4 uses
  %i.ka = add nuw i64 %index885, %i.et            ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %wide.load886 = load <8 x float>, ptr %i.kb, align 4, !tbaa !12
  %wide.load887 = load <8 x float>, ptr %i.kc, align 4, !tbaa !12
  %i.kd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load886, splat (float 2.000000e+00)
  %i.ke = fmul reassoc nsz arcp contract afn <8 x float> %wide.load887, splat (float 2.000000e+00)
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index885 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %wide.load888 = load <8 x float>, ptr %i.kf, align 4, !tbaa !12
  %wide.load889 = load <8 x float>, ptr %i.kg, align 4, !tbaa !12
  %i.kh = fadd reassoc nsz arcp contract afn <8 x float> %i.kd, %wide.load888
  %i.ki = fadd reassoc nsz arcp contract afn <8 x float> %i.ke, %wide.load889
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %index885 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %wide.load890 = load <8 x float>, ptr %i.kj, align 4, !tbaa !12
  %wide.load891 = load <8 x float>, ptr %i.kk, align 4, !tbaa !12
  %i.kl = fadd reassoc nsz arcp contract afn <8 x float> %i.kh, %wide.load890
  %i.km = fadd reassoc nsz arcp contract afn <8 x float> %i.ki, %wide.load891
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ka ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  store <8 x float> %i.kl, ptr %i.kn, align 4, !tbaa !12
  store <8 x float> %i.km, ptr %i.ko, align 4, !tbaa !12
  %index.next892 = add nuw i64 %index885, 16      ; 2 uses
  %i.kp = icmp eq i64 %index.next892, %n.vec883
  br i1 %i.kp, label %middle.block893, label %vector.body884, !llvm.loop !132

middle.block893:                                  ; preds = %vector.body884
  br i1 %cmp.n894, label %.preheader.loopexit.i, label %vec.epilog.iter.check896

vec.epilog.iter.check896:                         ; preds = %middle.block893
  br i1 %min.epilog.iters.check898, label %.lr.ph56.i.preheader, label %vec.epilog.ph899, !prof !17

vec.epilog.ph899:                                 ; preds = %vector.main.loop.iter.check880, %vec.epilog.iter.check896
  %vec.epilog.resume.val900 = phi i64 [ %n.vec883, %vec.epilog.iter.check896 ], [ 0, %vector.main.loop.iter.check880 ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ew
  br label %vec.epilog.vector.body902

vec.epilog.vector.body902:                        ; preds = %vec.epilog.vector.body902, %vec.epilog.ph899
  %index903 = phi i64 [ %vec.epilog.resume.val900, %vec.epilog.ph899 ], [ %index.next907, %vec.epilog.vector.body902 ] ; 4 uses
  %i.kr = add nuw i64 %index903, %i.et            ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.kr
  %wide.load904 = load <4 x float>, ptr %i.ks, align 4, !tbaa !12
  %i.kt = fmul reassoc nsz arcp contract afn <4 x float> %wide.load904, splat (float 2.000000e+00)
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index903
  %wide.load905 = load <4 x float>, ptr %i.ku, align 4, !tbaa !12
  %i.kv = fadd reassoc nsz arcp contract afn <4 x float> %i.kt, %wide.load905
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %index903
  %wide.load906 = load <4 x float>, ptr %i.kw, align 4, !tbaa !12
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.kv, %wide.load906
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.kr
  store <4 x float> %i.kx, ptr %i.ky, align 4, !tbaa !12
  %index.next907 = add nuw i64 %index903, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next907, %n.vec901
  br i1 %i.kz, label %vec.epilog.middle.block908, label %vec.epilog.vector.body902, !llvm.loop !133

vec.epilog.middle.block908:                       ; preds = %vec.epilog.vector.body902
  br i1 %cmp.n909, label %.preheader.loopexit.i, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %iter.check895, %vector.memcheck874, %vec.epilog.iter.check896, %vec.epilog.middle.block908
  %indvars.iv64.i.ph = phi i64 [ %i.et, %iter.check895 ], [ %i.et, %vector.memcheck874 ], [ %i.fw, %vec.epilog.iter.check896 ], [ %i.fy, %vec.epilog.middle.block908 ]
  %indvars.iv62.i.ph = phi i64 [ %i.ew, %iter.check895 ], [ %i.ew, %vector.memcheck874 ], [ %i.fx, %vec.epilog.iter.check896 ], [ %i.fz, %vec.epilog.middle.block908 ]
  br label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 8 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.i
  %i.lb = load float, ptr %i.la, align 4, !tbaa !12
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, 2.000000e+00
  %i.ld = sub nuw nsw i64 %i.et, %indvars.iv.i
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !12
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lc, %i.lf
  %gep304 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.i
  %i.lh = load float, ptr %gep304, align 4, !tbaa !12
  %i.li = fadd reassoc nsz arcp contract afn float %i.lg, %i.lh
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  store float %i.li, ptr %i.lj, align 4, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next.i
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !12
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, 2.000000e+00
  %i.ln = sub nuw nsw i64 %i.et, %indvars.iv.next.i
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ln
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !12
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lm, %i.lp
  %gep304.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.next.i
  %i.lr = load float, ptr %gep304.1, align 4, !tbaa !12
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lq, %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store float %i.ls, ptr %i.lt, align 4, !tbaa !12
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 4 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next.i.1
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !12
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, 2.000000e+00
  %i.lx = sub nuw nsw i64 %i.et, %indvars.iv.next.i.1
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.lx
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !12
  %i.ma = fadd reassoc nsz arcp contract afn float %i.lw, %i.lz
  %gep304.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.next.i.1
  %i.mb = load float, ptr %gep304.2, align 4, !tbaa !12
  %i.mc = fadd reassoc nsz arcp contract afn float %i.ma, %i.mb
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.1
  store float %i.mc, ptr %i.md, align 4, !tbaa !12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 4 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.next.i.2
  %i.mf = load float, ptr %i.me, align 4, !tbaa !12
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, 2.000000e+00
  %i.mh = sub nuw nsw i64 %i.et, %indvars.iv.next.i.2
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.mh
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mg, %i.mj
  %gep304.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %indvars.iv.next.i.2
  %i.ml = load float, ptr %gep304.3, align 4, !tbaa !12
  %i.mm = fadd reassoc nsz arcp contract afn float %i.mk, %i.ml
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.2
  store float %i.mm, ptr %i.mn, align 4, !tbaa !12
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader53.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !134

.preheader.loopexit.i:                            ; preds = %.lr.ph56.i, %vec.epilog.middle.block908, %middle.block893
  %indvars.iv.next65.i.lcssa = phi i64 [ %i.fy, %vec.epilog.middle.block908 ], [ %i.fw, %middle.block893 ], [ %indvars.iv.next65.i, %.lr.ph56.i ]
  %i.mo = trunc nuw nsw i64 %indvars.iv.next65.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.es, %.preheader53.i ], [ %i.mo, %.preheader.loopexit.i ] ; 4 uses
  %i.mp = icmp slt i32 %.1.lcssa.i, %i.cv
  br i1 %i.mp, label %iter.check848, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit

iter.check848:                                    ; preds = %.preheader.i
  %i.mq = sext i32 %.1.lcssa.i to i64             ; 11 uses
  %i.mr = sub nsw i64 %i.cw, %i.mq                ; 7 uses
  %min.iters.check810 = icmp ult i64 %i.mr, 8
  br i1 %min.iters.check810, label %vec.epilog.scalar.ph850.preheader, label %vector.scevcheck783

vector.scevcheck783:                              ; preds = %iter.check848
  %i.ms = xor i64 %i.mq, -1
  %i.mt = add nsw i64 %i.ms, %i.cw                ; 2 uses
  %i.mu = add i32 %i.es, %.1.lcssa.i
  %i.mv = sub i32 %i.di, %i.mu                    ; 2 uses
  %i.mw = trunc i64 %i.mt to i32
  %i.mx = sub i32 %i.mv, %i.mw
  %i.my = icmp sgt i32 %i.mx, %i.mv
  %i.mz = icmp ugt i64 %i.mt, 4294967295
  %i.na = or i1 %i.my, %i.mz
  br i1 %i.na, label %vec.epilog.scalar.ph850.preheader, label %vector.memcheck811

vector.memcheck811:                               ; preds = %vector.scevcheck783
  %i.nb = shl nsw i64 %i.mq, 2                    ; 3 uses
  %gep1081 = getelementptr i8, ptr %invariant.gep1080, i64 %i.nb ; 3 uses
  %i.nc = mul nuw nsw i64 %indvars.iv352, %i.dh   ; 6 uses
  %i.nd = getelementptr i8, ptr %i.ga, i64 %i.nc
  %i.ne = getelementptr i8, ptr %i.nd, i64 %i.nb
  %i.nf = getelementptr i8, ptr %i.gb, i64 %i.nc
  %i.ng = getelementptr i8, ptr %i.gc, i64 %i.nc
  %i.nh = getelementptr i8, ptr %i.ng, i64 %i.nb
  %i.ni = getelementptr i8, ptr %i.gd, i64 %i.nc
  %i.nj = add i32 %.1.lcssa.i, %i.es
  %i.nk = sub i32 %i.db, %i.nj
  %i.nl = sext i32 %i.nk to i64                   ; 2 uses
  %i.nm = add nsw i64 %i.mq, %i.nl
  %i.nn = shl nsw i64 %i.nm, 2
  %i.no = getelementptr i8, ptr %i.gf, i64 %i.nc
  %i.np = getelementptr i8, ptr %i.no, i64 %i.nn
  %i.nq = shl nsw i64 %i.nl, 2
  %i.nr = getelementptr i8, ptr %i.gh, i64 %i.nc
  %i.ns = getelementptr i8, ptr %i.nr, i64 %i.nq
  %bound0812 = icmp ult ptr %gep1081, %i.nf
  %bound1813 = icmp ult ptr %i.ne, %scevgep808
  %found.conflict814 = and i1 %bound0812, %bound1813
  %bound0815 = icmp ult ptr %gep1081, %i.ni
  %bound1816 = icmp ult ptr %i.nh, %scevgep808
  %found.conflict817 = and i1 %bound0815, %bound1816
  %conflict.rdx818 = or i1 %found.conflict814, %found.conflict817
  %bound0819 = icmp ult ptr %gep1081, %i.ns
  %bound1820 = icmp ult ptr %i.np, %scevgep808
  %found.conflict821 = and i1 %bound0819, %bound1820
  %conflict.rdx822 = or i1 %conflict.rdx818, %found.conflict821
  br i1 %conflict.rdx822, label %vec.epilog.scalar.ph850.preheader, label %vector.main.loop.iter.check823

vector.main.loop.iter.check823:                   ; preds = %vector.memcheck811
  %min.iters.check824 = icmp ult i64 %i.mr, 32
  br i1 %min.iters.check824, label %vec.epilog.ph852, label %vector.ph825

vector.ph825:                                     ; preds = %vector.main.loop.iter.check823
  %i.nt = and i64 %i.mr, 24
  %n.vec826 = and i64 %i.mr, -32                  ; 4 uses
  %i.nu = add nsw i64 %n.vec826, %i.mq
  br label %vector.body827

vector.body827:                                   ; preds = %vector.ph825, %vector.body827
  %index828 = phi i64 [ 0, %vector.ph825 ], [ %index.next845, %vector.body827 ] ; 2 uses
  %i.nv = add nuw i64 %index828, %i.mq            ; 4 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.nv ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 96
  %wide.load829 = load <8 x float>, ptr %i.nw, align 4, !tbaa !12, !alias.scope !197
  %wide.load830 = load <8 x float>, ptr %i.nx, align 4, !tbaa !12, !alias.scope !197
  %wide.load831 = load <8 x float>, ptr %i.ny, align 4, !tbaa !12, !alias.scope !197
  %wide.load832 = load <8 x float>, ptr %i.nz, align 4, !tbaa !12, !alias.scope !197
  %i.oa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load829, splat (float 2.000000e+00)
  %i.ob = fmul reassoc nsz arcp contract afn <8 x float> %wide.load830, splat (float 2.000000e+00)
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load831, splat (float 2.000000e+00)
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %wide.load832, splat (float 2.000000e+00)
  %i.oe = sub nsw i64 %i.nv, %i.et
  %i.of = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.oe ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 96
  %wide.load833 = load <8 x float>, ptr %i.of, align 4, !tbaa !12, !alias.scope !198
  %wide.load834 = load <8 x float>, ptr %i.og, align 4, !tbaa !12, !alias.scope !198
  %wide.load835 = load <8 x float>, ptr %i.oh, align 4, !tbaa !12, !alias.scope !198
  %wide.load836 = load <8 x float>, ptr %i.oi, align 4, !tbaa !12, !alias.scope !198
  %i.oj = fadd reassoc nsz arcp contract afn <8 x float> %i.oa, %wide.load833
  %i.ok = fadd reassoc nsz arcp contract afn <8 x float> %i.ob, %wide.load834
  %i.ol = fadd reassoc nsz arcp contract afn <8 x float> %i.oc, %wide.load835
  %i.om = fadd reassoc nsz arcp contract afn <8 x float> %i.od, %wide.load836
  %i.on = trunc nsw i64 %i.nv to i32
  %i.oo = add i32 %i.es, %i.on
  %i.op = sub i32 %i.db, %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.oq ; 4 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -28
  %i.ot = getelementptr inbounds i8, ptr %i.or, i64 -60
  %i.ou = getelementptr inbounds i8, ptr %i.or, i64 -92
  %i.ov = getelementptr inbounds i8, ptr %i.or, i64 -124
  %wide.load837 = load <8 x float>, ptr %i.os, align 4, !tbaa !12, !alias.scope !199
  %wide.load838 = load <8 x float>, ptr %i.ot, align 4, !tbaa !12, !alias.scope !199
  %wide.load839 = load <8 x float>, ptr %i.ou, align 4, !tbaa !12, !alias.scope !199
  %wide.load840 = load <8 x float>, ptr %i.ov, align 4, !tbaa !12, !alias.scope !199
  %reverse841 = shufflevector <8 x float> %wide.load837, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse842 = shufflevector <8 x float> %wide.load838, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse843 = shufflevector <8 x float> %wide.load839, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse844 = shufflevector <8 x float> %wide.load840, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.oj, %reverse841
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %i.ok, %reverse842
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.ol, %reverse843
  %i.oz = fadd reassoc nsz arcp contract afn <8 x float> %i.om, %reverse844
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.nv ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  store <8 x float> %i.ow, ptr %i.pa, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  store <8 x float> %i.ox, ptr %i.pb, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  store <8 x float> %i.oy, ptr %i.pc, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  store <8 x float> %i.oz, ptr %i.pd, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  %index.next845 = add nuw i64 %index828, 32      ; 2 uses
  %i.pe = icmp eq i64 %index.next845, %n.vec826
  br i1 %i.pe, label %middle.block846, label %vector.body827, !llvm.loop !140

middle.block846:                                  ; preds = %vector.body827
  %cmp.n847 = icmp eq i64 %i.mr, %n.vec826
  br i1 %cmp.n847, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.iter.check849

vec.epilog.iter.check849:                         ; preds = %middle.block846
  %min.epilog.iters.check851 = icmp eq i64 %i.nt, 0
  br i1 %min.epilog.iters.check851, label %vec.epilog.scalar.ph850.preheader, label %vec.epilog.ph852, !prof !16

vec.epilog.ph852:                                 ; preds = %vector.main.loop.iter.check823, %vec.epilog.iter.check849
  %vec.epilog.resume.val853 = phi i64 [ %n.vec826, %vec.epilog.iter.check849 ], [ 0, %vector.main.loop.iter.check823 ]
  %n.vec854 = and i64 %i.mr, -8                   ; 3 uses
  %i.pf = add nsw i64 %n.vec854, %i.mq
  br label %vec.epilog.vector.body855

vec.epilog.vector.body855:                        ; preds = %vec.epilog.vector.body855, %vec.epilog.ph852
  %index856 = phi i64 [ %vec.epilog.resume.val853, %vec.epilog.ph852 ], [ %index.next861, %vec.epilog.vector.body855 ] ; 2 uses
  %i.pg = add nuw i64 %index856, %i.mq            ; 4 uses
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.pg
  %wide.load857 = load <8 x float>, ptr %i.ph, align 4, !tbaa !12, !alias.scope !197
  %i.pi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load857, splat (float 2.000000e+00)
  %i.pj = sub nsw i64 %i.pg, %i.et
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.pj
  %wide.load858 = load <8 x float>, ptr %i.pk, align 4, !tbaa !12, !alias.scope !198
  %i.pl = fadd reassoc nsz arcp contract afn <8 x float> %i.pi, %wide.load858
  %i.pm = trunc nsw i64 %i.pg to i32
  %i.pn = add i32 %i.es, %i.pm
  %i.po = sub i32 %i.db, %i.pn
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.pp
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 -28
  %wide.load859 = load <8 x float>, ptr %i.pr, align 4, !tbaa !12, !alias.scope !199
  %reverse860 = shufflevector <8 x float> %wide.load859, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ps = fadd reassoc nsz arcp contract afn <8 x float> %i.pl, %reverse860
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.pg
  store <8 x float> %i.ps, ptr %i.pt, align 4, !tbaa !12, !alias.scope !200, !noalias !201
  %index.next861 = add nuw i64 %index856, 8       ; 2 uses
  %i.pu = icmp eq i64 %index.next861, %n.vec854
  br i1 %i.pu, label %vec.epilog.middle.block862, label %vec.epilog.vector.body855, !llvm.loop !141

vec.epilog.middle.block862:                       ; preds = %vec.epilog.vector.body855
  %cmp.n863 = icmp eq i64 %i.mr, %n.vec854
  br i1 %cmp.n863, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph850.preheader

vec.epilog.scalar.ph850.preheader:                ; preds = %iter.check848, %vector.scevcheck783, %vector.memcheck811, %vec.epilog.iter.check849, %vec.epilog.middle.block862
  %indvars.iv69.i.ph = phi i64 [ %i.mq, %iter.check848 ], [ %i.mq, %vector.scevcheck783 ], [ %i.mq, %vector.memcheck811 ], [ %i.nu, %vec.epilog.iter.check849 ], [ %i.pf, %vec.epilog.middle.block862 ] ; 8 uses
  %i.pv = sub i64 %i.cz, %indvars.iv69.i.ph
  %xtraiter1051 = and i64 %i.pv, 1
  %lcmp.mod1052.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1052.not, label %vec.epilog.scalar.ph850.prol.loopexit, label %vec.epilog.scalar.ph850.prol

vec.epilog.scalar.ph850.prol:                     ; preds = %vec.epilog.scalar.ph850.preheader
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv69.i.ph
  %i.px = load float, ptr %i.pw, align 4, !tbaa !12
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, 2.000000e+00
  %i.pz = sub nsw i64 %indvars.iv69.i.ph, %i.et
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.pz
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !12
  %i.qc = fadd reassoc nsz arcp contract afn float %i.py, %i.qb
  %i.qd = trunc nsw i64 %indvars.iv69.i.ph to i32
  %i.qe = add i32 %i.es, %i.qd
  %i.qf = sub i32 %i.db, %i.qe
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.qg
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !12
  %i.qj = fadd reassoc nsz arcp contract afn float %i.qc, %i.qi
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i.ph
  store float %i.qj, ptr %i.qk, align 4, !tbaa !12
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.ph, 1
  br label %vec.epilog.scalar.ph850.prol.loopexit

vec.epilog.scalar.ph850.prol.loopexit:            ; preds = %vec.epilog.scalar.ph850.prol, %vec.epilog.scalar.ph850.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph850.preheader ], [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph850.prol ]
  %i.ql = icmp eq i64 %indvars.iv69.i.ph, %i.dp
  br i1 %i.ql, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %vec.epilog.scalar.ph850

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph56.i ], [ %indvars.iv64.i.ph, %.lr.ph56.i.preheader ] ; 4 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph56.i ], [ %indvars.iv62.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv64.i
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !12
  %i.qo = fmul reassoc nsz arcp contract afn float %i.qn, 2.000000e+00
  %i.qp = sub nuw nsw i64 %indvars.iv64.i, %i.et
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.qp
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !12
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qo, %i.qr
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv62.i
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !12
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qs, %i.qu
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i
  store float %i.qv, ptr %i.qw, align 4, !tbaa !12
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.qx = icmp slt i64 %indvars.iv.next65.i, %invariant.op.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  br i1 %i.qx, label %.lr.ph56.i, label %.preheader.loopexit.i, !llvm.loop !142

vec.epilog.scalar.ph850:                          ; preds = %vec.epilog.scalar.ph850.prol.loopexit, %vec.epilog.scalar.ph850
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %vec.epilog.scalar.ph850 ], [ %indvars.iv69.i.unr, %vec.epilog.scalar.ph850.prol.loopexit ] ; 6 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv69.i
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !12
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qz, 2.000000e+00
  %i.rb = sub nsw i64 %indvars.iv69.i, %i.et
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !12
  %i.re = fadd reassoc nsz arcp contract afn float %i.ra, %i.rd
  %i.rf = trunc nsw i64 %indvars.iv69.i to i32
  %i.rg = add i32 %i.es, %i.rf
  %i.rh = sub i32 %i.db, %i.rg
  %i.ri = sext i32 %i.rh to i64
end_hunk_1
begin_hunk_2_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %index.next746 = add nuw i64 %index741, 8       ; 2 uses
  %i.vu = icmp eq i64 %index.next746, %n.vec739
  br i1 %i.vu, label %.preheader53.i256, label %vec.epilog.vector.body740, !llvm.loop !155

.preheader53.i256.loopexit.unr-lcssa:             ; preds = %.lr.ph.i274
  br i1 %lcmp.mod1057.not, label %.preheader53.i256, label %.lr.ph.i274.epil.preheader

.lr.ph.i274.epil.preheader:                       ; preds = %.preheader53.i256.loopexit.unr-lcssa, %.lr.ph.i274.preheader
  %indvars.iv.i275.epil.init = phi i64 [ 0, %.lr.ph.i274.preheader ], [ %indvars.iv.next.i276.1, %.preheader53.i256.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod1058)
  %i.vv = mul nuw nsw i64 %indvars.iv.i275.epil.init, %i.cw
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.vv
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !12
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vx, 2.000000e+00
  %i.vz = sub nuw nsw i64 %i.gl, %indvars.iv.i275.epil.init
  %i.wa = mul nuw nsw i64 %i.vz, %i.cw
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.wa
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !12
  %i.wd = fadd reassoc nsz arcp contract afn float %i.vy, %i.wc
  %i.we = add nuw nsw i64 %indvars.iv.i275.epil.init, %i.gl
  %i.wf = mul nuw nsw i64 %i.we, %i.cw
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !12
  %i.wi = fadd reassoc nsz arcp contract afn float %i.wd, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i275.epil.init
  store float %i.wi, ptr %i.wj, align 4, !tbaa !12
  br label %.preheader53.i256

.preheader53.i256:                                ; preds = %vector.body712, %vec.epilog.vector.body740, %.lr.ph.i274.epil.preheader, %.preheader53.i256.loopexit.unr-lcssa
  br i1 %i.gn, label %iter.check637, label %.preheader.i257

iter.check637:                                    ; preds = %.preheader53.i256
  br i1 %or.cond1039, label %vector.memcheck616, label %.lr.ph56.i267.preheader

vector.memcheck616:                               ; preds = %iter.check637
  %i.wk = mul nsw i64 %indvars.iv362, -4          ; 3 uses
  %.reass1089 = add i64 %i.wk, %invariant.op1088
  %diff.check617 = icmp ult i64 %.reass1089, 63
  %.reass1091 = add i64 %i.wk, %invariant.op1090
  %diff.check618 = icmp ult i64 %.reass1091, 63
  %conflict.rdx619 = or i1 %diff.check617, %diff.check618
  %.reass1093 = add i64 %i.wk, %invariant.op1092
  %diff.check620 = icmp ult i64 %.reass1093, 63
  %conflict.rdx621 = or i1 %conflict.rdx619, %diff.check620
  br i1 %conflict.rdx621, label %.lr.ph56.i267.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck616
  br i1 %min.iters.check623, label %vec.epilog.ph641, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.go
  br label %vector.body626

vector.body626:                                   ; preds = %vector.ph624, %vector.body626
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next634, %vector.body626 ] ; 4 uses
  %i.wm = add nuw i64 %index627, %i.gl            ; 2 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.wm ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %wide.load628 = load <8 x float>, ptr %i.wn, align 4, !tbaa !12
  %wide.load629 = load <8 x float>, ptr %i.wo, align 4, !tbaa !12
  %i.wp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load628, splat (float 2.000000e+00)
  %i.wq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load629, splat (float 2.000000e+00)
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index627 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 32
  %wide.load630 = load <8 x float>, ptr %i.wr, align 4, !tbaa !12
  %wide.load631 = load <8 x float>, ptr %i.ws, align 4, !tbaa !12
  %i.wt = fadd reassoc nsz arcp contract afn <8 x float> %i.wp, %wide.load630
  %i.wu = fadd reassoc nsz arcp contract afn <8 x float> %i.wq, %wide.load631
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %index627 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 32
  %wide.load632 = load <8 x float>, ptr %i.wv, align 4, !tbaa !12
  %wide.load633 = load <8 x float>, ptr %i.ww, align 4, !tbaa !12
  %i.wx = fadd reassoc nsz arcp contract afn <8 x float> %i.wt, %wide.load632
  %i.wy = fadd reassoc nsz arcp contract afn <8 x float> %i.wu, %wide.load633
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.wm ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  store <8 x float> %i.wx, ptr %i.wz, align 4, !tbaa !12
  store <8 x float> %i.wy, ptr %i.xa, align 4, !tbaa !12
  %index.next634 = add nuw i64 %index627, 16      ; 2 uses
  %i.xb = icmp eq i64 %index.next634, %n.vec625
  br i1 %i.xb, label %middle.block635, label %vector.body626, !llvm.loop !156

middle.block635:                                  ; preds = %vector.body626
  br i1 %cmp.n636, label %.preheader.loopexit.i272, label %vec.epilog.iter.check638

vec.epilog.iter.check638:                         ; preds = %middle.block635
  br i1 %min.epilog.iters.check640, label %.lr.ph56.i267.preheader, label %vec.epilog.ph641, !prof !17

vec.epilog.ph641:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check638
  %vec.epilog.resume.val642 = phi i64 [ %n.vec625, %vec.epilog.iter.check638 ], [ 0, %vector.main.loop.iter.check622 ]
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.go
  br label %vec.epilog.vector.body644

vec.epilog.vector.body644:                        ; preds = %vec.epilog.vector.body644, %vec.epilog.ph641
  %index645 = phi i64 [ %vec.epilog.resume.val642, %vec.epilog.ph641 ], [ %index.next649, %vec.epilog.vector.body644 ] ; 4 uses
  %i.xd = add nuw i64 %index645, %i.gl            ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xd
  %wide.load646 = load <4 x float>, ptr %i.xe, align 4, !tbaa !12
  %i.xf = fmul reassoc nsz arcp contract afn <4 x float> %wide.load646, splat (float 2.000000e+00)
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index645
  %wide.load647 = load <4 x float>, ptr %i.xg, align 4, !tbaa !12
  %i.xh = fadd reassoc nsz arcp contract afn <4 x float> %i.xf, %wide.load647
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %index645
  %wide.load648 = load <4 x float>, ptr %i.xi, align 4, !tbaa !12
  %i.xj = fadd reassoc nsz arcp contract afn <4 x float> %i.xh, %wide.load648
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.xd
  store <4 x float> %i.xj, ptr %i.xk, align 4, !tbaa !12
  %index.next649 = add nuw i64 %index645, 4       ; 2 uses
  %i.xl = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.xl, label %vec.epilog.middle.block650, label %vec.epilog.vector.body644, !llvm.loop !157

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body644
  br i1 %cmp.n651, label %.preheader.loopexit.i272, label %.lr.ph56.i267.preheader

.lr.ph56.i267.preheader:                          ; preds = %iter.check637, %vector.memcheck616, %vec.epilog.iter.check638, %vec.epilog.middle.block650
  %indvars.iv64.i268.ph = phi i64 [ %i.gl, %iter.check637 ], [ %i.gl, %vector.memcheck616 ], [ %i.hl, %vec.epilog.iter.check638 ], [ %i.hn, %vec.epilog.middle.block650 ]
  %indvars.iv62.i269.ph = phi i64 [ %i.go, %iter.check637 ], [ %i.go, %vector.memcheck616 ], [ %i.hm, %vec.epilog.iter.check638 ], [ %i.ho, %vec.epilog.middle.block650 ]
  br label %.lr.ph56.i267

.lr.ph.i274:                                      ; preds = %.lr.ph.i274.preheader, %.lr.ph.i274
  %indvars.iv.i275 = phi i64 [ %indvars.iv.next.i276.1, %.lr.ph.i274 ], [ 0, %.lr.ph.i274.preheader ] ; 6 uses
  %niter1060 = phi i64 [ %niter1060.next.1, %.lr.ph.i274 ], [ 0, %.lr.ph.i274.preheader ]
  %i.xm = mul nuw nsw i64 %indvars.iv.i275, %i.cw
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xm
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !12
  %i.xp = fmul reassoc nsz arcp contract afn float %i.xo, 2.000000e+00
  %i.xq = sub nuw nsw i64 %i.gl, %indvars.iv.i275
  %i.xr = mul nuw nsw i64 %i.xq, %i.cw
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xr
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !12
  %i.xu = fadd reassoc nsz arcp contract afn float %i.xp, %i.xt
  %i.xv = add nuw nsw i64 %indvars.iv.i275, %i.gl
  %i.xw = mul nuw nsw i64 %i.xv, %i.cw
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.xw
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !12
  %i.xz = fadd reassoc nsz arcp contract afn float %i.xu, %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i275
  store float %i.xz, ptr %i.ya, align 4, !tbaa !12
  %indvars.iv.next.i276 = or disjoint i64 %indvars.iv.i275, 1 ; 4 uses
  %i.yb = mul nuw nsw i64 %indvars.iv.next.i276, %i.cw
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.yb
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !12
  %i.ye = fmul reassoc nsz arcp contract afn float %i.yd, 2.000000e+00
  %i.yf = sub nuw nsw i64 %i.gl, %indvars.iv.next.i276
  %i.yg = mul nuw nsw i64 %i.yf, %i.cw
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.yg
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !12
  %i.yj = fadd reassoc nsz arcp contract afn float %i.ye, %i.yi
  %i.yk = add nuw nsw i64 %indvars.iv.next.i276, %i.gl
  %i.yl = mul nuw nsw i64 %i.yk, %i.cw
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.yl
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !12
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yj, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i276
  store float %i.yo, ptr %i.yp, align 4, !tbaa !12
  %indvars.iv.next.i276.1 = add nuw nsw i64 %indvars.iv.i275, 2 ; 2 uses
  %niter1060.next.1 = add i64 %niter1060, 2       ; 2 uses
  %niter1060.ncmp.1 = icmp eq i64 %niter1060.next.1, %unroll_iter1059
  br i1 %niter1060.ncmp.1, label %.preheader53.i256.loopexit.unr-lcssa, label %.lr.ph.i274, !llvm.loop !158

.preheader.loopexit.i272:                         ; preds = %.lr.ph56.i267, %vec.epilog.middle.block650, %middle.block635
  %indvars.iv.next65.i270.lcssa = phi i64 [ %i.hn, %vec.epilog.middle.block650 ], [ %i.hl, %middle.block635 ], [ %indvars.iv.next65.i270, %.lr.ph56.i267 ]
  %i.yq = trunc nuw nsw i64 %indvars.iv.next65.i270.lcssa to i32
  br label %.preheader.i257

.preheader.i257:                                  ; preds = %.preheader.loopexit.i272, %.preheader53.i256
  %.1.lcssa.i258 = phi i32 [ %i.gk, %.preheader53.i256 ], [ %i.yq, %.preheader.loopexit.i272 ] ; 4 uses
  %i.yr = icmp slt i32 %.1.lcssa.i258, %i.ct
  br i1 %i.yr, label %iter.check589, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278

iter.check589:                                    ; preds = %.preheader.i257
  %i.ys = sext i32 %.1.lcssa.i258 to i64          ; 11 uses
  %i.yt = sub nsw i64 %wide.trip.count355, %i.ys  ; 7 uses
  %min.iters.check552 = icmp ult i64 %i.yt, 8
  br i1 %min.iters.check552, label %vec.epilog.scalar.ph591.preheader, label %vector.scevcheck524

vector.scevcheck524:                              ; preds = %iter.check589
  %i.yu = xor i64 %i.ys, -1
  %i.yv = add nsw i64 %i.yu, %wide.trip.count355  ; 2 uses
  %i.yw = add i32 %i.gk, %.1.lcssa.i258
  %i.yx = sub i32 %i.dd, %i.yw                    ; 2 uses
  %i.yy = trunc i64 %i.yv to i32
  %i.yz = sub i32 %i.yx, %i.yy
  %i.za = icmp sgt i32 %i.yz, %i.yx
  %i.zb = icmp ugt i64 %i.yv, 4294967295
  %i.zc = or i1 %i.za, %i.zb
  %i.zd = or i1 %ident.check525, %i.zc
  br i1 %i.zd, label %vec.epilog.scalar.ph591.preheader, label %vector.memcheck553

vector.memcheck553:                               ; preds = %vector.scevcheck524
  %i.ze = shl nsw i64 %i.ys, 2                    ; 3 uses
  %gep1095 = getelementptr i8, ptr %invariant.gep1094, i64 %i.ze ; 3 uses
  %i.zf = shl nuw nsw i64 %indvars.iv362, 2       ; 6 uses
  %i.zg = getelementptr i8, ptr %i.hp, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 %i.ze
  %i.zi = getelementptr i8, ptr %i.hq, i64 %i.zf
  %i.zj = getelementptr i8, ptr %i.hr, i64 %i.zf
  %i.zk = getelementptr i8, ptr %i.zj, i64 %i.ze
  %i.zl = getelementptr i8, ptr %i.hs, i64 %i.zf
  %i.zm = add i32 %.1.lcssa.i258, %i.gk
  %i.zn = sub i32 %invariant.op, %i.zm
  %i.zo = sext i32 %i.zn to i64                   ; 2 uses
  %i.zp = add nsw i64 %i.ys, %i.zo
  %i.zq = shl nsw i64 %i.zp, 2
  %i.zr = getelementptr i8, ptr %i.hu, i64 %i.zf
  %i.zs = getelementptr i8, ptr %i.zr, i64 %i.zq
  %i.zt = shl nsw i64 %i.zo, 2
  %i.zu = getelementptr i8, ptr %i.hw, i64 %i.zf
  %i.zv = getelementptr i8, ptr %i.zu, i64 %i.zt
  %bound0554 = icmp ult ptr %gep1095, %i.zi
  %bound1555 = icmp ult ptr %i.zh, %scevgep550
  %found.conflict556 = and i1 %bound0554, %bound1555
  %bound0557 = icmp ult ptr %gep1095, %i.zl
  %bound1558 = icmp ult ptr %i.zk, %scevgep550
  %found.conflict559 = and i1 %bound0557, %bound1558
  %conflict.rdx560 = or i1 %found.conflict556, %found.conflict559
  %bound0561 = icmp ult ptr %gep1095, %i.zv
  %bound1562 = icmp ult ptr %i.zs, %scevgep550
  %found.conflict563 = and i1 %bound0561, %bound1562
  %conflict.rdx564 = or i1 %conflict.rdx560, %found.conflict563
  br i1 %conflict.rdx564, label %vec.epilog.scalar.ph591.preheader, label %vector.main.loop.iter.check565

vector.main.loop.iter.check565:                   ; preds = %vector.memcheck553
  %min.iters.check566 = icmp ult i64 %i.yt, 32
  br i1 %min.iters.check566, label %vec.epilog.ph593, label %vector.ph567

vector.ph567:                                     ; preds = %vector.main.loop.iter.check565
  %i.zw = and i64 %i.yt, 24
  %n.vec568 = and i64 %i.yt, -32                  ; 4 uses
  %i.zx = add nsw i64 %n.vec568, %i.ys
  br label %vector.body569

vector.body569:                                   ; preds = %vector.ph567, %vector.body569
  %index570 = phi i64 [ 0, %vector.ph567 ], [ %index.next586, %vector.body569 ] ; 2 uses
  %i.zy = add nuw i64 %index570, %i.ys            ; 4 uses
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.zy ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 96
  %wide.load571 = load <8 x float>, ptr %i.zz, align 4, !tbaa !12, !alias.scope !207
  %wide.load572 = load <8 x float>, ptr %i.aaa, align 4, !tbaa !12, !alias.scope !207
  %wide.load573 = load <8 x float>, ptr %i.aab, align 4, !tbaa !12, !alias.scope !207
  %wide.load574 = load <8 x float>, ptr %i.aac, align 4, !tbaa !12, !alias.scope !207
  %i.aad = fmul reassoc nsz arcp contract afn <8 x float> %wide.load571, splat (float 2.000000e+00)
  %i.aae = fmul reassoc nsz arcp contract afn <8 x float> %wide.load572, splat (float 2.000000e+00)
  %i.aaf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load573, splat (float 2.000000e+00)
  %i.aag = fmul reassoc nsz arcp contract afn <8 x float> %wide.load574, splat (float 2.000000e+00)
  %i.aah = sub nsw i64 %i.zy, %i.gl
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aah ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 32
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 96
  %wide.load575 = load <8 x float>, ptr %i.aai, align 4, !tbaa !12, !alias.scope !208
  %wide.load576 = load <8 x float>, ptr %i.aaj, align 4, !tbaa !12, !alias.scope !208
  %wide.load577 = load <8 x float>, ptr %i.aak, align 4, !tbaa !12, !alias.scope !208
  %wide.load578 = load <8 x float>, ptr %i.aal, align 4, !tbaa !12, !alias.scope !208
  %i.aam = fadd reassoc nsz arcp contract afn <8 x float> %i.aad, %wide.load575
  %i.aan = fadd reassoc nsz arcp contract afn <8 x float> %i.aae, %wide.load576
  %i.aao = fadd reassoc nsz arcp contract afn <8 x float> %i.aaf, %wide.load577
  %i.aap = fadd reassoc nsz arcp contract afn <8 x float> %i.aag, %wide.load578
  %i.aaq = trunc nsw i64 %i.zy to i32
  %i.aar = add i32 %i.gk, %i.aaq
  %i.aas = sub i32 %invariant.op, %i.aar
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.aat ; 4 uses
  %i.aav = getelementptr inbounds i8, ptr %i.aau, i64 -28
  %i.aaw = getelementptr inbounds i8, ptr %i.aau, i64 -60
  %i.aax = getelementptr inbounds i8, ptr %i.aau, i64 -92
  %i.aay = getelementptr inbounds i8, ptr %i.aau, i64 -124
  %wide.load579 = load <8 x float>, ptr %i.aav, align 4, !tbaa !12, !alias.scope !209
  %wide.load580 = load <8 x float>, ptr %i.aaw, align 4, !tbaa !12, !alias.scope !209
  %wide.load581 = load <8 x float>, ptr %i.aax, align 4, !tbaa !12, !alias.scope !209
  %wide.load582 = load <8 x float>, ptr %i.aay, align 4, !tbaa !12, !alias.scope !209
  %reverse = shufflevector <8 x float> %wide.load579, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse583 = shufflevector <8 x float> %wide.load580, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse584 = shufflevector <8 x float> %wide.load581, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse585 = shufflevector <8 x float> %wide.load582, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aaz = fadd reassoc nsz arcp contract afn <8 x float> %i.aam, %reverse
  %i.aba = fadd reassoc nsz arcp contract afn <8 x float> %i.aan, %reverse583
  %i.abb = fadd reassoc nsz arcp contract afn <8 x float> %i.aao, %reverse584
  %i.abc = fadd reassoc nsz arcp contract afn <8 x float> %i.aap, %reverse585
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.zy ; 4 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 64
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 96
  store <8 x float> %i.aaz, ptr %i.abd, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  store <8 x float> %i.aba, ptr %i.abe, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  store <8 x float> %i.abb, ptr %i.abf, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  store <8 x float> %i.abc, ptr %i.abg, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  %index.next586 = add nuw i64 %index570, 32      ; 2 uses
  %i.abh = icmp eq i64 %index.next586, %n.vec568
  br i1 %i.abh, label %middle.block587, label %vector.body569, !llvm.loop !164

middle.block587:                                  ; preds = %vector.body569
  %cmp.n588 = icmp eq i64 %i.yt, %n.vec568
  br i1 %cmp.n588, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.iter.check590

vec.epilog.iter.check590:                         ; preds = %middle.block587
  %min.epilog.iters.check592 = icmp eq i64 %i.zw, 0
  br i1 %min.epilog.iters.check592, label %vec.epilog.scalar.ph591.preheader, label %vec.epilog.ph593, !prof !16

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check565, %vec.epilog.iter.check590
  %vec.epilog.resume.val594 = phi i64 [ %n.vec568, %vec.epilog.iter.check590 ], [ 0, %vector.main.loop.iter.check565 ]
  %n.vec595 = and i64 %i.yt, -8                   ; 3 uses
  %i.abi = add nsw i64 %n.vec595, %i.ys
  br label %vec.epilog.vector.body596

vec.epilog.vector.body596:                        ; preds = %vec.epilog.vector.body596, %vec.epilog.ph593
  %index597 = phi i64 [ %vec.epilog.resume.val594, %vec.epilog.ph593 ], [ %index.next602, %vec.epilog.vector.body596 ] ; 2 uses
  %i.abj = add nuw i64 %index597, %i.ys           ; 4 uses
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abj
  %wide.load598 = load <8 x float>, ptr %i.abk, align 4, !tbaa !12, !alias.scope !207
  %i.abl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load598, splat (float 2.000000e+00)
  %i.abm = sub nsw i64 %i.abj, %i.gl
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abm
  %wide.load599 = load <8 x float>, ptr %i.abn, align 4, !tbaa !12, !alias.scope !208
  %i.abo = fadd reassoc nsz arcp contract afn <8 x float> %i.abl, %wide.load599
  %i.abp = trunc nsw i64 %i.abj to i32
  %i.abq = add i32 %i.gk, %i.abp
  %i.abr = sub i32 %invariant.op, %i.abq
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abs
  %i.abu = getelementptr inbounds i8, ptr %i.abt, i64 -28
  %wide.load600 = load <8 x float>, ptr %i.abu, align 4, !tbaa !12, !alias.scope !209
  %reverse601 = shufflevector <8 x float> %wide.load600, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.abv = fadd reassoc nsz arcp contract afn <8 x float> %i.abo, %reverse601
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.abj
  store <8 x float> %i.abv, ptr %i.abw, align 4, !tbaa !12, !alias.scope !210, !noalias !211
  %index.next602 = add nuw i64 %index597, 8       ; 2 uses
  %i.abx = icmp eq i64 %index.next602, %n.vec595
  br i1 %i.abx, label %vec.epilog.middle.block603, label %vec.epilog.vector.body596, !llvm.loop !165

vec.epilog.middle.block603:                       ; preds = %vec.epilog.vector.body596
  %cmp.n604 = icmp eq i64 %i.yt, %n.vec595
  br i1 %cmp.n604, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.scalar.ph591.preheader

vec.epilog.scalar.ph591.preheader:                ; preds = %iter.check589, %vector.scevcheck524, %vector.memcheck553, %vec.epilog.iter.check590, %vec.epilog.middle.block603
  %indvars.iv69.i262.ph = phi i64 [ %i.ys, %iter.check589 ], [ %i.ys, %vector.scevcheck524 ], [ %i.ys, %vector.memcheck553 ], [ %i.zx, %vec.epilog.iter.check590 ], [ %i.abi, %vec.epilog.middle.block603 ] ; 8 uses
  %i.aby = sub i64 %wide.trip.count355, %indvars.iv69.i262.ph
  %xtraiter1061 = and i64 %i.aby, 1
  %lcmp.mod1062.not = icmp eq i64 %xtraiter1061, 0
  br i1 %lcmp.mod1062.not, label %vec.epilog.scalar.ph591.prol.loopexit, label %vec.epilog.scalar.ph591.prol

vec.epilog.scalar.ph591.prol:                     ; preds = %vec.epilog.scalar.ph591.preheader
  %i.abz = mul nsw i64 %indvars.iv69.i262.ph, %i.cw
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.abz
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !12
  %i.acc = fmul reassoc nsz arcp contract afn float %i.acb, 2.000000e+00
  %i.acd = sub nsw i64 %indvars.iv69.i262.ph, %i.gl
  %i.ace = mul nsw i64 %i.acd, %i.cw
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.ace
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !12
  %i.ach = fadd reassoc nsz arcp contract afn float %i.acc, %i.acg
  %i.aci = trunc nsw i64 %indvars.iv69.i262.ph to i32
  %i.acj = add i32 %i.gk, %i.aci
  %i.ack = sub i32 %invariant.op, %i.acj
  %i.acl = mul nsw i32 %i.ack, %i.cv
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.acm
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !12
  %i.acp = fadd reassoc nsz arcp contract afn float %i.ach, %i.aco
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv69.i262.ph
  store float %i.acp, ptr %i.acq, align 4, !tbaa !12
  %indvars.iv.next70.i263.prol = add nuw nsw i64 %indvars.iv69.i262.ph, 1
  br label %vec.epilog.scalar.ph591.prol.loopexit

vec.epilog.scalar.ph591.prol.loopexit:            ; preds = %vec.epilog.scalar.ph591.prol, %vec.epilog.scalar.ph591.preheader
  %indvars.iv69.i262.unr = phi i64 [ %indvars.iv69.i262.ph, %vec.epilog.scalar.ph591.preheader ], [ %indvars.iv.next70.i263.prol, %vec.epilog.scalar.ph591.prol ]
  %i.acr = icmp eq i64 %indvars.iv69.i262.ph, %i.dr
  br i1 %i.acr, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %vec.epilog.scalar.ph591

.lr.ph56.i267:                                    ; preds = %.lr.ph56.i267.preheader, %.lr.ph56.i267
  %indvars.iv64.i268 = phi i64 [ %indvars.iv.next65.i270, %.lr.ph56.i267 ], [ %indvars.iv64.i268.ph, %.lr.ph56.i267.preheader ] ; 4 uses
  %indvars.iv62.i269 = phi i64 [ %indvars.iv.next63.i271, %.lr.ph56.i267 ], [ %indvars.iv62.i269.ph, %.lr.ph56.i267.preheader ] ; 2 uses
  %i.acs = mul nuw nsw i64 %indvars.iv64.i268, %i.cw
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.acs
  %i.acu = load float, ptr %i.act, align 4, !tbaa !12
  %i.acv = fmul reassoc nsz arcp contract afn float %i.acu, 2.000000e+00
  %i.acw = sub nuw nsw i64 %indvars.iv64.i268, %i.gl
  %i.acx = mul nuw nsw i64 %i.acw, %i.cw
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.acx
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !12
  %i.ada = fadd reassoc nsz arcp contract afn float %i.acv, %i.acz
  %i.adb = mul nuw nsw i64 %indvars.iv62.i269, %i.cw
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.adb
  %i.add = load float, ptr %i.adc, align 4, !tbaa !12
  %i.ade = fadd reassoc nsz arcp contract afn float %i.ada, %i.add
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv64.i268
  store float %i.ade, ptr %i.adf, align 4, !tbaa !12
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i268, 1 ; 3 uses
  %i.adg = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.adg, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !166

vec.epilog.scalar.ph591:                          ; preds = %vec.epilog.scalar.ph591.prol.loopexit, %vec.epilog.scalar.ph591
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263.1, %vec.epilog.scalar.ph591 ], [ %indvars.iv69.i262.unr, %vec.epilog.scalar.ph591.prol.loopexit ] ; 6 uses
  %i.adh = mul nsw i64 %indvars.iv69.i262, %i.cw
  %i.adi = getelementptr inbounds [4 x i8], ptr %i.uh, i64 %i.adh
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !12
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adj, 2.000000e+00
  %i.adl = sub nsw i64 %indvars.iv69.i262, %i.gl
end_hunk_2
