Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.az = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = select i1 %i.ba, i64 4, i64 %i.az
  %n.vec935 = sub nsw i64 %wide.trip.count, %i.bb ; 2 uses
  %broadcast.splatinsert936 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat937 = shufflevector <4 x i32> %broadcast.splatinsert936, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op1007 = add i64 %i.au, -1
  %invariant.op1005 = add nsw i64 %i.au, -1
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec465 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n479 = icmp eq i64 %n.vec465, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec480 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n492 = icmp eq i64 %n.vec480, %wide.trip.count
  %xtraiter978 = and i64 %wide.trip.count, 1
  %lcmp.mod979.not = icmp eq i64 %xtraiter978, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check929

iter.check929:                                    ; preds = %.preheader301.lr.ph, %.loopexit946
  %indvars.iv387 = phi i64 [ 0, %.preheader301.lr.ph ], [ %indvars.iv.next388, %.loopexit946 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv387 ; 8 uses
  br label %vector.body919

vector.body919:                                   ; preds = %iter.check929, %vector.body919
  %index920 = phi i64 [ 0, %iter.check929 ], [ %index.next927, %vector.body919 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index920
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index920
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index920
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index920
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !82
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec921 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !82
  %strided.vec922 = shufflevector <32 x i16> %wide.vec921, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec923 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !82
  %strided.vec924 = shufflevector <32 x i16> %wide.vec923, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec925 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !82
  %strided.vec926 = shufflevector <32 x i16> %wide.vec925, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec922 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec924 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec926 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat918
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat918
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat918
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat918
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
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index920 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !12
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !12
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !12
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !12
  %index.next927 = add nuw i64 %index920, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next927, %n.vec916
  br i1 %i.cj, label %vec.epilog.iter.check930, label %vector.body919, !llvm.loop !120

vec.epilog.iter.check930:                         ; preds = %vector.body919
  br i1 %min.epilog.iters.check932, label %vec.epilog.scalar.ph931.preheader, label %vec.epilog.vector.body938, !prof !83

vec.epilog.scalar.ph931.preheader:                ; preds = %vec.epilog.vector.body938, %vec.epilog.iter.check930
  %indvars.iv.ph = phi i64 [ %n.vec916, %vec.epilog.iter.check930 ], [ %n.vec935, %vec.epilog.vector.body938 ]
  br label %vec.epilog.scalar.ph931

vec.epilog.vector.body938:                        ; preds = %vec.epilog.iter.check930, %vec.epilog.vector.body938
  %index939 = phi i64 [ %index.next942, %vec.epilog.vector.body938 ], [ %n.vec916, %vec.epilog.iter.check930 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index939
  %wide.vec940 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !82
  %strided.vec941 = shufflevector <16 x i16> %wide.vec940, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec941 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat937
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index939
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !12
  %index.next942 = add nuw i64 %index939, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next942, %n.vec935
  br i1 %i.cr, label %vec.epilog.scalar.ph931.preheader, label %vec.epilog.vector.body938, !llvm.loop !121

.preheader300:                                    ; preds = %vec.epilog.scalar.ph931
  %i.cs = load i16, ptr %i.g, align 4, !tbaa !188 ; 7 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %.not345 = icmp eq i16 %i.cs, 0                 ; 2 uses
  %i.cu = load i16, ptr %i.d, align 2, !tbaa !187 ; 12 uses
  %i.cv = zext i16 %i.cu to i32                   ; 6 uses
  %.not346 = icmp eq i16 %i.cu, 0                 ; 2 uses
  %i.cw = zext i16 %i.cu to i64                   ; 34 uses
  %i.cx = zext i16 %i.cs to i64                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ct, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.cy, -2           ; 5 uses
  %i.cz = zext i16 %i.cu to i64                   ; 10 uses
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 3 uses
  %wide.trip.count361 = zext i16 %i.cs to i64     ; 16 uses
  %i.db = add nsw i32 %i.da, -2                   ; 5 uses
  %wide.trip.count356 = zext i16 %i.cu to i64
  %wide.trip.count371 = zext i16 %i.cu to i64
  %wide.trip.count366 = zext i16 %i.cs to i64
  %i.dc = add nsw i64 %wide.trip.count361, -1     ; 2 uses
  %i.dd = add nsw i32 %i.cy, -2
  %i.de = add nuw nsw i64 %i.aj, %wide.trip.count361
  %i.df = shl nuw nsw i64 %i.de, 2
  %scevgep527.a = getelementptr i8, ptr %.0233, i64 %i.df ; 3 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count361, 2  ; 2 uses
  %i.dh = add nsw i32 %i.cy, -2
  %i.di = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %scevgep639.a = getelementptr i8, ptr %scevgep638.a, i64 %i.di
  %scevgep643 = getelementptr i8, ptr %.0233, i64 %i.di
  %scevgep647 = getelementptr i8, ptr %scevgep646, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.cw, 2
  %i.dk = add nsw i32 %i.da, -2
  %i.dl = add nuw nsw i64 %i.aj, %i.cw
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep739.a = getelementptr i8, ptr %.0233, i64 %i.dm ; 3 uses
  %i.dn = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %i.do = shl nuw nsw i64 %i.cw, 2
  %i.dp = add nsw i32 %i.da, -2
  %i.dq = mul nsw i64 %i.cw, -4
  %i.dr = shl nuw nsw i64 %wide.trip.count361, 2
  %i.ds = add nsw i64 %i.dr, -4
  %i.dt = mul nsw i64 %i.ds, %i.cw                ; 3 uses
  %scevgep848.a = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep853 = getelementptr i8, ptr %scevgep852, i64 %i.dt
  %scevgep856 = getelementptr i8, ptr %.0233, i64 %i.dt
  %i.du = add nsw i64 %i.cz, -1
  %min.iters.check707 = icmp ult i16 %i.cu, 4
  %min.iters.check709 = icmp ult i16 %i.cu, 32
  %i.dv = and i64 %i.cw, 28
  %n.vec711 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n720 = icmp eq i64 %n.vec711, %i.cw
  %min.epilog.iters.check724 = icmp eq i64 %i.dv, 0
  %n.vec727 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n733 = icmp eq i64 %n.vec727, %i.cw
  %ident.check634.not = icmp eq i16 %i.cu, 1
  %ident.check592.not = icmp eq i16 %i.cu, 1
  %ident.check523 = icmp ne i16 %i.cu, 1
  %i.dw = add nsw i64 %wide.trip.count361, -1
  %min.iters.check = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.dx = trunc nsw i64 %i.dc to i32
  %i.dy = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1003 = or i1 %i.dy, %ident.check
  %min.iters.check496 = icmp ult i16 %i.cs, 32
  %i.dz = and i64 %wide.trip.count361, 28
  %n.vec498 = and i64 %wide.trip.count361, 65504  ; 4 uses
  %cmp.n507 = icmp eq i64 %n.vec498, %wide.trip.count361
  %min.epilog.iters.check511 = icmp eq i64 %i.dz, 0
  %n.vec514 = and i64 %wide.trip.count361, 65532  ; 3 uses
  %cmp.n520 = icmp eq i64 %n.vec514, %wide.trip.count361
  %xtraiter975 = and i64 %wide.trip.count361, 3   ; 2 uses
  %lcmp.mod976.not = icmp eq i64 %xtraiter975, 0
  br label %bb.g

vec.epilog.scalar.ph931:                          ; preds = %vec.epilog.scalar.ph931.preheader, %vec.epilog.scalar.ph931
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph931 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph931.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ea = load i16, ptr %gep, align 2, !tbaa !82
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl i32 %i.eb, %i.o
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = tail call reassoc ninf nsz arcp contract afn float @llvm.sqrt.f32(float %i.ed)
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 2.560000e+02
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv
  store float %i.ef, ptr %i.eg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader300, label %vec.epilog.scalar.ph931, !llvm.loop !122

.preheader299:                                    ; preds = %.loopexit945
  %invariant.gep442 = getelementptr [4 x i8], ptr %.0233, i64 %i.agv ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader299
  %index = phi i64 [ 0, %.preheader299 ], [ %index.next, %vector.body ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !12
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep442, i64 %index
  %wide.load452 = load <8 x float>, ptr %i.ei, align 4, !tbaa !12
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %wide.load452, %wide.load ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, splat (float f0x37800000)
  %i.em = fptosi <8 x float> %i.el to <8 x i32>
  %1 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.em, <8 x i32> zeroinitializer)
  %i.en = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %1, <8 x i32> splat (i32 65535))
  %i.eo = trunc nuw <8 x i32> %i.en to <8 x i16>
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.eq = shufflevector <8 x i16> %i.eo, <8 x i16> poison, <29 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v29i16.p0(<29 x i16> %i.eq, ptr align 2 %i.ep, <29 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit946, label %scalar.ph

bb.g:                                             ; preds = %.preheader300, %.loopexit945
  %indvars.iv378 = phi i64 [ 0, %.preheader300 ], [ %indvars.iv.next379, %.loopexit945 ] ; 10 uses
  %.0229324 = phi i32 [ 0, %.preheader300 ], [ %i.eu, %.loopexit945 ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv378 to i32 ; 5 uses
  %i.et = and i32 %i.es, 1
  %i.eu = shl nuw i32 %i.aa, %i.et                ; 6 uses
  br i1 %.not345, label %.preheader298, label %.lr.ph314.a

.lr.ph314.a:                                      ; preds = %bb.g
  %i.ev = zext i32 %.0229324 to i64               ; 5 uses
  %i.ew = getelementptr [4 x i8], ptr %.0233, i64 %i.ev ; 2 uses
  %i.ex = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 32 uses
  %i.ez = shl nuw nsw i32 2, %i.es
  %i.fa = icmp samesign ult i32 %i.ez, %i.cv
  %i.fb = shl nuw nsw i64 %i.ey, 1                ; 6 uses
  %invariant.op.i = sub nsw i64 %i.cw, %i.ey      ; 2 uses
  %i.fc = sext i32 %i.eu to i64                   ; 2 uses
  %invariant.gep436 = getelementptr [4 x i8], ptr %.0233, i64 %i.fc
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = shl nuw nsw i64 %i.ev, 2                ; 4 uses
  %i.ff = add nuw nsw i64 %i.dn, %i.fe            ; 2 uses
  %i.fg = shl nuw nsw i64 %i.ey, 2                ; 4 uses
  %i.fh = sub nsw i64 %i.fe, %i.fg
  %i.fi = sub nsw i64 %i.ff, %i.fg
  %reass.sub = sub nsw i64 %i.fe, %i.dn
  %i.fj = shl nuw nsw i64 %i.ev, 2                ; 4 uses
  %i.fk = sub nsw i64 %i.av, %i.fj
  %i.fl = add nuw nsw i64 %i.aj, %i.ey
  %i.fm = sub nsw i64 %i.fl, %i.ev
  %i.fn = shl nsw i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.ev, %i.ey
  %i.fp = sub nsw i64 %i.aj, %i.fo
  %i.fq = shl nsw i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.ey, 1
  %smax810 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fr)
  %i.fs = sub nsw i64 %smax810, %i.ey             ; 7 uses
  %scevgep847 = getelementptr i8, ptr %scevgep846.a, i64 %i.fg ; 3 uses
  %i.ft = add nuw nsw i64 %i.fj, %i.fg            ; 3 uses
  %scevgep849.a = getelementptr i8, ptr %scevgep848.a, i64 %i.ft
  %scevgep851.a = getelementptr i8, ptr %scevgep850.a, i64 %i.fj
  %scevgep854 = getelementptr i8, ptr %scevgep853, i64 %i.ft
  %scevgep855 = getelementptr i8, ptr %.0233, i64 %i.ft
  %i.fu = shl nuw nsw i64 %i.ey, 3
  %i.fv = getelementptr i8, ptr %scevgep856, i64 %i.fu
  %scevgep857 = getelementptr i8, ptr %i.fv, i64 %i.fj
  %i.fw = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.fx = getelementptr i8, ptr %.0233, i64 %i.fh
  %i.fy = getelementptr i8, ptr %.0233, i64 %i.fi
  %i.fz = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %i.gb = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.gc = getelementptr i8, ptr %i.gb, i64 4
  %min.iters.check870 = icmp samesign ult i64 %indvars.iv378, 3
  %bound0858 = icmp ult ptr %i.ak, %scevgep849.a
  %bound1859 = icmp ult ptr %i.ew, %scevgep847
  %found.conflict860 = and i1 %bound0858, %bound1859
  %bound0861 = icmp ult ptr %i.ak, %scevgep854
  %bound1862 = icmp ult ptr %scevgep851.a, %scevgep847
  %found.conflict863 = and i1 %bound0861, %bound1862
  %conflict.rdx864 = or i1 %found.conflict860, %found.conflict863
  %bound0865 = icmp ult ptr %i.ak, %scevgep857
  %bound1866 = icmp ult ptr %scevgep855, %scevgep847
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %conflict.rdx864, %found.conflict867
  %min.iters.check872 = icmp samesign ult i64 %indvars.iv378, 5
  %n.vec874 = and i64 %i.ey, 2147483616
  %n.vec902 = and i64 %i.ey, 248
  %xtraiter = and i64 %i.ey, 3                    ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv378, 2
  %unroll_iter = and i64 %i.ey, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod961 = icmp ne i64 %xtraiter, 0
  %min.iters.check812 = icmp ult i64 %i.fs, 4
  %invariant.op986 = add i64 %i.fk, -1
  %invariant.op987 = add i64 %i.fn, -1
  %invariant.op989 = add i64 %i.fq, -1
  %min.iters.check814 = icmp ult i64 %i.fs, 16
  %i.ge = and i64 %i.fs, 12
  %n.vec816 = and i64 %i.fs, -16                  ; 5 uses
  %i.gf = add i64 %n.vec816, %i.ey                ; 2 uses
  %i.gg = add i64 %i.fb, %n.vec816
  %cmp.n827 = icmp eq i64 %i.fs, %n.vec816
  %min.epilog.iters.check831 = icmp eq i64 %i.ge, 0
  %n.vec834 = and i64 %i.fs, -4                   ; 4 uses
  %i.gh = add i64 %n.vec834, %i.ey                ; 2 uses
  %i.gi = add i64 %i.fb, %n.vec834
  %cmp.n842 = icmp eq i64 %i.fs, %n.vec834
  %invariant.op991.reass = add i64 %i.fd, %invariant.op1007
  br label %iter.check896

.preheader298:                                    ; preds = %._crit_edge, %bb.g
  br i1 %.not346, label %iter.check, label %.lr.ph320

.lr.ph320:                                        ; preds = %.preheader298
  %i.gj = zext i32 %i.eu to i64                   ; 5 uses
  %i.gk = getelementptr [4 x i8], ptr %.0233, i64 %i.gj ; 2 uses
  %i.gl = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 34 uses
  %i.gn = shl nuw nsw i32 2, %i.es
  %i.go = icmp samesign ult i32 %i.gn, %i.ct
  %i.gp = shl nuw nsw i64 %i.gm, 1                ; 6 uses
  %invariant.op.i270 = sub nsw i64 %i.cx, %i.gm   ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gr = add nuw nsw i64 %i.dg, %i.gq            ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gm, 2                ; 4 uses
  %i.gt = sub nsw i64 %i.gq, %i.gs
  %i.gu = sub nsw i64 %i.gr, %i.gs
  %reass.sub947 = sub nsw i64 %i.gq, %i.dg
  %i.gv = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gw = sub nsw i64 %i.av, %i.gv
  %i.gx = add nuw nsw i64 %i.aj, %i.gm
  %i.gy = sub nsw i64 %i.gx, %i.gj
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = add nuw nsw i64 %i.gj, %i.gm
  %i.hb = sub nsw i64 %i.aj, %i.ha
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.gm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i270, i64 %i.hd)
  %i.he = sub nsw i64 %smax, %i.gm                ; 7 uses
  %scevgep637 = getelementptr i8, ptr %scevgep636.a, i64 %i.gs ; 3 uses
  %i.hf = add nuw nsw i64 %i.gv, %i.gs            ; 3 uses
  %scevgep640 = getelementptr i8, ptr %scevgep639.a, i64 %i.hf
  %scevgep642.a = getelementptr i8, ptr %scevgep641.a, i64 %i.gv
  %scevgep644 = getelementptr i8, ptr %scevgep643, i64 %i.hf
  %scevgep645 = getelementptr i8, ptr %.0233, i64 %i.hf
  %i.hg = shl nuw nsw i64 %i.gm, 3
  %i.hh = getelementptr i8, ptr %scevgep647, i64 %i.hg
  %scevgep648 = getelementptr i8, ptr %i.hh, i64 %i.gv
  %i.hi = getelementptr i8, ptr %.0233, i64 %i.gr
  %i.hj = getelementptr i8, ptr %.0233, i64 %i.gt
  %i.hk = getelementptr i8, ptr %.0233, i64 %i.gu
  %i.hl = getelementptr i8, ptr %.0233, i64 %reass.sub947
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %i.hn = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  %min.iters.check661 = icmp samesign ugt i64 %indvars.iv378, 2
  %or.cond948 = select i1 %min.iters.check661, i1 %ident.check634.not, i1 false
  %bound0649 = icmp ult ptr %i.ak, %scevgep640
  %bound1650 = icmp ult ptr %i.gk, %scevgep637
  %found.conflict651 = and i1 %bound0649, %bound1650
  %bound0652 = icmp ult ptr %i.ak, %scevgep644
  %bound1653 = icmp ult ptr %scevgep642.a, %scevgep637
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %found.conflict651, %found.conflict654
  %bound0656 = icmp ult ptr %i.ak, %scevgep648
  %bound1657 = icmp ult ptr %scevgep645, %scevgep637
  %found.conflict658 = and i1 %bound0656, %bound1657
  %conflict.rdx659 = or i1 %conflict.rdx655, %found.conflict658
  %min.iters.check663 = icmp samesign ult i64 %indvars.iv378, 5
  %n.vec665 = and i64 %i.gm, 2147483616
  %n.vec693 = and i64 %i.gm, 248
  %xtraiter966.a = and i64 %i.gm, 1
  %i.hp = icmp eq i64 %indvars.iv378, 0
  %unroll_iter970 = and i64 %i.gm, 2147483646
  %lcmp.mod968.not = icmp eq i64 %xtraiter966.a, 0
  %lcmp.mod969 = icmp eq i64 %indvars.iv378, 0
  %min.iters.check600 = icmp ugt i64 %i.he, 3
  %or.cond949 = select i1 %min.iters.check600, i1 %ident.check592.not, i1 false
  %invariant.op997 = add i64 %i.gw, -1
  %invariant.op999 = add i64 %i.gz, -1
  %invariant.op1001 = add i64 %i.hc, -1
  %min.iters.check602 = icmp ult i64 %i.he, 16
  %i.hq = and i64 %i.he, 12
  %n.vec604 = and i64 %i.he, -16                  ; 5 uses
  %i.hr = add i64 %n.vec604, %i.gm                ; 2 uses
  %i.hs = add i64 %i.gp, %n.vec604
  %cmp.n615 = icmp eq i64 %i.he, %n.vec604
  %min.epilog.iters.check619 = icmp eq i64 %i.hq, 0
  %n.vec622 = and i64 %i.he, -4                   ; 4 uses
  %i.ht = add i64 %n.vec622, %i.gm                ; 2 uses
  %i.hu = add i64 %i.gp, %n.vec622
  %cmp.n630 = icmp eq i64 %i.he, %n.vec622
  br label %iter.check687

iter.check896:                                    ; preds = %.lr.ph314.a, %._crit_edge
  %indvars.iv358 = phi i64 [ 0, %.lr.ph314.a ], [ %indvars.iv.next359, %._crit_edge ] ; 5 uses
  %i.hv = mul i64 %i.dq, %indvars.iv358           ; 3 uses
  %i.hw = mul i64 %i.do, %indvars.iv358           ; 5 uses
  %scevgep741.a = getelementptr i8, ptr %i.fw, i64 %i.hw
  %scevgep742.a = getelementptr i8, ptr %i.fx, i64 %i.hw
  %scevgep744 = getelementptr i8, ptr %i.fy, i64 %i.hw
  %scevgep745 = getelementptr i8, ptr %i.ga, i64 %i.hw
  %scevgep747 = getelementptr i8, ptr %i.gc, i64 %i.hw
  %i.hx = mul i64 %i.dj, %indvars.iv358
  %i.hy = mul nuw nsw i64 %indvars.iv358, %i.cz   ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hy ; 40 uses
  %invariant.gep309 = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ey ; 7 uses
  %brmerge1008 = select i1 %min.iters.check870, i1 true, i1 %conflict.rdx868
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %bound1 = icmp ult ptr %.0233, %scevgep453
  %found.conflict = and i1 %bound0, %bound1
  %bound0456 = icmp ult ptr %invariant.gep440.a, %scevgep455
  %bound1457 = icmp ult ptr %invariant.gep438.a, %scevgep453
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx = or i1 %found.conflict, %found.conflict458
  %bound0459 = icmp ult ptr %.0233, %scevgep455
  %bound1460 = icmp ult ptr %invariant.gep438.a, %scevgep
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx, %found.conflict461
  br i1 %conflict.rdx462, label %vec.epilog.scalar.ph.preheader, label %vector.ph464

vector.ph464:                                     ; preds = %iter.check
  %i.agz = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.aha = shufflevector <8 x i1> %i.agz, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert466 = insertelement <8 x float> poison, float %i.agt, i64 0
  %broadcast.splat467 = shufflevector <8 x float> %broadcast.splatinsert466, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert468 = insertelement <8 x float> poison, float %i.agu, i64 0
  %broadcast.splat469 = shufflevector <8 x float> %broadcast.splatinsert468, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body470

vector.body470:                                   ; preds = %vector.ph464, %vector.body470
  %index471 = phi i64 [ 0, %vector.ph464 ], [ %index.next477, %vector.body470 ] ; 4 uses
  %i.ahb = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %index471 ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 32
  %wide.load472 = load <8 x float>, ptr %i.ahb, align 4, !tbaa !12, !alias.scope !213
  %wide.load473 = load <8 x float>, ptr %i.ahc, align 4, !tbaa !12, !alias.scope !213
  %i.ahd = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %index471 ; 3 uses
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 32   ; 2 uses
  %wide.load474 = load <8 x float>, ptr %i.ahd, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %wide.load475 = load <8 x float>, ptr %i.ahe, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ahf = fsub reassoc nsz arcp contract afn <8 x float> %wide.load474, %wide.load472 ; 4 uses
  %i.ahg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load475, %wide.load473 ; 4 uses
  %i.ahh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ahf, %broadcast.splat469
  %i.ahi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ahg, %broadcast.splat469
  %i.ahj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ahf, %broadcast.splat467
  %i.ahk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ahg, %broadcast.splat467
  %i.ahl = fsub reassoc nsz arcp contract afn <8 x float> %i.ahf, %broadcast.splat467
  %i.ahm = fsub reassoc nsz arcp contract afn <8 x float> %i.ahg, %broadcast.splat467
  %i.ahn = select <8 x i1> %i.ahj, <8 x float> %i.ahl, <8 x float> zeroinitializer
  %i.aho = select <8 x i1> %i.ahk, <8 x float> %i.ahm, <8 x float> zeroinitializer
  %i.ahp = fadd reassoc nsz arcp contract afn <8 x float> %i.ahf, %broadcast.splat467
  %i.ahq = fadd reassoc nsz arcp contract afn <8 x float> %i.ahg, %broadcast.splat467
  %i.ahr = select <8 x i1> %i.ahh, <8 x float> %i.ahp, <8 x float> %i.ahn ; 2 uses
  %i.ahs = select <8 x i1> %i.ahi, <8 x float> %i.ahq, <8 x float> %i.aho ; 2 uses
  store <8 x float> %i.ahr, ptr %i.ahd, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  store <8 x float> %i.ahs, ptr %i.ahe, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aht = getelementptr [4 x i8], ptr %.0233, i64 %index471 ; 3 uses
  %i.ahu = getelementptr i8, ptr %i.aht, i64 32   ; 2 uses
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aht, <8 x i1> %i.aha, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %wide.masked.load476 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ahu, <8 x i1> %i.aha, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ahv = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %i.ahr
  %i.ahw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load476, %i.ahs
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahv, ptr align 4 %i.aht, <8 x i1> %i.aha), !tbaa !12, !alias.scope !216, !noalias !213
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahw, ptr align 4 %i.ahu, <8 x i1> %i.aha), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next477 = add nuw i64 %index471, 16      ; 2 uses
  %i.ahx = icmp eq i64 %index.next477, %n.vec465
  br i1 %i.ahx, label %middle.block478, label %vector.body470, !llvm.loop !177

middle.block478:                                  ; preds = %vector.body470
  br i1 %cmp.n479, label %.loopexit945, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block478
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %i.ahy = insertelement <4 x i1> poison, i1 %.not254, i64 0
  %i.ahz = shufflevector <4 x i1> %i.ahy, <4 x i1> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert483 = insertelement <4 x float> poison, float %i.agt, i64 0
  %broadcast.splat484 = shufflevector <4 x float> %broadcast.splatinsert483, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert485 = insertelement <4 x float> poison, float %i.agu, i64 0
  %broadcast.splat486 = shufflevector <4 x float> %broadcast.splatinsert485, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index487 = phi i64 [ %n.vec465, %vec.epilog.ph ], [ %index.next491, %vec.epilog.vector.body ] ; 4 uses
  %i.aia = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %index487
  %wide.load488 = load <4 x float>, ptr %i.aia, align 4, !tbaa !12, !alias.scope !213
  %i.aib = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %index487 ; 2 uses
  %wide.load489 = load <4 x float>, ptr %i.aib, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aic = fsub reassoc nsz arcp contract afn <4 x float> %wide.load489, %wide.load488 ; 4 uses
  %i.aid = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aic, %broadcast.splat486
  %i.aie = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aic, %broadcast.splat484
  %i.aif = fsub reassoc nsz arcp contract afn <4 x float> %i.aic, %broadcast.splat484
  %i.aig = select <4 x i1> %i.aie, <4 x float> %i.aif, <4 x float> zeroinitializer
  %i.aih = fadd reassoc nsz arcp contract afn <4 x float> %i.aic, %broadcast.splat484
  %i.aii = select <4 x i1> %i.aid, <4 x float> %i.aih, <4 x float> %i.aig ; 2 uses
  store <4 x float> %i.aii, ptr %i.aib, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aij = getelementptr [4 x i8], ptr %.0233, i64 %index487 ; 2 uses
  %wide.masked.load490 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aij, <4 x i1> %i.ahz, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.aik = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load490, %i.aii
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.aik, ptr align 4 %i.aij, <4 x i1> %i.ahz), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next491 = add nuw i64 %index487, 4       ; 2 uses
  %i.ail = icmp eq i64 %index.next491, %n.vec480
  br i1 %i.ail, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n492, label %.loopexit945, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv373.ph = phi i64 [ 0, %iter.check ], [ %n.vec465, %vec.epilog.iter.check ], [ %n.vec480, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod979.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep439.prol = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %indvars.iv373.ph
  %i.aim = load float, ptr %gep439.prol, align 4, !tbaa !12
  %gep441.prol = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %indvars.iv373.ph ; 2 uses
  %i.ain = load float, ptr %gep441.prol, align 4, !tbaa !12
  %i.aio = fsub reassoc nsz arcp contract afn float %i.ain, %i.aim ; 4 uses
  %i.aip = fcmp reassoc nsz arcp contract afn olt float %i.aio, %i.agu
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt float %i.aio, %i.agt
  %i.air = fsub reassoc nsz arcp contract afn float %i.aio, %i.agt
  %spec.select448.prol = select i1 %i.aiq, float %i.air, float 0.000000e+00
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aio, %i.agt
  %.sink.prol = select i1 %i.aip, float %i.ais, float %spec.select448.prol ; 2 uses
  store float %.sink.prol, ptr %gep441.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv373.ph ; 2 uses
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !12
  %i.aiv = fadd reassoc nsz arcp contract afn float %i.aiu, %.sink.prol
  store float %i.aiv, ptr %i.ait, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next374.prol = or disjoint i64 %indvars.iv373.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv373.unr = phi i64 [ %indvars.iv373.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next374.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aiw = icmp eq i64 %indvars.iv373.ph, %i.bd
  br i1 %i.aiw, label %.loopexit945, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv373 = phi i64 [ %indvars.iv.next374.1, %bb.k ], [ %indvars.iv373.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep439.a = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %indvars.iv373
  %i.aix = load float, ptr %gep439.a, align 4, !tbaa !12
  %gep441.a = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %indvars.iv373 ; 2 uses
  %i.aiy = load float, ptr %gep441.a, align 4, !tbaa !12
  %i.aiz = fsub reassoc nsz arcp contract afn float %i.aiy, %i.aix ; 4 uses
  %i.aja = fcmp reassoc nsz arcp contract afn olt float %i.aiz, %i.agu
  %i.ajb = fcmp reassoc nsz arcp contract afn ogt float %i.aiz, %i.agt
  %i.ajc = fsub reassoc nsz arcp contract afn float %i.aiz, %i.agt
  %spec.select448 = select i1 %i.ajb, float %i.ajc, float 0.000000e+00
  %i.ajd = fadd reassoc nsz arcp contract afn float %i.aiz, %i.agt
  %.sink = select i1 %i.aja, float %i.ajd, float %spec.select448 ; 2 uses
  store float %.sink, ptr %gep441.a, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv373 ; 2 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !12
  %i.ajg = fadd reassoc nsz arcp contract afn float %i.ajf, %.sink
  store float %i.ajg, ptr %i.aje, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 3 uses
  %gep439.1 = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %indvars.iv.next374
  %i.ajh = load float, ptr %gep439.1, align 4, !tbaa !12
  %gep441.1 = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %indvars.iv.next374 ; 2 uses
  %i.aji = load float, ptr %gep441.1, align 4, !tbaa !12
  %i.ajj = fsub reassoc nsz arcp contract afn float %i.aji, %i.ajh ; 4 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn olt float %i.ajj, %i.agu
  %i.ajl = fcmp reassoc nsz arcp contract afn ogt float %i.ajj, %i.agt
  %i.ajm = fsub reassoc nsz arcp contract afn float %i.ajj, %i.agt
  %spec.select448.1 = select i1 %i.ajl, float %i.ajm, float 0.000000e+00
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajj, %i.agt
  %.sink.1 = select i1 %i.ajk, float %i.ajn, float %spec.select448.1 ; 2 uses
  store float %.sink.1, ptr %gep441.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next374 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !12
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajp, %.sink.1
  store float %i.ajq, ptr %i.ajo, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vec.epilog.scalar.ph.1
  %indvars.iv.next374.1 = add nuw nsw i64 %indvars.iv373, 2 ; 2 uses
  %exitcond377.not.1 = icmp eq i64 %indvars.iv.next374.1, %wide.trip.count
  br i1 %exitcond377.not.1, label %.loopexit945, label %vec.epilog.scalar.ph, !llvm.loop !179

.loopexit945:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k, %vec.epilog.middle.block, %middle.block478
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next379, 5
  br i1 %exitcond381.not, label %.preheader299, label %bb.g, !llvm.loop !180

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %scalar.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv382
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !12
  %gep443 = getelementptr [4 x i8], ptr %invariant.gep442, i64 %indvars.iv382
  %i.ajt = load float, ptr %gep443, align 4, !tbaa !12
  %i.aju = fadd reassoc nsz arcp contract afn float %i.ajt, %i.ajs ; 2 uses
  %i.ajv = fmul reassoc nsz arcp contract afn float %i.aju, %i.aju
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.ajv, f0x37800000
  %i.ajx = fptosi float %i.ajw to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %i.ajx, i32 0)
  %i.ajy = tail call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.ajz = trunc nuw i32 %i.ajy to i16
  %gep326 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv382
  store i16 %i.ajz, ptr %gep326, align 2, !tbaa !82
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count
  br i1 %exitcond386.not, label %.loopexit946, label %scalar.ph, !llvm.loop !181

.loopexit946:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %._crit_edge329, label %iter.check929, !llvm.loop !182

._crit_edge329:                                   ; preds = %.loopexit946
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.akb, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit295, label %.preheader297

.preheader297:                                    ; preds = %._crit_edge329
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.akd = lshr i32 %i.akb, 4
  %i.ake = and i32 %i.akd, 2                      ; 2 uses
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akf
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.aki = load float, ptr %i.akh, align 8, !tbaa !12 ; 2 uses
  %i.akj = and i32 %i.akb, 2
  %i.akk = or disjoint i32 %i.akj, 1
  %i.akl = zext nneg i32 %i.akk to i64            ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akl
  %i.akn = load float, ptr %i.akm, align 8, !tbaa !12
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akl
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !79
  store i32 %i.akp, ptr %i.b, align 4, !tbaa !79
  %i.akq = lshr i32 %i.akb, 8
  %i.akr = and i32 %i.akq, 2
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  %i.akv = load float, ptr %i.aku, align 8, !tbaa !12
  %i.akw = insertelement <2 x float> poison, float %i.aki, i64 0
  %i.akx = insertelement <2 x float> %i.akw, float %i.akv, i64 1
  %i.aky = fmul reassoc nsz arcp contract afn <2 x float> %i.akx, splat (float 1.250000e-01)
  %i.akz = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.ala = insertelement <2 x float> %i.akz, float %i.aki, i64 1
  %i.alb = fdiv reassoc nsz arcp contract afn <2 x float> %i.aky, %i.ala
  store <2 x float> %i.alb, ptr %i.a, align 8, !tbaa !12
  %i.alc = zext nneg i32 %i.ake to i64
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.alc
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !79
  %i.alg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.alf, ptr %i.alg, align 4, !tbaa !79
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.alj = load i16, ptr %i.ali, align 4, !tbaa !85
  %i.alk = icmp ugt i16 %i.alj, 2
  br i1 %i.alk, label %.preheader.lr.ph, label %.loopexit295

.preheader.lr.ph:                                 ; preds = %.preheader297
  %i.all = load i16, ptr %i.alh, align 2, !tbaa !86 ; 2 uses
  %i.alm = zext i16 %i.all to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.alm, 2
  %i.aln = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.alo = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.alm
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !212
  %i.als = fmul reassoc nsz arcp contract afn float %i.alr, f0x3B000000 ; 4 uses
  %i.alt = fneg reassoc nsz arcp contract afn float %i.als
  br label %.preheader

.loopexit293:                                     ; preds = %bb.m, %._crit_edge339
  %i.alu = phi i16 [ %i.ank, %._crit_edge339 ], [ %i.aqr, %bb.m ]
  %i.alv = load i16, ptr %i.ali, align 4, !tbaa !85
  %i.alw = zext i16 %i.alv to i32
  %i.alx = add nsw i32 %i.alw, -1
  %i.aly = icmp slt i32 %.pre415, %i.alx
  br i1 %i.aly, label %.preheader, label %.loopexit295, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit293
  %i.alz = phi i16 [ %i.all, %.preheader.lr.ph ], [ %i.alu, %.loopexit293 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.aln, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit293 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.alo, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit293 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit293 ] ; 2 uses
  %.0344 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit293 ] ; 3 uses
  %.3226343 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre415, %.loopexit293 ] ; 6 uses
  %.not253336 = icmp sgt i32 %.0344, %.3226343
  %.pre415 = add nuw i32 %.3226343, 1             ; 3 uses
  br i1 %.not253336, label %._crit_edge339, label %.lr.ph338

.loopexit:                                        ; preds = %bb.l, %.lr.ph338
  %i.ama = phi i16 [ %i.amc, %.lr.ph338 ], [ %i.anh, %bb.l ] ; 2 uses
  %i.amb = phi i16 [ %i.amd, %.lr.ph338 ], [ %i.anh, %bb.l ]
  %exitcond406.not = icmp eq i32 %.1337, %.3226343
  br i1 %exitcond406.not, label %._crit_edge339, label %.lr.ph338, !llvm.loop !184

.lr.ph338:                                        ; preds = %.preheader, %.loopexit
  %i.amc = phi i16 [ %i.ama, %.loopexit ], [ %i.alz, %.preheader ]
  %i.amd = phi i16 [ %i.amb, %.loopexit ], [ %i.alz, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1337 = phi i32 [ %i.ame, %.loopexit ], [ %.0344, %.preheader ] ; 2 uses
  %i.ame = add nsw i32 %.1337, 1                  ; 3 uses
  %i.amf = shl i32 %i.ame, 1
  %i.amg = and i32 %i.amf, 14                     ; 2 uses
  %i.amh = shl nuw nsw i32 %i.amg, 1
  %i.ami = or disjoint i32 %i.amh, 2
  %i.amj = lshr i32 %i.akb, %i.ami                ; 2 uses
  %i.amk = and i32 %i.amj, 1                      ; 2 uses
  %i.aml = zext i16 %i.amd to i32
  %i.amm = icmp samesign ult i32 %i.amk, %i.aml
  br i1 %i.amm, label %.lr.ph335, label %.loopexit

.lr.ph335:                                        ; preds = %.lr.ph338
  %i.amn = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.amo = and i32 %i.amj, 1
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = or disjoint i32 %i.amk, %i.amg
  %i.amr = shl nuw nsw i32 %i.amq, 1
  %i.ams = lshr i32 %i.akb, %i.amr
  %i.amt = and i32 %i.ams, 3
  %i.amu = zext nneg i32 %i.amt to i64
  %invariant.gep444 = getelementptr [2 x i8], ptr %i.amn, i64 %i.amu
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph335, %bb.l
  %indvars.iv403 = phi i64 [ %i.amp, %.lr.ph335 ], [ %indvars.iv.next404, %bb.l ] ; 3 uses
  %i.amv = load i16, ptr %i.alp, align 4, !tbaa !87
  %i.amw = zext i16 %i.amv to i32                 ; 2 uses
  %i.amx = ashr i32 %i.ame, %i.amw
  %i.amy = load i16, ptr %i.d, align 2, !tbaa !187
  %i.amz = zext i16 %i.amy to i32
  %i.ana = mul nsw i32 %i.amx, %i.amz
  %i.anb = trunc nuw nsw i64 %indvars.iv403 to i32
  %i.anc = lshr i32 %i.anb, %i.amw
  %i.and = add nsw i32 %i.ana, %i.anc
  %i.ane = sext i32 %i.and to i64
  %gep445 = getelementptr [8 x i8], ptr %invariant.gep444, i64 %i.ane
  %i.anf = load i16, ptr %gep445, align 2, !tbaa !82
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv403
  store i16 %i.anf, ptr %i.ang, align 2, !tbaa !82
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 2 ; 2 uses
  %i.anh = load i16, ptr %i.alh, align 2, !tbaa !86 ; 3 uses
  %i.ani = zext i16 %i.anh to i64
  %i.anj = icmp samesign ult i64 %indvars.iv.next404, %i.ani
  br i1 %i.anj, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge339:                                   ; preds = %.loopexit, %.preheader
  %i.ank = phi i16 [ %i.alz, %.preheader ], [ %i.ama, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0344, %.preheader ], [ %.pre415, %.loopexit ]
  %i.anl = shl nuw nsw i32 %.3226343, 1
  %i.anm = and i32 %i.anl, 14                     ; 2 uses
  %i.ann = shl nuw nsw i32 %i.anm, 1
  %i.ano = lshr i32 %i.akb, %i.ann                ; 3 uses
  %i.anp = and i32 %i.ano, 1
  %i.anq = add nuw nsw i32 %i.anp, 1
  %i.anr = zext i16 %i.ank to i32
  %i.ans = add nsw i32 %i.anr, -1
  %i.ant = icmp slt i32 %i.anq, %i.ans
  br i1 %i.ant, label %.lr.ph342, label %.loopexit293

.lr.ph342:                                        ; preds = %._crit_edge339
  %i.anu = and i32 %.3226343, 1                   ; 2 uses
  %i.anv = xor i32 %i.anu, 1
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anw
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !79
  %i.anz = zext nneg i32 %i.anu to i64            ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.anz
  %i.aob = load float, ptr %i.aoa, align 4, !tbaa !12
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anz
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !79
  %i.aoe = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.aof = and i32 %i.ano, 1
  %i.aog = and i32 %i.ano, 1
  %narrow = add nuw nsw i32 %i.aog, 1
  %i.aoh = zext nneg i32 %narrow to i64
  %i.aoi = shl i32 %i.any, 2
  %i.aoj = or disjoint i32 %i.aof, %i.anm
  %i.aok = shl nuw nsw i32 %i.aoj, 1
  %i.aol = xor i32 %i.aok, 2
  %i.aom = lshr i32 %i.akb, %i.aol
  %i.aon = and i32 %i.aom, 3
  %i.aoo = zext nneg i32 %i.aon to i64
  %invariant.gep446 = getelementptr inbounds nuw [2 x i8], ptr %i.aoe, i64 %i.aoo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph342, %bb.m
  %indvars.iv407 = phi i64 [ %i.aoh, %.lr.ph342 ], [ %indvars.iv.next408, %bb.m ] ; 5 uses
  %i.aop = add nsw i64 %indvars.iv407, -1         ; 2 uses
  %i.aoq = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.aop
  %i.aor = load i16, ptr %i.aoq, align 2, !tbaa !82
  %i.aos = zext i16 %i.aor to i32
  %i.aot = add nuw nsw i64 %indvars.iv407, 1      ; 2 uses
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.aot
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !82
  %i.aow = zext i16 %i.aov to i32
  %i.aox = add nuw nsw i32 %i.aow, %i.aos
  %i.aoy = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.aop
  %i.aoz = load i16, ptr %i.aoy, align 2, !tbaa !82
  %i.apa = zext i16 %i.aoz to i32
  %i.apb = add nuw nsw i32 %i.aox, %i.apa
  %i.apc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.aot
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !82
  %i.ape = zext i16 %i.apd to i32
  %i.apf = add nuw nsw i32 %i.apb, %i.ape
  %i.apg = sub i32 %i.apf, %i.aoi
  %i.aph = sitofp reassoc nsz arcp contract afn i32 %i.apg to float
  %i.api = fmul reassoc nsz arcp contract afn float %i.aob, %i.aph
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv407
  %i.apk = load i16, ptr %i.apj, align 2, !tbaa !82
  %i.apl = zext i16 %i.apk to i32
  %i.apm = add nsw i32 %i.aod, %i.apl
  %i.apn = sitofp reassoc nsz arcp contract afn i32 %i.apm to float
  %i.apo = fmul reassoc nnan nsz arcp contract afn float %i.apn, 5.000000e-01
  %i.app = fadd reassoc nsz arcp contract afn float %i.apo, %i.api ; 2 uses
  %i.apq = fcmp reassoc nsz arcp contract afn olt float %i.app, 0.000000e+00
  %i.apr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.app)
  %spec.select284 = select reassoc nsz arcp contract afn i1 %i.apq, float 0.000000e+00, float %i.apr ; 2 uses
  %i.aps = load i16, ptr %i.alp, align 4, !tbaa !87
  %i.apt = zext i16 %i.aps to i32                 ; 2 uses
  %i.apu = lshr i32 %.3226343, %i.apt
  %i.apv = load i16, ptr %i.d, align 2, !tbaa !187
  %i.apw = zext i16 %i.apv to i32
  %i.apx = mul nuw nsw i32 %i.apu, %i.apw
  %i.apy = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.apz = lshr i32 %i.apy, %i.apt
  %i.aqa = add nuw nsw i32 %i.apx, %i.apz
  %i.aqb = zext nneg i32 %i.aqa to i64
  %gep447 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep446, i64 %i.aqb ; 2 uses
  %i.aqc = load i16, ptr %gep447, align 2, !tbaa !82
  %i.aqd = uitofp reassoc nsz arcp contract afn i16 %i.aqc to float
  %i.aqe = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aqd)
  %i.aqf = fsub reassoc nsz arcp contract afn float %i.aqe, %spec.select284 ; 4 uses
  %i.aqg = fcmp reassoc nsz arcp contract afn olt float %i.aqf, %i.alt
  %i.aqh = fadd reassoc nsz arcp contract afn float %i.aqf, %i.als
  %i.aqi = fcmp reassoc nsz arcp contract afn ogt float %i.aqf, %i.als
  %i.aqj = fsub reassoc nsz arcp contract afn float %i.aqf, %i.als
  %spec.select259 = select nsz i1 %i.aqi, float %i.aqj, float 0.000000e+00
  %.0232 = select nsz i1 %i.aqg, float %i.aqh, float %spec.select259
  %i.aqk = fadd reassoc nsz arcp contract afn float %.0232, %spec.select284 ; 2 uses
  %i.aql = fmul reassoc nsz arcp contract afn float %i.aqk, %i.aqk
  %i.aqm = fpext reassoc nsz arcp contract afn float %i.aql to double
  %i.aqn = fadd reassoc nsz arcp contract afn double %i.aqm, 5.000000e-01
  %i.aqo = fptosi double %i.aqn to i32
  %3 = tail call i32 @llvm.smax.i32(i32 %i.aqo, i32 0)
  %i.aqp = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.aqq = trunc nuw i32 %i.aqp to i16
  store i16 %i.aqq, ptr %gep447, align 2, !tbaa !82
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %i.aqr = load i16, ptr %i.alh, align 2, !tbaa !86 ; 2 uses
  %i.aqs = zext i16 %i.aqr to i64
  %i.aqt = add nsw i64 %i.aqs, -1
  %i.aqu = icmp slt i64 %indvars.iv.next408, %i.aqt
  br i1 %i.aqu, label %bb.m, label %.loopexit293, !llvm.loop !186

.loopexit295:                                     ; preds = %.loopexit293, %bb.f, %.preheader297, %._crit_edge329
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.0233)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %.loopexit295
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
end_hunk_2
