Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.ca = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, splat (float 2.560000e+02)
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.560000e+02)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.560000e+02)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.560000e+02)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index926 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !12
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !12
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !12
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !12
  %index.next933 = add nuw i64 %index926, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next933, %n.vec922
  br i1 %i.cj, label %vec.epilog.iter.check938, label %vector.body925, !llvm.loop !120

vec.epilog.iter.check938:                         ; preds = %vector.body925
  br i1 %min.epilog.iters.check939, label %vec.epilog.scalar.ph937.preheader, label %vec.epilog.ph940, !prof !83

vec.epilog.scalar.ph937.preheader:                ; preds = %vec.epilog.vector.body944, %iter.check936, %vec.epilog.iter.check938
  %indvars.iv.ph = phi i64 [ 0, %iter.check936 ], [ %n.vec922, %vec.epilog.iter.check938 ], [ %n.vec941, %vec.epilog.vector.body944 ]
  br label %vec.epilog.scalar.ph937

vec.epilog.ph940:                                 ; preds = %vector.main.loop.iter.check919, %vec.epilog.iter.check938
  %vec.epilog.resume.val935 = phi i64 [ %n.vec922, %vec.epilog.iter.check938 ], [ 0, %vector.main.loop.iter.check919 ]
  br label %vec.epilog.vector.body944

vec.epilog.vector.body944:                        ; preds = %vec.epilog.vector.body944, %vec.epilog.ph940
  %index945 = phi i64 [ %vec.epilog.resume.val935, %vec.epilog.ph940 ], [ %index.next948, %vec.epilog.vector.body944 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index945
  %wide.vec946 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !82
  %strided.vec947 = shufflevector <16 x i16> %wide.vec946, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec947 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat943
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index945
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !12
  %index.next948 = add nuw i64 %index945, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next948, %n.vec941
  br i1 %i.cr, label %vec.epilog.scalar.ph937.preheader, label %vec.epilog.vector.body944, !llvm.loop !121

.preheader294:                                    ; preds = %vec.epilog.scalar.ph937
  %i.cs = load i16, ptr %i.g, align 4, !tbaa !188 ; 7 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %.not339 = icmp eq i16 %i.cs, 0                 ; 2 uses
  %i.cu = load i16, ptr %i.d, align 2, !tbaa !187 ; 12 uses
  %i.cv = zext i16 %i.cu to i32                   ; 6 uses
  %.not340 = icmp eq i16 %i.cu, 0                 ; 2 uses
  %i.cw = zext i16 %i.cu to i64                   ; 34 uses
  %i.cx = zext i16 %i.cs to i64                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ct, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.cy, -2           ; 5 uses
  %i.cz = zext i16 %i.cu to i64                   ; 10 uses
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 3 uses
  %wide.trip.count355 = zext i16 %i.cs to i64     ; 16 uses
  %i.db = add nsw i32 %i.da, -2                   ; 5 uses
  %wide.trip.count350 = zext i16 %i.cu to i64
  %wide.trip.count365 = zext i16 %i.cu to i64
  %wide.trip.count360 = zext i16 %i.cs to i64
  %i.dc = add nsw i64 %wide.trip.count355, -1     ; 2 uses
  %i.dd = add nsw i32 %i.cy, -2
  %i.de = add nuw nsw i64 %i.aj, %wide.trip.count355
  %i.df = shl nuw nsw i64 %i.de, 2
  %scevgep525 = getelementptr i8, ptr %.0233, i64 %i.df ; 3 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count355, 2  ; 2 uses
  %i.dh = add nsw i32 %i.cy, -2
  %i.di = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %i.di
  %scevgep644 = getelementptr i8, ptr %.0233, i64 %i.di
  %scevgep648 = getelementptr i8, ptr %scevgep647, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.cw, 2
  %i.dk = add nsw i32 %i.da, -2
  %i.dl = add nuw nsw i64 %i.aj, %i.cw
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep740 = getelementptr i8, ptr %.0233, i64 %i.dm ; 3 uses
  %i.dn = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %i.do = shl nuw nsw i64 %i.cw, 2
  %i.dp = add nsw i32 %i.da, -2
  %i.dq = mul nsw i64 %i.cw, -4
  %i.dr = shl nuw nsw i64 %wide.trip.count355, 2
  %i.ds = add nsw i64 %i.dr, -4
  %i.dt = mul nsw i64 %i.ds, %i.cw                ; 3 uses
  %scevgep852 = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep857 = getelementptr i8, ptr %scevgep856, i64 %i.dt
  %scevgep860 = getelementptr i8, ptr %.0233, i64 %i.dt
  %i.du = add nsw i64 %i.cz, -1
  %min.iters.check708 = icmp ult i16 %i.cu, 4
  %min.iters.check710 = icmp ult i16 %i.cu, 32
  %i.dv = and i64 %i.cw, 28
  %n.vec712 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n721 = icmp eq i64 %n.vec712, %i.cw
  %min.epilog.iters.check726 = icmp eq i64 %i.dv, 0
  %n.vec728 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n734 = icmp eq i64 %n.vec728, %i.cw
  %ident.check635.not = icmp eq i16 %i.cu, 1
  %ident.check591.not = icmp eq i16 %i.cu, 1
  %ident.check521 = icmp ne i16 %i.cu, 1
  %i.dw = add nsw i64 %wide.trip.count355, -1
  %min.iters.check492 = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.dx = trunc nsw i64 %i.dc to i32
  %i.dy = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1009 = or i1 %i.dy, %ident.check
  %min.iters.check494 = icmp ult i16 %i.cs, 32
  %i.dz = and i64 %wide.trip.count355, 28
  %n.vec496 = and i64 %wide.trip.count355, 65504  ; 4 uses
  %cmp.n505 = icmp eq i64 %n.vec496, %wide.trip.count355
  %min.epilog.iters.check510 = icmp eq i64 %i.dz, 0
  %n.vec512 = and i64 %wide.trip.count355, 65532  ; 3 uses
  %cmp.n518 = icmp eq i64 %n.vec512, %wide.trip.count355
  %xtraiter981 = and i64 %wide.trip.count355, 3   ; 2 uses
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  br label %bb.g

vec.epilog.scalar.ph937:                          ; preds = %vec.epilog.scalar.ph937.preheader, %vec.epilog.scalar.ph937
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph937 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph937.preheader ] ; 3 uses
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
  br i1 %exitcond.not, label %.preheader294, label %vec.epilog.scalar.ph937, !llvm.loop !122

.preheader293:                                    ; preds = %.loopexit951
  %invariant.gep436 = getelementptr [4 x i8], ptr %.0233, i64 %i.agu ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader293, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader293 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !12
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep436, i64 %index
  %wide.load446 = load <8 x float>, ptr %i.ei, align 4, !tbaa !12
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %wide.load446, %wide.load ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, splat (float f0x37800000)
  %i.em = fptosi <8 x float> %i.el to <8 x i32>
  %i.en = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.em, <8 x i32> splat (i32 65535))
  %i.eo = trunc nuw <8 x i32> %i.en to <8 x i16>
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.eq = shufflevector <8 x i16> %i.eo, <8 x i16> poison, <29 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v29i16.p0(<29 x i16> %i.eq, ptr align 2 %i.ep, <29 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit952, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader293, %middle.block
  %indvars.iv376.ph = phi i64 [ 0, %.preheader293 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.g:                                             ; preds = %.preheader294, %.loopexit951
  %indvars.iv372 = phi i64 [ 0, %.preheader294 ], [ %indvars.iv.next373, %.loopexit951 ] ; 10 uses
  %.0229318 = phi i32 [ 0, %.preheader294 ], [ %i.eu, %.loopexit951 ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv372 to i32 ; 5 uses
  %i.et = and i32 %i.es, 1
  %i.eu = shl nuw i32 %i.aa, %i.et                ; 6 uses
  br i1 %.not339, label %.preheader292, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.g
  %i.ev = zext i32 %.0229318 to i64               ; 5 uses
  %i.ew = getelementptr [4 x i8], ptr %.0233, i64 %i.ev ; 2 uses
  %i.ex = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 32 uses
  %i.ez = shl nuw nsw i32 2, %i.es
  %i.fa = icmp samesign ult i32 %i.ez, %i.cv
  %i.fb = shl nuw nsw i64 %i.ey, 1                ; 6 uses
  %invariant.op.i = sub nsw i64 %i.cw, %i.ey      ; 2 uses
  %i.fc = sext i32 %i.eu to i64                   ; 2 uses
  %invariant.gep430 = getelementptr [4 x i8], ptr %.0233, i64 %i.fc
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
  %smax812 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fr)
  %i.fs = sub nsw i64 %smax812, %i.ey             ; 7 uses
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.fg ; 3 uses
  %i.ft = add nuw nsw i64 %i.fj, %i.fg            ; 3 uses
  %scevgep853 = getelementptr i8, ptr %scevgep852, i64 %i.ft
  %scevgep855 = getelementptr i8, ptr %scevgep854, i64 %i.fj
  %scevgep858 = getelementptr i8, ptr %scevgep857, i64 %i.ft
  %scevgep859 = getelementptr i8, ptr %.0233, i64 %i.ft
  %i.fu = shl nuw nsw i64 %i.ey, 3
  %i.fv = getelementptr i8, ptr %scevgep860, i64 %i.fu
  %scevgep861 = getelementptr i8, ptr %i.fv, i64 %i.fj
  %i.fw = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.fx = getelementptr i8, ptr %.0233, i64 %i.fh
  %i.fy = getelementptr i8, ptr %.0233, i64 %i.fi
  %i.fz = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %i.gb = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.gc = getelementptr i8, ptr %i.gb, i64 4
  %min.iters.check874 = icmp samesign ult i64 %indvars.iv372, 3
  %bound0862 = icmp ult ptr %i.ak, %scevgep853
  %bound1863 = icmp ult ptr %i.ew, %scevgep851
  %found.conflict864 = and i1 %bound0862, %bound1863
  %bound0865 = icmp ult ptr %i.ak, %scevgep858
  %bound1866 = icmp ult ptr %scevgep855, %scevgep851
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %found.conflict864, %found.conflict867
  %bound0869 = icmp ult ptr %i.ak, %scevgep861
  %bound1870 = icmp ult ptr %scevgep859, %scevgep851
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  %min.iters.check876 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec878 = and i64 %i.ey, 2147483616
  %n.vec906 = and i64 %i.ey, 248
  %xtraiter = and i64 %i.ey, 3                    ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv372, 2
  %unroll_iter = and i64 %i.ey, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod967 = icmp ne i64 %xtraiter, 0
  %min.iters.check814 = icmp ult i64 %i.fs, 4
  %invariant.op992 = add i64 %i.fk, -1
  %invariant.op993 = add i64 %i.fn, -1
  %invariant.op995 = add i64 %i.fq, -1
  %min.iters.check816 = icmp ult i64 %i.fs, 16
  %i.ge = and i64 %i.fs, 12
  %n.vec818 = and i64 %i.fs, -16                  ; 5 uses
  %i.gf = add i64 %n.vec818, %i.ey                ; 2 uses
  %i.gg = add i64 %i.fb, %n.vec818
  %cmp.n829 = icmp eq i64 %i.fs, %n.vec818
  %min.epilog.iters.check836 = icmp eq i64 %i.ge, 0
  %n.vec838 = and i64 %i.fs, -4                   ; 4 uses
  %i.gh = add i64 %n.vec838, %i.ey                ; 2 uses
  %i.gi = add i64 %i.fb, %n.vec838
  %cmp.n846 = icmp eq i64 %i.fs, %n.vec838
  %invariant.op997.reass = add i64 %i.fd, %invariant.op1013
  br label %iter.check901

.preheader292:                                    ; preds = %._crit_edge, %bb.g
  br i1 %.not340, label %iter.check, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader292
  %i.gj = zext i32 %i.eu to i64                   ; 5 uses
  %i.gk = getelementptr [4 x i8], ptr %.0233, i64 %i.gj ; 2 uses
  %i.gl = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 34 uses
  %i.gn = shl nuw nsw i32 2, %i.es
  %i.go = icmp samesign ult i32 %i.gn, %i.ct
  %i.gp = shl nuw nsw i64 %i.gm, 1                ; 6 uses
  %invariant.op.i266 = sub nsw i64 %i.cx, %i.gm   ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gr = add nuw nsw i64 %i.dg, %i.gq            ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gm, 2                ; 4 uses
  %i.gt = sub nsw i64 %i.gq, %i.gs
  %i.gu = sub nsw i64 %i.gr, %i.gs
  %reass.sub953 = sub nsw i64 %i.gq, %i.dg
  %i.gv = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gw = sub nsw i64 %i.av, %i.gv
  %i.gx = add nuw nsw i64 %i.aj, %i.gm
  %i.gy = sub nsw i64 %i.gx, %i.gj
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = add nuw nsw i64 %i.gj, %i.gm
  %i.hb = sub nsw i64 %i.aj, %i.ha
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.gm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.hd)
  %i.he = sub nsw i64 %smax, %i.gm                ; 7 uses
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.gs ; 3 uses
  %1 = add nuw nsw i64 %i.gv, %i.gs               ; 3 uses
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %1
  %scevgep643 = getelementptr i8, ptr %scevgep642, i64 %i.gv
  %scevgep645 = getelementptr i8, ptr %scevgep644, i64 %1
  %scevgep646 = getelementptr i8, ptr %.0233, i64 %1
  %i.hf = shl nuw nsw i64 %i.gm, 3
  %i.hg = getelementptr i8, ptr %scevgep648, i64 %i.hf
  %scevgep649 = getelementptr i8, ptr %i.hg, i64 %i.gv
  %i.hh = getelementptr i8, ptr %.0233, i64 %i.gr
  %i.hi = getelementptr i8, ptr %.0233, i64 %i.gt
  %i.hj = getelementptr i8, ptr %.0233, i64 %i.gu
  %i.hk = getelementptr i8, ptr %.0233, i64 %reass.sub953
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %i.hm = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.hn = getelementptr i8, ptr %i.hm, i64 4
  %min.iters.check662 = icmp samesign ugt i64 %indvars.iv372, 2
  %or.cond954 = select i1 %min.iters.check662, i1 %ident.check635.not, i1 false
  %bound0650 = icmp ult ptr %i.ak, %scevgep641
  %bound1651 = icmp ult ptr %i.gk, %scevgep638
  %found.conflict652 = and i1 %bound0650, %bound1651
  %bound0653 = icmp ult ptr %i.ak, %scevgep645
  %bound1654 = icmp ult ptr %scevgep643, %scevgep638
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %found.conflict652, %found.conflict655
  %bound0657 = icmp ult ptr %i.ak, %scevgep649
  %bound1658 = icmp ult ptr %scevgep646, %scevgep638
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %min.iters.check664 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec666 = and i64 %i.gm, 2147483616
  %n.vec694 = and i64 %i.gm, 248
  %xtraiter972 = and i64 %i.gm, 1
  %i.ho = icmp eq i64 %indvars.iv372, 0
  %unroll_iter976 = and i64 %i.gm, 2147483646
  %lcmp.mod974.not = icmp eq i64 %xtraiter972, 0
  %lcmp.mod975 = icmp eq i64 %indvars.iv372, 0
  %min.iters.check599 = icmp ugt i64 %i.he, 3
  %or.cond955 = select i1 %min.iters.check599, i1 %ident.check591.not, i1 false
  %invariant.op1003 = add i64 %i.gw, -1
  %invariant.op1005 = add i64 %i.gz, -1
  %invariant.op1007 = add i64 %i.hc, -1
  %min.iters.check601 = icmp ult i64 %i.he, 16
  %i.hp = and i64 %i.he, 12
  %n.vec603 = and i64 %i.he, -16                  ; 5 uses
  %i.hq = add i64 %n.vec603, %i.gm                ; 2 uses
  %i.hr = add i64 %i.gp, %n.vec603
  %cmp.n614 = icmp eq i64 %i.he, %n.vec603
  %min.epilog.iters.check621 = icmp eq i64 %i.hp, 0
  %n.vec623 = and i64 %i.he, -4                   ; 4 uses
  %i.hs = add i64 %n.vec623, %i.gm                ; 2 uses
  %i.ht = add i64 %i.gp, %n.vec623
  %cmp.n631 = icmp eq i64 %i.he, %n.vec623
  br label %iter.check689

iter.check901:                                    ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv352 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next353, %._crit_edge ] ; 5 uses
  %i.hu = mul i64 %i.dq, %indvars.iv352           ; 3 uses
  %i.hv = mul i64 %i.do, %indvars.iv352           ; 5 uses
  %scevgep742 = getelementptr i8, ptr %i.fw, i64 %i.hv
  %scevgep743 = getelementptr i8, ptr %i.fx, i64 %i.hv
  %scevgep745 = getelementptr i8, ptr %i.fy, i64 %i.hv
  %scevgep746 = getelementptr i8, ptr %i.ga, i64 %i.hv
  %scevgep748 = getelementptr i8, ptr %i.gc, i64 %i.hv
  %i.hw = mul i64 %i.dj, %indvars.iv352
  %i.hx = mul nuw nsw i64 %indvars.iv352, %i.cz   ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.hx ; 40 uses
  %invariant.gep303 = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ey ; 7 uses
  %brmerge1014 = select i1 %min.iters.check874, i1 true, i1 %conflict.rdx872
  br i1 %brmerge1014, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check875

.lr.ph.i.preheader:                               ; preds = %iter.check901
  br i1 %i.gd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.main.loop.iter.check875:                   ; preds = %iter.check901
  br i1 %min.iters.check876, label %vec.epilog.vector.body907, label %vector.body879

vector.body879:                                   ; preds = %vector.main.loop.iter.check875, %vector.body879
  %index880 = phi i64 [ %index.next897, %vector.body879 ], [ 0, %vector.main.loop.iter.check875 ] ; 5 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index880 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 96
  %wide.load881 = load <8 x float>, ptr %i.hz, align 4, !tbaa !12, !alias.scope !192
  %wide.load882 = load <8 x float>, ptr %i.ia, align 4, !tbaa !12, !alias.scope !192
  %wide.load883 = load <8 x float>, ptr %i.ib, align 4, !tbaa !12, !alias.scope !192
  %wide.load884 = load <8 x float>, ptr %i.ic, align 4, !tbaa !12, !alias.scope !192
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %wide.load881, splat (float 2.000000e+00)
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %wide.load882, splat (float 2.000000e+00)
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %wide.load883, splat (float 2.000000e+00)
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %wide.load884, splat (float 2.000000e+00)
  %i.ih = sub nuw nsw i64 %i.ey, %index880
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ih ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -28
  %i.ik = getelementptr inbounds i8, ptr %i.ii, i64 -60
  %i.il = getelementptr inbounds i8, ptr %i.ii, i64 -92
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 -124
  %wide.load885 = load <8 x float>, ptr %i.ij, align 4, !tbaa !12, !alias.scope !193
  %wide.load886 = load <8 x float>, ptr %i.ik, align 4, !tbaa !12, !alias.scope !193
  %wide.load887 = load <8 x float>, ptr %i.il, align 4, !tbaa !12, !alias.scope !193
  %wide.load888 = load <8 x float>, ptr %i.im, align 4, !tbaa !12, !alias.scope !193
  %reverse889 = shufflevector <8 x float> %wide.load885, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse890 = shufflevector <8 x float> %wide.load886, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse891 = shufflevector <8 x float> %wide.load887, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse892 = shufflevector <8 x float> %wide.load888, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.in = fadd reassoc nsz arcp contract afn <8 x float> %i.id, %reverse889
  %i.io = fadd reassoc nsz arcp contract afn <8 x float> %i.ie, %reverse890
  %i.ip = fadd reassoc nsz arcp contract afn <8 x float> %i.if, %reverse891
  %i.iq = fadd reassoc nsz arcp contract afn <8 x float> %i.ig, %reverse892
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %index880 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 96
  %wide.load893 = load <8 x float>, ptr %i.ir, align 4, !tbaa !12, !alias.scope !194
  %wide.load894 = load <8 x float>, ptr %i.is, align 4, !tbaa !12, !alias.scope !194
  %wide.load895 = load <8 x float>, ptr %i.it, align 4, !tbaa !12, !alias.scope !194
  %wide.load896 = load <8 x float>, ptr %i.iu, align 4, !tbaa !12, !alias.scope !194
  %i.iv = fadd reassoc nsz arcp contract afn <8 x float> %i.in, %wide.load893
  %i.iw = fadd reassoc nsz arcp contract afn <8 x float> %i.io, %wide.load894
  %i.ix = fadd reassoc nsz arcp contract afn <8 x float> %i.ip, %wide.load895
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iq, %wide.load896
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index880 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  store <8 x float> %i.iv, ptr %i.iz, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  store <8 x float> %i.iw, ptr %i.ja, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  store <8 x float> %i.ix, ptr %i.jb, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  store <8 x float> %i.iy, ptr %i.jc, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %index.next897 = add nuw i64 %index880, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next897, %n.vec878
  br i1 %i.jd, label %.preheader53.i, label %vector.body879, !llvm.loop !129

vec.epilog.vector.body907:                        ; preds = %vector.main.loop.iter.check875, %vec.epilog.vector.body907
  %index908 = phi i64 [ %index.next913, %vec.epilog.vector.body907 ], [ 0, %vector.main.loop.iter.check875 ] ; 5 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index908
  %wide.load909 = load <8 x float>, ptr %i.je, align 4, !tbaa !12, !alias.scope !192
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load909, splat (float 2.000000e+00)
  %i.jg = sub nuw nsw i64 %i.ey, %index908
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -28
  %wide.load910 = load <8 x float>, ptr %i.ji, align 4, !tbaa !12, !alias.scope !193
  %reverse911 = shufflevector <8 x float> %wide.load910, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.jf, %reverse911
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep303, i64 %index908
  %wide.load912 = load <8 x float>, ptr %i.jk, align 4, !tbaa !12, !alias.scope !194
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %i.jj, %wide.load912
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index908
  store <8 x float> %i.jl, ptr %i.jm, align 4, !tbaa !12, !alias.scope !195, !noalias !196
  %index.next913 = add nuw i64 %index908, 8       ; 2 uses
  %i.jn = icmp eq i64 %index.next913, %n.vec906
  br i1 %i.jn, label %.preheader53.i, label %vec.epilog.vector.body907, !llvm.loop !130

.preheader53.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader53.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.preheader53.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 5 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv.i.epil
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !12
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, 2.000000e+00
  %i.jr = sub nuw nsw i64 %i.ey, %indvars.iv.i.epil
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !12
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

.preheader53.i:                                   ; preds = %vector.body879, %vec.epilog.vector.body907, %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.epil
  br i1 %i.fa, label %iter.check833, label %.preheader.i

iter.check833:                                    ; preds = %.preheader53.i
  br i1 %min.iters.check814, label %.lr.ph56.i.preheader, label %vector.memcheck806

vector.memcheck806:                               ; preds = %iter.check833
  %.reass = add i64 %i.hu, %invariant.op992
  %diff.check807 = icmp ult i64 %.reass, 63
  %.reass994 = add i64 %i.hu, %invariant.op993
  %diff.check808 = icmp ult i64 %.reass994, 63
  %conflict.rdx809 = or i1 %diff.check807, %diff.check808
  %.reass996 = add i64 %i.hu, %invariant.op995
  %diff.check810 = icmp ult i64 %.reass996, 63
  %conflict.rdx811 = or i1 %conflict.rdx809, %diff.check810
  br i1 %conflict.rdx811, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check815

vector.main.loop.iter.check815:                   ; preds = %vector.memcheck806
  br i1 %min.iters.check816, label %vec.epilog.ph837, label %vector.ph817

vector.ph817:                                     ; preds = %vector.main.loop.iter.check815
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.fb
  br label %vector.body819

vector.body819:                                   ; preds = %vector.ph817, %vector.body819
end_hunk_0
