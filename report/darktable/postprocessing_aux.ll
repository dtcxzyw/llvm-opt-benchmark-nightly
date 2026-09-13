Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec467 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n481 = icmp eq i64 %n.vec467, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec482 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n494 = icmp eq i64 %n.vec482, %wide.trip.count
  %xtraiter990 = and i64 %wide.trip.count, 1
  %lcmp.mod991.not = icmp eq i64 %xtraiter990, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check942

iter.check942:                                    ; preds = %.preheader301.lr.ph, %.loopexit958
  %indvars.iv387 = phi i64 [ 0, %.preheader301.lr.ph ], [ %indvars.iv.next388, %.loopexit958 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv387 ; 8 uses
  br i1 %min.iters.check924, label %vec.epilog.scalar.ph943.preheader, label %vector.main.loop.iter.check925

vector.main.loop.iter.check925:                   ; preds = %iter.check942
  br i1 %min.iters.check926, label %vec.epilog.ph946, label %vector.body931

vector.body931:                                   ; preds = %vector.main.loop.iter.check925, %vector.body931
  %index932 = phi i64 [ %index.next939, %vector.body931 ], [ 0, %vector.main.loop.iter.check925 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index932
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index932
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index932
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index932
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !82
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec933 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !82
  %strided.vec934 = shufflevector <32 x i16> %wide.vec933, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec935 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !82
  %strided.vec936 = shufflevector <32 x i16> %wide.vec935, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec937 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !82
  %strided.vec938 = shufflevector <32 x i16> %wide.vec937, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec934 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec936 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec938 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat930
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat930
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat930
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat930
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
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index932 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !12
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !12
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !12
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !12
  %index.next939 = add nuw i64 %index932, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next939, %n.vec928
  br i1 %i.cj, label %vec.epilog.iter.check944, label %vector.body931, !llvm.loop !120

vec.epilog.iter.check944:                         ; preds = %vector.body931
  br i1 %min.epilog.iters.check945, label %vec.epilog.scalar.ph943.preheader, label %vec.epilog.ph946, !prof !83

vec.epilog.scalar.ph943.preheader:                ; preds = %vec.epilog.vector.body950, %iter.check942, %vec.epilog.iter.check944
  %indvars.iv.ph = phi i64 [ 0, %iter.check942 ], [ %n.vec928, %vec.epilog.iter.check944 ], [ %n.vec947, %vec.epilog.vector.body950 ]
  br label %vec.epilog.scalar.ph943

vec.epilog.ph946:                                 ; preds = %vector.main.loop.iter.check925, %vec.epilog.iter.check944
  %vec.epilog.resume.val941 = phi i64 [ %n.vec928, %vec.epilog.iter.check944 ], [ 0, %vector.main.loop.iter.check925 ]
  br label %vec.epilog.vector.body950

vec.epilog.vector.body950:                        ; preds = %vec.epilog.vector.body950, %vec.epilog.ph946
  %index951 = phi i64 [ %vec.epilog.resume.val941, %vec.epilog.ph946 ], [ %index.next954, %vec.epilog.vector.body950 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index951
  %wide.vec952 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !82
  %strided.vec953 = shufflevector <16 x i16> %wide.vec952, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec953 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat949
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index951
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !12
  %index.next954 = add nuw i64 %index951, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next954, %n.vec947
  br i1 %i.cr, label %vec.epilog.scalar.ph943.preheader, label %vec.epilog.vector.body950, !llvm.loop !121

.preheader300:                                    ; preds = %vec.epilog.scalar.ph943
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
  %scevgep531.a = getelementptr i8, ptr %.0233, i64 %i.df ; 3 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count361, 2  ; 2 uses
  %i.dh = add nsw i32 %i.cy, -2
  %i.di = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %scevgep646.a = getelementptr i8, ptr %scevgep645.a, i64 %i.di
  %scevgep650 = getelementptr i8, ptr %.0233, i64 %i.di
  %scevgep654 = getelementptr i8, ptr %scevgep653, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.cw, 2
  %i.dk = add nsw i32 %i.da, -2
  %i.dl = add nuw nsw i64 %i.aj, %i.cw
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep746.a = getelementptr i8, ptr %.0233, i64 %i.dm ; 3 uses
  %i.dn = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %i.do = shl nuw nsw i64 %i.cw, 2
  %i.dp = add nsw i32 %i.da, -2
  %i.dq = mul nsw i64 %i.cw, -4
  %i.dr = shl nuw nsw i64 %wide.trip.count361, 2
  %i.ds = add nsw i64 %i.dr, -4
  %i.dt = mul nsw i64 %i.ds, %i.cw                ; 3 uses
  %scevgep858.a = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep863 = getelementptr i8, ptr %scevgep862, i64 %i.dt
  %scevgep866 = getelementptr i8, ptr %.0233, i64 %i.dt
  %i.du = add nsw i64 %i.cz, -1
  %min.iters.check714 = icmp ult i16 %i.cu, 4
  %min.iters.check716 = icmp ult i16 %i.cu, 32
  %i.dv = and i64 %i.cw, 28
  %n.vec718 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n727 = icmp eq i64 %n.vec718, %i.cw
  %min.epilog.iters.check732 = icmp eq i64 %i.dv, 0
  %n.vec734 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n740 = icmp eq i64 %n.vec734, %i.cw
  %ident.check641.not = icmp eq i16 %i.cu, 1
  %ident.check597.not = icmp eq i16 %i.cu, 1
  %ident.check527 = icmp ne i16 %i.cu, 1
  %i.dw = add nsw i64 %wide.trip.count361, -1
  %min.iters.check498 = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.dx = trunc nsw i64 %i.dc to i32
  %i.dy = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1015 = or i1 %i.dy, %ident.check
  %min.iters.check500 = icmp ult i16 %i.cs, 32
  %i.dz = and i64 %wide.trip.count361, 28
  %n.vec502 = and i64 %wide.trip.count361, 65504  ; 4 uses
  %cmp.n511 = icmp eq i64 %n.vec502, %wide.trip.count361
  %min.epilog.iters.check516 = icmp eq i64 %i.dz, 0
  %n.vec518 = and i64 %wide.trip.count361, 65532  ; 3 uses
  %cmp.n524 = icmp eq i64 %n.vec518, %wide.trip.count361
  %xtraiter987 = and i64 %wide.trip.count361, 3   ; 2 uses
  %lcmp.mod988.not = icmp eq i64 %xtraiter987, 0
  br label %bb.g

vec.epilog.scalar.ph943:                          ; preds = %vec.epilog.scalar.ph943.preheader, %vec.epilog.scalar.ph943
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph943 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph943.preheader ] ; 3 uses
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
  br i1 %exitcond.not, label %.preheader300, label %vec.epilog.scalar.ph943, !llvm.loop !122

.preheader299:                                    ; preds = %.loopexit957
  %invariant.gep442 = getelementptr [4 x i8], ptr %.0233, i64 %i.agw ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader299, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader299 ] ; 4 uses
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
  br i1 %cmp.n, label %.loopexit958, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader299, %middle.block
  %indvars.iv382.ph = phi i64 [ 0, %.preheader299 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.g:                                             ; preds = %.preheader300, %.loopexit957
  %indvars.iv378 = phi i64 [ 0, %.preheader300 ], [ %indvars.iv.next379, %.loopexit957 ] ; 10 uses
  %.0229324 = phi i32 [ 0, %.preheader300 ], [ %i.eu, %.loopexit957 ] ; 3 uses
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
  %smax818 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fr)
  %i.fs = sub nsw i64 %smax818, %i.ey             ; 7 uses
  %scevgep857 = getelementptr i8, ptr %scevgep856.a, i64 %i.fg ; 3 uses
  %i.ft = add nuw nsw i64 %i.fg, %i.fj            ; 3 uses
  %scevgep859.a = getelementptr i8, ptr %scevgep858.a, i64 %i.ft
  %scevgep861.a = getelementptr i8, ptr %scevgep860.a, i64 %i.fj
  %scevgep864 = getelementptr i8, ptr %scevgep863, i64 %i.ft
  %scevgep865 = getelementptr i8, ptr %.0233, i64 %i.ft
  %i.fu = shl nuw nsw i64 %i.ey, 3
  %i.fv = getelementptr i8, ptr %scevgep866, i64 %i.fu
  %scevgep867 = getelementptr i8, ptr %i.fv, i64 %i.fj
  %i.fw = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.fx = getelementptr i8, ptr %.0233, i64 %i.fh
  %i.fy = getelementptr i8, ptr %.0233, i64 %i.fi
  %i.fz = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %i.gb = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.gc = getelementptr i8, ptr %i.gb, i64 4
  %min.iters.check880 = icmp samesign ult i64 %indvars.iv378, 3
  %bound0868 = icmp ult ptr %i.ak, %scevgep859.a
  %bound1869 = icmp ult ptr %i.ew, %scevgep857
  %found.conflict870 = and i1 %bound0868, %bound1869
  %bound0871 = icmp ult ptr %i.ak, %scevgep864
  %bound1872 = icmp ult ptr %scevgep861.a, %scevgep857
  %found.conflict873 = and i1 %bound0871, %bound1872
  %conflict.rdx874 = or i1 %found.conflict870, %found.conflict873
  %bound0875 = icmp ult ptr %i.ak, %scevgep867
  %bound1876 = icmp ult ptr %scevgep865, %scevgep857
  %found.conflict877 = and i1 %bound0875, %bound1876
  %conflict.rdx878 = or i1 %conflict.rdx874, %found.conflict877
  %min.iters.check882 = icmp samesign ult i64 %indvars.iv378, 5
  %n.vec884 = and i64 %i.ey, 2147483616
  %n.vec912 = and i64 %i.ey, 248
  %xtraiter = and i64 %i.ey, 3                    ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv378, 2
  %unroll_iter = and i64 %i.ey, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod973 = icmp ne i64 %xtraiter, 0
  %min.iters.check820 = icmp ult i64 %i.fs, 4
  %invariant.op998 = add i64 %i.fk, -1
  %invariant.op999 = add i64 %i.fn, -1
  %invariant.op1001 = add i64 %i.fq, -1
  %min.iters.check822 = icmp ult i64 %i.fs, 16
  %i.ge = and i64 %i.fs, 12
  %n.vec824 = and i64 %i.fs, -16                  ; 5 uses
  %i.gf = add i64 %n.vec824, %i.ey                ; 2 uses
  %i.gg = add i64 %i.fb, %n.vec824
  %cmp.n835 = icmp eq i64 %i.fs, %n.vec824
  %min.epilog.iters.check842 = icmp eq i64 %i.ge, 0
  %n.vec844 = and i64 %i.fs, -4                   ; 4 uses
  %i.gh = add i64 %n.vec844, %i.ey                ; 2 uses
  %i.gi = add i64 %i.fb, %n.vec844
  %cmp.n852 = icmp eq i64 %i.fs, %n.vec844
  %invariant.op1003.reass = add i64 %i.fd, %invariant.op1019
  br label %iter.check907

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
  %i.gs = shl nuw nsw i64 %i.gm, 2                ; 5 uses
  %i.gt = sub nsw i64 %i.gq, %i.gs
  %i.gu = sub nsw i64 %i.gr, %i.gs
  %reass.sub959 = sub nsw i64 %i.gq, %i.dg
  %i.gv = shl nuw nsw i64 %i.gj, 2                ; 5 uses
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
  %scevgep644 = getelementptr i8, ptr %scevgep643.a, i64 %i.gs ; 3 uses
  %i.hf = getelementptr i8, ptr %scevgep646.a, i64 %i.gs
  %scevgep647 = getelementptr i8, ptr %i.hf, i64 %i.gv
  %scevgep649.a = getelementptr i8, ptr %scevgep648.a, i64 %i.gv
  %i.hg = add nuw nsw i64 %i.gv, %i.gs            ; 2 uses
  %scevgep651 = getelementptr i8, ptr %scevgep650, i64 %i.hg
  %scevgep652 = getelementptr i8, ptr %.0233, i64 %i.hg
  %i.hh = shl nuw nsw i64 %i.gm, 3
  %i.hi = getelementptr i8, ptr %scevgep654, i64 %i.hh
  %scevgep655 = getelementptr i8, ptr %i.hi, i64 %i.gv
  %i.hj = getelementptr i8, ptr %.0233, i64 %i.gr
  %i.hk = getelementptr i8, ptr %.0233, i64 %i.gt
  %i.hl = getelementptr i8, ptr %.0233, i64 %i.gu
  %i.hm = getelementptr i8, ptr %.0233, i64 %reass.sub959
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %i.ho = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.hp = getelementptr i8, ptr %i.ho, i64 4
  %min.iters.check668 = icmp samesign ugt i64 %indvars.iv378, 2
  %or.cond960 = select i1 %min.iters.check668, i1 %ident.check641.not, i1 false
  %bound0656 = icmp ult ptr %i.ak, %scevgep647
  %bound1657 = icmp ult ptr %i.gk, %scevgep644
  %found.conflict658 = and i1 %bound0656, %bound1657
  %bound0659 = icmp ult ptr %i.ak, %scevgep651
  %bound1660 = icmp ult ptr %scevgep649.a, %scevgep644
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx662 = or i1 %found.conflict658, %found.conflict661
  %bound0663 = icmp ult ptr %i.ak, %scevgep655
  %bound1664 = icmp ult ptr %scevgep652, %scevgep644
  %found.conflict665 = and i1 %bound0663, %bound1664
  %conflict.rdx666 = or i1 %conflict.rdx662, %found.conflict665
  %min.iters.check670 = icmp samesign ult i64 %indvars.iv378, 5
  %n.vec672 = and i64 %i.gm, 2147483616
  %n.vec700 = and i64 %i.gm, 248
  %xtraiter978.a = and i64 %i.gm, 1
  %i.hq = icmp eq i64 %indvars.iv378, 0
  %unroll_iter982 = and i64 %i.gm, 2147483646
  %lcmp.mod980.not = icmp eq i64 %xtraiter978.a, 0
  %lcmp.mod981 = icmp eq i64 %indvars.iv378, 0
  %min.iters.check605 = icmp ugt i64 %i.he, 3
  %or.cond961 = select i1 %min.iters.check605, i1 %ident.check597.not, i1 false
  %invariant.op1009 = add i64 %i.gw, -1
  %invariant.op1011 = add i64 %i.gz, -1
  %invariant.op1013 = add i64 %i.hc, -1
  %min.iters.check607 = icmp ult i64 %i.he, 16
  %i.hr = and i64 %i.he, 12
  %n.vec609 = and i64 %i.he, -16                  ; 5 uses
  %i.hs = add i64 %n.vec609, %i.gm                ; 2 uses
  %i.ht = add i64 %i.gp, %n.vec609
  %cmp.n620 = icmp eq i64 %i.he, %n.vec609
  %min.epilog.iters.check627 = icmp eq i64 %i.hr, 0
  %n.vec629 = and i64 %i.he, -4                   ; 4 uses
  %i.hu = add i64 %n.vec629, %i.gm                ; 2 uses
  %i.hv = add i64 %i.gp, %n.vec629
  %cmp.n637 = icmp eq i64 %i.he, %n.vec629
  br label %iter.check695

iter.check907:                                    ; preds = %.lr.ph314.a, %._crit_edge
  %indvars.iv358 = phi i64 [ 0, %.lr.ph314.a ], [ %indvars.iv.next359, %._crit_edge ] ; 5 uses
  %i.hw = mul i64 %i.dq, %indvars.iv358           ; 3 uses
  %i.hx = mul i64 %i.do, %indvars.iv358           ; 5 uses
  %scevgep748.a = getelementptr i8, ptr %i.fw, i64 %i.hx
  %scevgep749.a = getelementptr i8, ptr %i.fx, i64 %i.hx
  %scevgep751 = getelementptr i8, ptr %i.fy, i64 %i.hx
  %scevgep752 = getelementptr i8, ptr %i.ga, i64 %i.hx
  %scevgep754 = getelementptr i8, ptr %i.gc, i64 %i.hx
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx = or i1 %found.conflict, %found.conflict458
  %bound0459 = icmp ult ptr %.0233, %scevgep455
  %bound1460 = icmp ult ptr %invariant.gep438.a, %scevgep
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx, %found.conflict461
  br i1 %conflict.rdx462, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check465, label %vec.epilog.ph, label %vector.ph466

vector.ph466:                                     ; preds = %vector.main.loop.iter.check
  %i.aha = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.ahb = shufflevector <8 x i1> %i.aha, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert468 = insertelement <8 x float> poison, float %i.agu, i64 0
  %broadcast.splat469 = shufflevector <8 x float> %broadcast.splatinsert468, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert470 = insertelement <8 x float> poison, float %i.agv, i64 0
  %broadcast.splat471 = shufflevector <8 x float> %broadcast.splatinsert470, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph466
  %index473 = phi i64 [ 0, %vector.ph466 ], [ %index.next479, %vector.body472 ] ; 4 uses
  %i.ahc = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %index473 ; 2 uses
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 32
  %wide.load474 = load <8 x float>, ptr %i.ahc, align 4, !tbaa !12, !alias.scope !213
  %wide.load475 = load <8 x float>, ptr %i.ahd, align 4, !tbaa !12, !alias.scope !213
  %i.ahe = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %index473 ; 3 uses
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 32   ; 2 uses
  %wide.load476 = load <8 x float>, ptr %i.ahe, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %wide.load477 = load <8 x float>, ptr %i.ahf, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ahg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load476, %wide.load474 ; 4 uses
  %i.ahh = fsub reassoc nsz arcp contract afn <8 x float> %wide.load477, %wide.load475 ; 4 uses
  %i.ahi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ahg, %broadcast.splat471
  %i.ahj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ahh, %broadcast.splat471
  %i.ahk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ahg, %broadcast.splat469
  %i.ahl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ahh, %broadcast.splat469
  %i.ahm = fsub reassoc nsz arcp contract afn <8 x float> %i.ahg, %broadcast.splat469
  %i.ahn = fsub reassoc nsz arcp contract afn <8 x float> %i.ahh, %broadcast.splat469
  %i.aho = select <8 x i1> %i.ahk, <8 x float> %i.ahm, <8 x float> zeroinitializer
  %i.ahp = select <8 x i1> %i.ahl, <8 x float> %i.ahn, <8 x float> zeroinitializer
  %i.ahq = fadd reassoc nsz arcp contract afn <8 x float> %i.ahg, %broadcast.splat469
  %i.ahr = fadd reassoc nsz arcp contract afn <8 x float> %i.ahh, %broadcast.splat469
  %i.ahs = select <8 x i1> %i.ahi, <8 x float> %i.ahq, <8 x float> %i.aho ; 2 uses
  %i.aht = select <8 x i1> %i.ahj, <8 x float> %i.ahr, <8 x float> %i.ahp ; 2 uses
  store <8 x float> %i.ahs, ptr %i.ahe, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  store <8 x float> %i.aht, ptr %i.ahf, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ahu = getelementptr [4 x i8], ptr %.0233, i64 %index473 ; 3 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 32   ; 2 uses
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ahu, <8 x i1> %i.ahb, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %wide.masked.load478 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ahv, <8 x i1> %i.ahb, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ahw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %i.ahs
  %i.ahx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load478, %i.aht
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahw, ptr align 4 %i.ahu, <8 x i1> %i.ahb), !tbaa !12, !alias.scope !216, !noalias !213
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahx, ptr align 4 %i.ahv, <8 x i1> %i.ahb), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next479 = add nuw i64 %index473, 16      ; 2 uses
  %i.ahy = icmp eq i64 %index.next479, %n.vec467
  br i1 %i.ahy, label %middle.block480, label %vector.body472, !llvm.loop !177

middle.block480:                                  ; preds = %vector.body472
  br i1 %cmp.n481, label %.loopexit957, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block480
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec467, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ahz = insertelement <4 x i1> poison, i1 %.not254, i64 0
  %i.aia = shufflevector <4 x i1> %i.ahz, <4 x i1> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert485 = insertelement <4 x float> poison, float %i.agu, i64 0
  %broadcast.splat486 = shufflevector <4 x float> %broadcast.splatinsert485, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert487 = insertelement <4 x float> poison, float %i.agv, i64 0
  %broadcast.splat488 = shufflevector <4 x float> %broadcast.splatinsert487, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index489 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next493, %vec.epilog.vector.body ] ; 4 uses
  %i.aib = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %index489
  %wide.load490 = load <4 x float>, ptr %i.aib, align 4, !tbaa !12, !alias.scope !213
  %i.aic = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %index489 ; 2 uses
  %wide.load491 = load <4 x float>, ptr %i.aic, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aid = fsub reassoc nsz arcp contract afn <4 x float> %wide.load491, %wide.load490 ; 4 uses
  %i.aie = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aid, %broadcast.splat488
  %i.aif = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aid, %broadcast.splat486
  %i.aig = fsub reassoc nsz arcp contract afn <4 x float> %i.aid, %broadcast.splat486
  %i.aih = select <4 x i1> %i.aif, <4 x float> %i.aig, <4 x float> zeroinitializer
  %i.aii = fadd reassoc nsz arcp contract afn <4 x float> %i.aid, %broadcast.splat486
  %i.aij = select <4 x i1> %i.aie, <4 x float> %i.aii, <4 x float> %i.aih ; 2 uses
  store <4 x float> %i.aij, ptr %i.aic, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aik = getelementptr [4 x i8], ptr %.0233, i64 %index489 ; 2 uses
  %wide.masked.load492 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aik, <4 x i1> %i.aia, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ail = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load492, %i.aij
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ail, ptr align 4 %i.aik, <4 x i1> %i.aia), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next493 = add nuw i64 %index489, 4       ; 2 uses
  %i.aim = icmp eq i64 %index.next493, %n.vec482
  br i1 %i.aim, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n494, label %.loopexit957, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv373.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec467, %vec.epilog.iter.check ], [ %n.vec482, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod991.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep439.prol = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %indvars.iv373.ph
  %i.ain = load float, ptr %gep439.prol, align 4, !tbaa !12
  %gep441.prol = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %indvars.iv373.ph ; 2 uses
  %i.aio = load float, ptr %gep441.prol, align 4, !tbaa !12
  %i.aip = fsub reassoc nsz arcp contract afn float %i.aio, %i.ain ; 4 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn olt float %i.aip, %i.agv
  %i.air = fcmp reassoc nsz arcp contract afn ogt float %i.aip, %i.agu
  %i.ais = fsub reassoc nsz arcp contract afn float %i.aip, %i.agu
  %spec.select448.prol = select i1 %i.air, float %i.ais, float 0.000000e+00
  %i.ait = fadd reassoc nsz arcp contract afn float %i.aip, %i.agu
  %.sink.prol = select i1 %i.aiq, float %i.ait, float %spec.select448.prol ; 2 uses
  store float %.sink.prol, ptr %gep441.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv373.ph ; 2 uses
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !12
  %i.aiw = fadd reassoc nsz arcp contract afn float %i.aiv, %.sink.prol
  store float %i.aiw, ptr %i.aiu, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next374.prol = or disjoint i64 %indvars.iv373.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv373.unr = phi i64 [ %indvars.iv373.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next374.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aix = icmp eq i64 %indvars.iv373.ph, %i.bd
  br i1 %i.aix, label %.loopexit957, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv373 = phi i64 [ %indvars.iv.next374.1, %bb.k ], [ %indvars.iv373.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep439.a = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %indvars.iv373
  %i.aiy = load float, ptr %gep439.a, align 4, !tbaa !12
  %gep441.a = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %indvars.iv373 ; 2 uses
  %i.aiz = load float, ptr %gep441.a, align 4, !tbaa !12
  %i.aja = fsub reassoc nsz arcp contract afn float %i.aiz, %i.aiy ; 4 uses
  %i.ajb = fcmp reassoc nsz arcp contract afn olt float %i.aja, %i.agv
  %i.ajc = fcmp reassoc nsz arcp contract afn ogt float %i.aja, %i.agu
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.aja, %i.agu
  %spec.select448 = select i1 %i.ajc, float %i.ajd, float 0.000000e+00
  %i.aje = fadd reassoc nsz arcp contract afn float %i.aja, %i.agu
  %.sink = select i1 %i.ajb, float %i.aje, float %spec.select448 ; 2 uses
  store float %.sink, ptr %gep441.a, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv373 ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !12
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajg, %.sink
  store float %i.ajh, ptr %i.ajf, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 3 uses
  %gep439.1 = getelementptr [4 x i8], ptr %invariant.gep438.a, i64 %indvars.iv.next374
  %i.aji = load float, ptr %gep439.1, align 4, !tbaa !12
  %gep441.1 = getelementptr [4 x i8], ptr %invariant.gep440.a, i64 %indvars.iv.next374 ; 2 uses
  %i.ajj = load float, ptr %gep441.1, align 4, !tbaa !12
  %i.ajk = fsub reassoc nsz arcp contract afn float %i.ajj, %i.aji ; 4 uses
  %i.ajl = fcmp reassoc nsz arcp contract afn olt float %i.ajk, %i.agv
  %i.ajm = fcmp reassoc nsz arcp contract afn ogt float %i.ajk, %i.agu
  %i.ajn = fsub reassoc nsz arcp contract afn float %i.ajk, %i.agu
  %spec.select448.1 = select i1 %i.ajm, float %i.ajn, float 0.000000e+00
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajk, %i.agu
  %.sink.1 = select i1 %i.ajl, float %i.ajo, float %spec.select448.1 ; 2 uses
  store float %.sink.1, ptr %gep441.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next374 ; 2 uses
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !12
  %i.ajr = fadd reassoc nsz arcp contract afn float %i.ajq, %.sink.1
  store float %i.ajr, ptr %i.ajp, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vec.epilog.scalar.ph.1
  %indvars.iv.next374.1 = add nuw nsw i64 %indvars.iv373, 2 ; 2 uses
  %exitcond377.not.1 = icmp eq i64 %indvars.iv.next374.1, %wide.trip.count
  br i1 %exitcond377.not.1, label %.loopexit957, label %vec.epilog.scalar.ph, !llvm.loop !179

.loopexit957:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k, %vec.epilog.middle.block, %middle.block480
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next379, 5
  br i1 %exitcond381.not, label %.preheader299, label %bb.g, !llvm.loop !180

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %scalar.ph ], [ %indvars.iv382.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv382
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !12
  %gep443 = getelementptr [4 x i8], ptr %invariant.gep442, i64 %indvars.iv382
  %i.aju = load float, ptr %gep443, align 4, !tbaa !12
  %i.ajv = fadd reassoc nsz arcp contract afn float %i.aju, %i.ajt ; 2 uses
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.ajv, %i.ajv
  %i.ajx = fmul reassoc nsz arcp contract afn float %i.ajw, f0x37800000
  %i.ajy = fptosi float %i.ajx to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %i.ajy, i32 0)
  %i.ajz = tail call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.aka = trunc nuw i32 %i.ajz to i16
  %gep326 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv382
  store i16 %i.aka, ptr %gep326, align 2, !tbaa !82
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count
  br i1 %exitcond386.not, label %.loopexit958, label %scalar.ph, !llvm.loop !181

.loopexit958:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %._crit_edge329, label %iter.check942, !llvm.loop !182

._crit_edge329:                                   ; preds = %.loopexit958
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.akc, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit295, label %.preheader297

.preheader297:                                    ; preds = %._crit_edge329
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.ake = lshr i32 %i.akc, 4
  %i.akf = and i32 %i.ake, 2                      ; 2 uses
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  %i.akj = load float, ptr %i.aki, align 8, !tbaa !12 ; 2 uses
  %i.akk = and i32 %i.akc, 2
  %i.akl = or disjoint i32 %i.akk, 1
  %i.akm = zext nneg i32 %i.akl to i64            ; 2 uses
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akm
  %i.ako = load float, ptr %i.akn, align 8, !tbaa !12
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akm
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !79
  store i32 %i.akq, ptr %i.b, align 4, !tbaa !79
  %i.akr = lshr i32 %i.akc, 8
  %i.aks = and i32 %i.akr, 2
  %i.akt = zext nneg i32 %i.aks to i64
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akt
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 4
  %i.akw = load float, ptr %i.akv, align 8, !tbaa !12
  %i.akx = insertelement <2 x float> poison, float %i.akj, i64 0
  %i.aky = insertelement <2 x float> %i.akx, float %i.akw, i64 1
  %i.akz = fmul reassoc nsz arcp contract afn <2 x float> %i.aky, splat (float 1.250000e-01)
  %i.ala = insertelement <2 x float> poison, float %i.ako, i64 0
  %i.alb = insertelement <2 x float> %i.ala, float %i.akj, i64 1
  %i.alc = fdiv reassoc nsz arcp contract afn <2 x float> %i.akz, %i.alb
  store <2 x float> %i.alc, ptr %i.a, align 8, !tbaa !12
  %i.ald = zext nneg i32 %i.akf to i64
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !79
  %i.alh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.alg, ptr %i.alh, align 4, !tbaa !79
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.alk = load i16, ptr %i.alj, align 4, !tbaa !85
  %i.all = icmp ugt i16 %i.alk, 2
  br i1 %i.all, label %.preheader.lr.ph, label %.loopexit295

.preheader.lr.ph:                                 ; preds = %.preheader297
  %i.alm = load i16, ptr %i.ali, align 2, !tbaa !86 ; 2 uses
  %i.aln = zext i16 %i.alm to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.aln, 2
  %i.alo = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.alp = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.aln
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.als = load float, ptr %i.alr, align 4, !tbaa !212
  %i.alt = fmul reassoc nsz arcp contract afn float %i.als, f0x3B000000 ; 4 uses
  %i.alu = fneg reassoc nsz arcp contract afn float %i.alt
  br label %.preheader

.loopexit293:                                     ; preds = %bb.m, %._crit_edge339
  %i.alv = phi i16 [ %i.anl, %._crit_edge339 ], [ %i.aqs, %bb.m ]
  %i.alw = load i16, ptr %i.alj, align 4, !tbaa !85
  %i.alx = zext i16 %i.alw to i32
  %i.aly = add nsw i32 %i.alx, -1
  %i.alz = icmp slt i32 %.pre415, %i.aly
  br i1 %i.alz, label %.preheader, label %.loopexit295, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit293
  %i.ama = phi i16 [ %i.alm, %.preheader.lr.ph ], [ %i.alv, %.loopexit293 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.alo, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit293 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.alp, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit293 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit293 ] ; 2 uses
  %.0344 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit293 ] ; 3 uses
  %.3226343 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre415, %.loopexit293 ] ; 6 uses
  %.not253336 = icmp sgt i32 %.0344, %.3226343
  %.pre415 = add nuw i32 %.3226343, 1             ; 3 uses
  br i1 %.not253336, label %._crit_edge339, label %.lr.ph338

.loopexit:                                        ; preds = %bb.l, %.lr.ph338
  %i.amb = phi i16 [ %i.amd, %.lr.ph338 ], [ %i.ani, %bb.l ] ; 2 uses
  %i.amc = phi i16 [ %i.ame, %.lr.ph338 ], [ %i.ani, %bb.l ]
  %exitcond406.not = icmp eq i32 %.1337, %.3226343
  br i1 %exitcond406.not, label %._crit_edge339, label %.lr.ph338, !llvm.loop !184

.lr.ph338:                                        ; preds = %.preheader, %.loopexit
  %i.amd = phi i16 [ %i.amb, %.loopexit ], [ %i.ama, %.preheader ]
  %i.ame = phi i16 [ %i.amc, %.loopexit ], [ %i.ama, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1337 = phi i32 [ %i.amf, %.loopexit ], [ %.0344, %.preheader ] ; 2 uses
  %i.amf = add nsw i32 %.1337, 1                  ; 3 uses
  %i.amg = shl i32 %i.amf, 1
  %i.amh = and i32 %i.amg, 14                     ; 2 uses
  %i.ami = shl nuw nsw i32 %i.amh, 1
  %i.amj = or disjoint i32 %i.ami, 2
  %i.amk = lshr i32 %i.akc, %i.amj                ; 2 uses
  %i.aml = and i32 %i.amk, 1                      ; 2 uses
  %i.amm = zext i16 %i.ame to i32
  %i.amn = icmp samesign ult i32 %i.aml, %i.amm
  br i1 %i.amn, label %.lr.ph335, label %.loopexit

.lr.ph335:                                        ; preds = %.lr.ph338
  %i.amo = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.amp = and i32 %i.amk, 1
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = or disjoint i32 %i.aml, %i.amh
  %i.ams = shl nuw nsw i32 %i.amr, 1
  %i.amt = lshr i32 %i.akc, %i.ams
  %i.amu = and i32 %i.amt, 3
  %i.amv = zext nneg i32 %i.amu to i64
  %invariant.gep444 = getelementptr [2 x i8], ptr %i.amo, i64 %i.amv
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph335, %bb.l
  %indvars.iv403 = phi i64 [ %i.amq, %.lr.ph335 ], [ %indvars.iv.next404, %bb.l ] ; 3 uses
  %i.amw = load i16, ptr %i.alq, align 4, !tbaa !87
  %i.amx = zext i16 %i.amw to i32                 ; 2 uses
  %i.amy = ashr i32 %i.amf, %i.amx
  %i.amz = load i16, ptr %i.d, align 2, !tbaa !187
  %i.ana = zext i16 %i.amz to i32
  %i.anb = mul nsw i32 %i.amy, %i.ana
  %i.anc = trunc nuw nsw i64 %indvars.iv403 to i32
  %i.and = lshr i32 %i.anc, %i.amx
  %i.ane = add nsw i32 %i.anb, %i.and
  %i.anf = sext i32 %i.ane to i64
  %gep445 = getelementptr [8 x i8], ptr %invariant.gep444, i64 %i.anf
  %i.ang = load i16, ptr %gep445, align 2, !tbaa !82
  %i.anh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv403
  store i16 %i.ang, ptr %i.anh, align 2, !tbaa !82
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 2 ; 2 uses
  %i.ani = load i16, ptr %i.ali, align 2, !tbaa !86 ; 3 uses
  %i.anj = zext i16 %i.ani to i64
  %i.ank = icmp samesign ult i64 %indvars.iv.next404, %i.anj
  br i1 %i.ank, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge339:                                   ; preds = %.loopexit, %.preheader
  %i.anl = phi i16 [ %i.ama, %.preheader ], [ %i.amb, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0344, %.preheader ], [ %.pre415, %.loopexit ]
  %i.anm = shl nuw nsw i32 %.3226343, 1
  %i.ann = and i32 %i.anm, 14                     ; 2 uses
  %i.ano = shl nuw nsw i32 %i.ann, 1
  %i.anp = lshr i32 %i.akc, %i.ano                ; 3 uses
  %i.anq = and i32 %i.anp, 1
  %i.anr = add nuw nsw i32 %i.anq, 1
  %i.ans = zext i16 %i.anl to i32
  %i.ant = add nsw i32 %i.ans, -1
  %i.anu = icmp slt i32 %i.anr, %i.ant
  br i1 %i.anu, label %.lr.ph342, label %.loopexit293

.lr.ph342:                                        ; preds = %._crit_edge339
  %i.anv = and i32 %.3226343, 1                   ; 2 uses
  %i.anw = xor i32 %i.anv, 1
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anx
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !79
  %i.aoa = zext nneg i32 %i.anv to i64            ; 2 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aoa
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !12
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aoa
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !79
  %i.aof = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.aog = and i32 %i.anp, 1
  %i.aoh = and i32 %i.anp, 1
  %narrow = add nuw nsw i32 %i.aoh, 1
  %i.aoi = zext nneg i32 %narrow to i64
  %i.aoj = shl i32 %i.anz, 2
  %i.aok = or disjoint i32 %i.aog, %i.ann
  %i.aol = shl nuw nsw i32 %i.aok, 1
  %i.aom = xor i32 %i.aol, 2
  %i.aon = lshr i32 %i.akc, %i.aom
  %i.aoo = and i32 %i.aon, 3
  %i.aop = zext nneg i32 %i.aoo to i64
  %invariant.gep446 = getelementptr inbounds nuw [2 x i8], ptr %i.aof, i64 %i.aop
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph342, %bb.m
  %indvars.iv407 = phi i64 [ %i.aoi, %.lr.ph342 ], [ %indvars.iv.next408, %bb.m ] ; 5 uses
  %i.aoq = add nsw i64 %indvars.iv407, -1         ; 2 uses
  %i.aor = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.aoq
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !82
  %i.aot = zext i16 %i.aos to i32
  %i.aou = add nuw nsw i64 %indvars.iv407, 1      ; 2 uses
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.aou
  %i.aow = load i16, ptr %i.aov, align 2, !tbaa !82
  %i.aox = zext i16 %i.aow to i32
  %i.aoy = add nuw nsw i32 %i.aox, %i.aot
  %i.aoz = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.aoq
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !82
  %i.apb = zext i16 %i.apa to i32
  %i.apc = add nuw nsw i32 %i.aoy, %i.apb
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.aou
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !82
  %i.apf = zext i16 %i.ape to i32
  %i.apg = add nuw nsw i32 %i.apc, %i.apf
  %i.aph = sub i32 %i.apg, %i.aoj
  %i.api = sitofp reassoc nsz arcp contract afn i32 %i.aph to float
  %i.apj = fmul reassoc nsz arcp contract afn float %i.aoc, %i.api
  %i.apk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv407
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !82
  %i.apm = zext i16 %i.apl to i32
  %i.apn = add nsw i32 %i.aoe, %i.apm
  %i.apo = sitofp reassoc nsz arcp contract afn i32 %i.apn to float
  %i.app = fmul reassoc nnan nsz arcp contract afn float %i.apo, 5.000000e-01
  %i.apq = fadd reassoc nsz arcp contract afn float %i.app, %i.apj ; 2 uses
  %i.apr = fcmp reassoc nsz arcp contract afn olt float %i.apq, 0.000000e+00
  %i.aps = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.apq)
  %spec.select284 = select reassoc nsz arcp contract afn i1 %i.apr, float 0.000000e+00, float %i.aps ; 2 uses
  %i.apt = load i16, ptr %i.alq, align 4, !tbaa !87
  %i.apu = zext i16 %i.apt to i32                 ; 2 uses
  %i.apv = lshr i32 %.3226343, %i.apu
  %i.apw = load i16, ptr %i.d, align 2, !tbaa !187
  %i.apx = zext i16 %i.apw to i32
  %i.apy = mul nuw nsw i32 %i.apv, %i.apx
  %i.apz = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.aqa = lshr i32 %i.apz, %i.apu
  %i.aqb = add nuw nsw i32 %i.apy, %i.aqa
  %i.aqc = zext nneg i32 %i.aqb to i64
  %gep447 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep446, i64 %i.aqc ; 2 uses
  %i.aqd = load i16, ptr %gep447, align 2, !tbaa !82
  %i.aqe = uitofp reassoc nsz arcp contract afn i16 %i.aqd to float
  %i.aqf = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aqe)
  %i.aqg = fsub reassoc nsz arcp contract afn float %i.aqf, %spec.select284 ; 4 uses
  %i.aqh = fcmp reassoc nsz arcp contract afn olt float %i.aqg, %i.alu
  %i.aqi = fadd reassoc nsz arcp contract afn float %i.aqg, %i.alt
  %i.aqj = fcmp reassoc nsz arcp contract afn ogt float %i.aqg, %i.alt
  %i.aqk = fsub reassoc nsz arcp contract afn float %i.aqg, %i.alt
  %spec.select259 = select nsz i1 %i.aqj, float %i.aqk, float 0.000000e+00
  %.0232 = select nsz i1 %i.aqh, float %i.aqi, float %spec.select259
  %i.aql = fadd reassoc nsz arcp contract afn float %.0232, %spec.select284 ; 2 uses
  %i.aqm = fmul reassoc nsz arcp contract afn float %i.aql, %i.aql
  %i.aqn = fpext reassoc nsz arcp contract afn float %i.aqm to double
  %i.aqo = fadd reassoc nsz arcp contract afn double %i.aqn, 5.000000e-01
  %i.aqp = fptosi double %i.aqo to i32
  %3 = tail call i32 @llvm.smax.i32(i32 %i.aqp, i32 0)
  %i.aqq = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.aqr = trunc nuw i32 %i.aqq to i16
  store i16 %i.aqr, ptr %gep447, align 2, !tbaa !82
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %i.aqs = load i16, ptr %i.ali, align 2, !tbaa !86 ; 2 uses
  %i.aqt = zext i16 %i.aqs to i64
  %i.aqu = add nsw i64 %i.aqt, -1
  %i.aqv = icmp slt i64 %indvars.iv.next408, %i.aqu
  br i1 %i.aqv, label %bb.m, label %.loopexit293, !llvm.loop !186

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
  %index.next484 = add nuw i64 %index479, 32      ; 2 uses
  %i.ld = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.ld, label %middle.block485, label %vector.body478, !llvm.loop !271

middle.block485:                                  ; preds = %vector.body478
  br i1 %cmp.n486, label %.preheader206, label %vec.epilog.iter.check490

vec.epilog.iter.check490:                         ; preds = %middle.block485
  br i1 %min.epilog.iters.check491, label %.lr.ph262.preheader, label %vec.epilog.ph492, !prof !83

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check490
  %vec.epilog.resume.val487 = phi i64 [ %n.vec477, %vec.epilog.iter.check490 ], [ 0, %vector.main.loop.iter.check474 ]
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph492
  %index495 = phi i64 [ %vec.epilog.resume.val487, %vec.epilog.ph492 ], [ %index.next497, %vec.epilog.vector.body494 ] ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.dc, i64 %index495 ; 2 uses
  %wide.load496 = load <4 x float>, ptr %i.le, align 4, !tbaa !12
  %i.lf = fcmp reassoc nsz arcp contract afn oeq <4 x float> %wide.load496, zeroinitializer
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float 1.000000e+00), ptr align 4 %i.le, <4 x i1> %i.lf), !tbaa !12
  %index.next497 = add nuw i64 %index495, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next497, %n.vec493
  br i1 %i.lg, label %vec.epilog.middle.block498, label %vec.epilog.vector.body494, !llvm.loop !272

vec.epilog.middle.block498:                       ; preds = %vec.epilog.vector.body494
  br i1 %cmp.n499, label %.preheader206, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check488, %vec.epilog.iter.check490, %vec.epilog.middle.block498
  %indvars.iv354.ph = phi i64 [ 0, %iter.check488 ], [ %n.vec477, %vec.epilog.iter.check490 ], [ %n.vec493, %vec.epilog.middle.block498 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.aj, %middle.block485, %vec.epilog.middle.block498, %._crit_edge463
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
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372374, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.ll = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.lm = mul nuw nsw i64 %indvars.iv364, %i.dm
  %invariant.gep454 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.lm
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372379 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372374, %._crit_edge270 ] ; 2 uses
  %i.ln = phi i16 [ %.pre372, %.preheader202 ], [ %i.no, %._crit_edge270 ] ; 2 uses
  %i.lo = phi i16 [ %.pre372, %.preheader202 ], [ %i.np, %._crit_edge270 ] ; 3 uses
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
  %gep455 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep454, i64 %indvars.iv359
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372378 = phi i16 [ %.pre372379, %.lr.ph269 ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.lv = phi i16 [ %i.ln, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ] ; 2 uses
  %i.lw = phi i16 [ %i.lo, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ] ; 2 uses
  %i.lx = phi i32 [ %i.lq, %.lr.ph269 ], [ %i.nl, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.lr, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.ly = mul i32 %i.lx, %indvars361              ; 2 uses
  %i.lz = zext nneg i16 %i.lw to i32
  %i.ma = lshr i32 4, %i.lz
  %i.mb = mul i32 %i.ma, %i.lu
  %i.mc = icmp ult i32 %i.ly, %i.mb
  br i1 %i.mc, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.al
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.me = load i32, ptr %i.lh, align 4, !tbaa !79
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph265, %bb.ap
  %.pre372377 = phi i16 [ %.pre372378, %.lr.ph265 ], [ %.pre372376, %bb.ap ] ; 2 uses
  %i.mf = phi i16 [ %i.lv, %.lr.ph265 ], [ %i.nb, %bb.ap ] ; 2 uses
  %i.mg = phi i16 [ %i.lw, %.lr.ph265 ], [ %i.nc, %bb.ap ] ; 2 uses
  %.1159263 = phi i32 [ %i.ly, %.lr.ph265 ], [ %i.nd, %bb.ap ] ; 2 uses
  %i.mh = load i16, ptr %i.cv, align 2, !tbaa !86
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
  %i.mv = load float, ptr %gep455, align 4, !tbaa !12
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mu
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  %i.my = icmp slt i32 %i.mp, %i.mx
  br i1 %i.my, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 65535)
  %i.na = trunc nuw i32 %i.mz to i16
  store i16 %i.na, ptr %i.mn, align 2, !tbaa !82
  %.pre373 = load i16, ptr %i.cq, align 4, !tbaa !87 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %.pre372376 = phi i16 [ %.pre372377, %bb.am ], [ %.pre373, %bb.ao ], [ %.pre372377, %bb.an ] ; 2 uses
  %i.nb = phi i16 [ %i.mf, %bb.am ], [ %.pre373, %bb.ao ], [ %i.mf, %bb.an ] ; 2 uses
  %i.nc = phi i16 [ %i.mg, %bb.am ], [ %.pre373, %bb.ao ], [ %i.mg, %bb.an ] ; 2 uses
  %i.nd = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.ne = zext nneg i16 %i.nc to i32
  %i.nf = lshr i32 4, %i.ne
  %i.ng = mul i32 %i.nf, %i.lu
  %i.nh = icmp samesign ult i32 %i.nd, %i.ng
  br i1 %i.nh, label %bb.am, label %._crit_edge266, !llvm.loop !274

._crit_edge266:                                   ; preds = %bb.ap, %bb.al
  %.pre372375 = phi i16 [ %.pre372378, %bb.al ], [ %.pre372376, %bb.ap ] ; 2 uses
  %i.ni = phi i16 [ %i.lv, %bb.al ], [ %i.nb, %bb.ap ] ; 5 uses
  %i.nj = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.nk = zext nneg i16 %i.ni to i32
  %i.nl = lshr i32 4, %i.nk                       ; 2 uses
  %i.nm = mul i32 %i.nl, %i.ll
  %i.nn = icmp samesign ult i32 %i.nj, %i.nm
  br i1 %i.nn, label %bb.al, label %._crit_edge270, !llvm.loop !275

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.ak
  %.pre372374 = phi i16 [ %.pre372379, %bb.ak ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.no = phi i16 [ %i.ln, %bb.ak ], [ %i.ni, %._crit_edge266 ]
  %i.np = phi i16 [ %i.lo, %bb.ak ], [ %i.ni, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.dm
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.ak, !llvm.loop !276

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.cz
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !277

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.e
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.nq = load i32, ptr %i.f, align 4, !tbaa !80  ; 2 uses
  %i.nr = zext i32 %i.nq to i64
  %i.ns = icmp samesign ult i64 %indvars.iv.next370, %i.nr
  br i1 %i.ns, label %bb.e, label %._crit_edge279, !llvm.loop !278

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
!92 = distinct !{!92, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !13, !14, !15}
!97 = distinct !{!97, !13, !14, !15}
!98 = distinct !{!98, !13, !14, !15}
!99 = distinct !{!99, !13, !14, !15}
!100 = distinct !{!100, !13, !14}
!101 = distinct !{!101, !"LVerDomain"}
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
!124 = distinct !{!124, !"LVerDomain"}
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
