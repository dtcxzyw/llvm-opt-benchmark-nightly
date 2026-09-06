Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibb:bb.a
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  %min.iters.check163 = icmp ult i64 %i.av, 16
  %i.bk = and i64 %i.av, 12
  %n.vec165 = and i64 %i.av, -16                  ; 4 uses
  %i.bl = or disjoint i64 %n.vec165, 1            ; 2 uses
  %broadcast.splatinsert170 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat171 = shufflevector <16 x i32> %broadcast.splatinsert170, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n185 = icmp eq i64 %i.av, %n.vec165
  %min.epilog.iters.check191 = icmp eq i64 %i.bk, 0
  %n.vec193 = and i64 %i.av, -4                   ; 3 uses
  %i.bm = or disjoint i64 %n.vec193, 1
  %broadcast.splatinsert198 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat199 = shufflevector <4 x i32> %broadcast.splatinsert198, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n216 = icmp eq i64 %i.av, %n.vec193
  %min.iters.check = icmp ult i64 %i.av, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep111
  %bound1 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %scevgep, %scevgep112
  %bound1114 = icmp ult ptr %.sroa.0.0.copyload, %scevgep109
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %min.iters.check116 = icmp ult i64 %i.av, 16
  %i.bn = and i64 %i.av, 12
  %n.vec = and i64 %i.av, -16                     ; 4 uses
  %i.bo = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert119 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat120 = shufflevector <16 x i32> %broadcast.splatinsert119, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  %n.vec126 = and i64 %i.av, -4                   ; 3 uses
  %i.bp = or disjoint i64 %n.vec126, 1
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n146 = icmp eq i64 %i.av, %n.vec126
  %invariant.op = sub nuw i32 %.sroa.52.72.copyload, 1
  br label %bb.c

._crit_edge84:                                    ; preds = %._crit_edge, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph83, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %i.bq = icmp samesign ult i64 %indvars.iv, %i.ag
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = mul nuw nsw i64 %indvars.iv, %i.af
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1856.32.copyload, i64 %i.br ; 8 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !290
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.ae
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = mul nuw nsw i64 %indvars.iv, %i.ad
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.bw ; 17 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !290
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = mul nsw i32 %i.bz, 11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !290
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !290
  %i.cg = sext i16 %i.cf to i32                   ; 2 uses
  %i.ch = add nsw i32 %i.ca, 4
  %i.ci = shl nsw i32 %i.cd, 2                    ; 2 uses
  %i.cj = sub nsw i32 %i.ch, %i.ci
  %i.ck = add nsw i32 %i.cj, %i.cg
  %i.cl = ashr i32 %i.ck, 3
  %i.cm = add nsw i32 %i.cl, %i.bu
  %i.cn = shl i32 %i.cm, %3
  %i.co = ashr i32 %i.cn, 1                       ; 2 uses
  %i.cp = mul nsw i32 %i.bz, 5
  %i.cq = add nsw i32 %i.cp, 4
  %i.cr = add nsw i32 %i.cq, %i.ci
  %i.cs = sub nsw i32 %i.cr, %i.cg
  %i.ct = ashr i32 %i.cs, 3
  %i.cu = sub nsw i32 %i.ct, %i.bu
  %i.cv = shl i32 %i.cu, %3
  %i.cw = ashr i32 %i.cv, 1                       ; 2 uses
  br i1 %4, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit", label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit": ; preds = %bb.c
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %i.cx = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 16383)
  %.sroa.speculate.load.false.sroa.speculated.i33.i = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cy = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i33.i, i32 16383)
  %i.cz = trunc nuw nsw i32 %i.cx to i16
  %i.da = mul nuw nsw i64 %indvars.iv, %i.ac
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4265.72.copyload, i64 %i.da ; 9 uses
  store i16 %i.cz, ptr %i.db, align 2, !tbaa !290
  %i.dc = trunc nuw nsw i32 %i.cy to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !290
  br i1 %i.u, label %iter.check, label %._crit_edge

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread": ; preds = %bb.c
  %i.de = trunc i32 %i.co to i16
  %i.df = mul nuw nsw i64 %indvars.iv, %i.ac
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4265.72.copyload, i64 %i.df ; 10 uses
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !290
  %i.dh = trunc i32 %i.cw to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !290
  br i1 %i.u, label %iter.check188, label %._crit_edge

iter.check:                                       ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit"
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = phi i64 [ %i.eq, %vector.body ], [ 1, %vector.main.loop.iter.check ] ; 3 uses
  %i.dk = or disjoint i64 %index, 1               ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.dk
  %wide.load = load <16 x i16>, ptr %i.dl, align 2, !tbaa !290, !alias.scope !6914
  %i.dm = sext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.dn = getelementptr [2 x i8], ptr %i.bx, i64 %i.dk ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %wide.load123 = load <16 x i16>, ptr %i.do, align 2, !tbaa !290, !alias.scope !6915
  %i.dp = sext <16 x i16> %wide.load123 to <16 x i32> ; 2 uses
  %wide.load124 = load <16 x i16>, ptr %i.dn, align 2, !tbaa !290, !alias.scope !6915
  %i.dq = sext <16 x i16> %wide.load124 to <16 x i32>
  %i.dr = shl nsw <16 x i32> %i.dq, splat (i32 3) ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.dj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %wide.load125 = load <16 x i16>, ptr %i.dt, align 2, !tbaa !290, !alias.scope !6915
  %i.du = sext <16 x i16> %wide.load125 to <16 x i32> ; 2 uses
  %i.dv = add nsw <16 x i32> %i.dp, splat (i32 4)
  %i.dw = add nsw <16 x i32> %i.dv, %i.dr
  %i.dx = sub nsw <16 x i32> %i.dw, %i.du
  %i.dy = ashr <16 x i32> %i.dx, splat (i32 3)
  %i.dz = add nsw <16 x i32> %i.dy, %i.dm
  %i.ea = shl <16 x i32> %i.dz, %broadcast.splat120
  %i.eb = ashr <16 x i32> %i.ea, splat (i32 1)
  %i.ec = sub nsw <16 x i32> %i.dr, %i.dp
  %i.ed = add nsw <16 x i32> %i.ec, splat (i32 4)
  %i.ee = add nsw <16 x i32> %i.ed, %i.du
  %i.ef = ashr <16 x i32> %i.ee, splat (i32 3)
  %i.eg = sub nsw <16 x i32> %i.ef, %i.dm
  %i.eh = shl <16 x i32> %i.eg, %broadcast.splat120
  %i.ei = ashr <16 x i32> %i.eh, splat (i32 1)
  %i.ej = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eb, <16 x i32> zeroinitializer)
  %i.ek = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ej, <16 x i32> splat (i32 16383))
  %i.el = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ei, <16 x i32> zeroinitializer)
  %i.em = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.el, <16 x i32> splat (i32 16383))
  %i.en = trunc nuw nsw <16 x i32> %i.ek to <16 x i16>
  %.idx219 = shl nuw nsw i64 %i.dj, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx219
  %i.ep = trunc nuw nsw <16 x i32> %i.em to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.en, <16 x i16> %i.ep, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.eo, align 2, !tbaa !290, !alias.scope !6916, !noalias !6917
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eq = add nuw nsw i64 %i.dj, 16
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !6903

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bo, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.es = phi i64 [ %bc.resume.val, %vec.epilog.ph ], [ %i.fr, %vec.epilog.vector.body ] ; 3 uses
  %i.et = or disjoint i64 %index137, 1            ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.et
  %wide.load139 = load <4 x i16>, ptr %i.eu, align 2, !tbaa !290, !alias.scope !6914
  %i.ev = sext <4 x i16> %wide.load139 to <4 x i32> ; 2 uses
  %i.ew = getelementptr [2 x i8], ptr %i.bx, i64 %i.et ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
  %wide.load140 = load <4 x i16>, ptr %i.ex, align 2, !tbaa !290, !alias.scope !6915
  %i.ey = sext <4 x i16> %wide.load140 to <4 x i32> ; 2 uses
  %wide.load141 = load <4 x i16>, ptr %i.ew, align 2, !tbaa !290, !alias.scope !6915
  %i.ez = sext <4 x i16> %wide.load141 to <4 x i32>
  %i.fa = shl nsw <4 x i32> %i.ez, splat (i32 3)  ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.es
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %wide.load142 = load <4 x i16>, ptr %i.fc, align 2, !tbaa !290, !alias.scope !6915
  %i.fd = sext <4 x i16> %wide.load142 to <4 x i32> ; 2 uses
  %i.fe = add nsw <4 x i32> %i.ey, splat (i32 4)
  %i.ff = add nsw <4 x i32> %i.fe, %i.fa
  %i.fg = sub nsw <4 x i32> %i.ff, %i.fd
  %i.fh = ashr <4 x i32> %i.fg, splat (i32 3)
  %i.fi = add nsw <4 x i32> %i.fh, %i.ev
  %i.fj = shl <4 x i32> %i.fi, %broadcast.splat132
  %i.fk = sub nsw <4 x i32> %i.fa, %i.ey
  %i.fl = add nsw <4 x i32> %i.fk, splat (i32 4)
  %i.fm = add nsw <4 x i32> %i.fl, %i.fd
  %i.fn = ashr <4 x i32> %i.fm, splat (i32 3)
  %i.fo = sub nsw <4 x i32> %i.fn, %i.ev
  %i.fp = shl <4 x i32> %i.fo, %broadcast.splat132
  %6 = shufflevector <4 x i32> %i.fj, <4 x i32> %i.fp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %7 = ashr <8 x i32> %6, splat (i32 1)
  %8 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %7, <8 x i32> zeroinitializer)
  %.idx220 = shl nuw nsw i64 %i.es, 2
  %9 = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx220
  %i.fq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %8, <8 x i32> splat (i32 16383))
  %interleaved.vec143 = trunc nuw nsw <8 x i32> %i.fq to <8 x i16>
  store <8 x i16> %interleaved.vec143, ptr %9, align 2, !tbaa !290, !alias.scope !6916, !noalias !6917
  %index.next144 = add nuw i64 %index137, 4       ; 2 uses
  %i.fr = add nuw nsw i64 %i.es, 4
  %i.fs = icmp eq i64 %index.next144, %n.vec126
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6904

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n146, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader": ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv95.ph = phi i64 [ 1, %iter.check ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bo, %vec.epilog.iter.check ]
  br label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us"

iter.check188:                                    ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread"
  %brmerge222 = select i1 %min.iters.check161, i1 true, i1 %conflict.rdx160
  br i1 %brmerge222, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check188
  br i1 %min.iters.check163, label %vec.epilog.ph192, label %vector.body174

vector.body174:                                   ; preds = %vector.main.loop.iter.check162, %vector.body174
  %index175 = phi i64 [ %index.next182, %vector.body174 ], [ 0, %vector.main.loop.iter.check162 ] ; 2 uses
  %i.ft = phi i64 [ %i.gw, %vector.body174 ], [ 1, %vector.main.loop.iter.check162 ] ; 3 uses
  %i.fu = or disjoint i64 %index175, 1            ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.fu
  %wide.load177 = load <16 x i16>, ptr %i.fv, align 2, !tbaa !290, !alias.scope !6918
  %i.fw = sext <16 x i16> %wide.load177 to <16 x i32> ; 2 uses
  %i.fx = getelementptr [2 x i8], ptr %i.bx, i64 %i.fu ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 -2
  %wide.load178 = load <16 x i16>, ptr %i.fy, align 2, !tbaa !290, !alias.scope !6919
  %i.fz = sext <16 x i16> %wide.load178 to <16 x i32> ; 2 uses
  %wide.load179 = load <16 x i16>, ptr %i.fx, align 2, !tbaa !290, !alias.scope !6919
  %i.ga = sext <16 x i16> %wide.load179 to <16 x i32>
  %i.gb = shl nsw <16 x i32> %i.ga, splat (i32 3) ; 2 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ft
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %wide.load180 = load <16 x i16>, ptr %i.gd, align 2, !tbaa !290, !alias.scope !6919
  %i.ge = sext <16 x i16> %wide.load180 to <16 x i32> ; 2 uses
  %i.gf = add nsw <16 x i32> %i.fz, splat (i32 4)
  %i.gg = add nsw <16 x i32> %i.gf, %i.gb
  %i.gh = sub nsw <16 x i32> %i.gg, %i.ge
  %i.gi = lshr <16 x i32> %i.gh, splat (i32 3)
  %i.gj = add nsw <16 x i32> %i.gi, %i.fw
  %i.gk = shl <16 x i32> %i.gj, %broadcast.splat171
  %i.gl = lshr <16 x i32> %i.gk, splat (i32 1)
  %i.gm = sub nsw <16 x i32> %i.gb, %i.fz
  %i.gn = add nsw <16 x i32> %i.gm, splat (i32 4)
  %i.go = add nsw <16 x i32> %i.gn, %i.ge
  %i.gp = lshr <16 x i32> %i.go, splat (i32 3)
  %i.gq = sub nsw <16 x i32> %i.gp, %i.fw
  %i.gr = shl <16 x i32> %i.gq, %broadcast.splat171
  %i.gs = lshr <16 x i32> %i.gr, splat (i32 1)
  %i.gt = trunc <16 x i32> %i.gl to <16 x i16>
  %.idx = shl nuw nsw i64 %i.ft, 2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx
  %i.gv = trunc <16 x i32> %i.gs to <16 x i16>
  %interleaved.vec181 = shufflevector <16 x i16> %i.gt, <16 x i16> %i.gv, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec181, ptr %i.gu, align 2, !tbaa !290, !alias.scope !6920, !noalias !6921
  %index.next182 = add nuw i64 %index175, 16      ; 2 uses
  %i.gw = add nuw nsw i64 %i.ft, 16
  %i.gx = icmp eq i64 %index.next182, %n.vec165
  br i1 %i.gx, label %middle.block184, label %vector.body174, !llvm.loop !6909

middle.block184:                                  ; preds = %vector.body174
  br i1 %cmp.n185, label %._crit_edge, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block184
  br i1 %min.epilog.iters.check191, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", label %vec.epilog.ph192, !prof !294

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check190
  %vec.epilog.resume.val186 = phi i64 [ %n.vec165, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check162 ]
  %bc.resume.val187 = phi i64 [ %i.bl, %vec.epilog.iter.check190 ], [ 1, %vector.main.loop.iter.check162 ]
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph192
  %index206 = phi i64 [ %vec.epilog.resume.val186, %vec.epilog.ph192 ], [ %index.next213, %vec.epilog.vector.body205 ] ; 2 uses
  %i.gy = phi i64 [ %bc.resume.val187, %vec.epilog.ph192 ], [ %i.hz, %vec.epilog.vector.body205 ] ; 3 uses
  %i.gz = or disjoint i64 %index206, 1            ; 2 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.gz
  %wide.load208 = load <4 x i16>, ptr %i.ha, align 2, !tbaa !290, !alias.scope !6918
  %i.hb = sext <4 x i16> %wide.load208 to <4 x i32> ; 2 uses
  %i.hc = getelementptr [2 x i8], ptr %i.bx, i64 %i.gz ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 -2
  %wide.load209 = load <4 x i16>, ptr %i.hd, align 2, !tbaa !290, !alias.scope !6919
  %i.he = sext <4 x i16> %wide.load209 to <4 x i32> ; 2 uses
  %wide.load210 = load <4 x i16>, ptr %i.hc, align 2, !tbaa !290, !alias.scope !6919
  %i.hf = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.hg = shl nsw <4 x i32> %i.hf, splat (i32 3)  ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.gy
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %wide.load211 = load <4 x i16>, ptr %i.hi, align 2, !tbaa !290, !alias.scope !6919
  %i.hj = sext <4 x i16> %wide.load211 to <4 x i32> ; 2 uses
  %i.hk = add nsw <4 x i32> %i.he, splat (i32 4)
  %i.hl = add nsw <4 x i32> %i.hk, %i.hg
  %i.hm = sub nsw <4 x i32> %i.hl, %i.hj
  %i.hn = lshr <4 x i32> %i.hm, splat (i32 3)
  %i.ho = add nsw <4 x i32> %i.hn, %i.hb
  %i.hp = shl <4 x i32> %i.ho, %broadcast.splat199
  %i.hq = sub nsw <4 x i32> %i.hg, %i.he
  %i.hr = add nsw <4 x i32> %i.hq, splat (i32 4)
  %i.hs = add nsw <4 x i32> %i.hr, %i.hj
  %i.ht = lshr <4 x i32> %i.hs, splat (i32 3)
  %i.hu = sub nsw <4 x i32> %i.ht, %i.hb
  %i.hv = shl <4 x i32> %i.hu, %broadcast.splat199
  %.idx218 = shl nuw nsw i64 %i.gy, 2
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx218
  %i.hx = shufflevector <4 x i32> %i.hp, <4 x i32> %i.hv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.hy = lshr <8 x i32> %i.hx, splat (i32 1)
  %interleaved.vec212 = trunc <8 x i32> %i.hy to <8 x i16>
  store <8 x i16> %interleaved.vec212, ptr %i.hw, align 2, !tbaa !290, !alias.scope !6920, !noalias !6921
  %index.next213 = add nuw i64 %index206, 4       ; 2 uses
  %i.hz = add nuw nsw i64 %i.gy, 4
  %i.ia = icmp eq i64 %index.next213, %n.vec193
  br i1 %i.ia, label %vec.epilog.middle.block215, label %vec.epilog.vector.body205, !llvm.loop !6910

vec.epilog.middle.block215:                       ; preds = %vec.epilog.vector.body205
  br i1 %cmp.n216, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader": ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block215
  %indvars.iv89.ph = phi i64 [ 1, %iter.check188 ], [ %i.bm, %vec.epilog.middle.block215 ], [ %i.bl, %vec.epilog.iter.check190 ]
  br label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us": ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us"
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us" ], [ %indvars.iv95.ph, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader" ] ; 6 uses
  %i.ib = icmp samesign ult i64 %indvars.iv95, %i.x
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv95
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !290
  %i.ie = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv95 ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 -2
  %i.ig = add nuw nsw i64 %indvars.iv95, 1        ; 2 uses
  %i.ih = icmp samesign ult i64 %i.ig, %i.v
  tail call void @llvm.assume(i1 %i.ih)
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ig
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !290
  %i.ik = shl nuw nsw i64 %indvars.iv95, 1        ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ik
  %i.im = or disjoint i64 %i.ik, 1
  %i.in = icmp samesign ult i64 %i.im, %i.w
  tail call void @llvm.assume(i1 %i.in)
  %i.io = load i16, ptr %i.ie, align 2, !tbaa !290
  %i.ip = load i16, ptr %i.if, align 2, !tbaa !290
  %i.iq = sext i16 %i.io to i32
  %i.ir = sext i16 %i.ip to i32                   ; 2 uses
  %i.is = shl nsw i32 %i.iq, 3                    ; 2 uses
  %i.it = sext i16 %i.id to i32                   ; 2 uses
  %i.iu = sext i16 %i.ij to i32                   ; 2 uses
  %reass.sub85 = sub nsw i32 %i.is, %i.ir
  %i.iv = add nsw i32 %i.ir, 4
  %i.iw = add nsw i32 %reass.sub85, 4
  %i.ix = add nsw i32 %i.iv, %i.is
  %i.iy = add nsw i32 %i.iw, %i.iu
  %i.iz = sub nsw i32 %i.ix, %i.iu
  %i.ja = ashr i32 %i.iy, 3
  %i.jb = ashr i32 %i.iz, 3
  %i.jc = sub nsw i32 %i.ja, %i.it
  %i.jd = add nsw i32 %i.jb, %i.it
  %i.je = insertelement <2 x i32> poison, i32 %i.jd, i64 0
  %i.jf = insertelement <2 x i32> %i.je, i32 %i.jc, i64 1
  %i.jg = shl <2 x i32> %i.jf, %i.bj
  %i.jh = ashr <2 x i32> %i.jg, splat (i32 1)
  %i.ji = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jh, <2 x i32> zeroinitializer)
  %i.jj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ji, <2 x i32> splat (i32 16383))
  %i.jk = trunc nuw nsw <2 x i32> %i.jj to <2 x i16>
  store <2 x i16> %i.jk, ptr %i.il, align 2, !tbaa !290
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us", !llvm.loop !6911

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit": ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit"
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit" ], [ %indvars.iv89.ph, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader" ] ; 6 uses
  %i.jl = icmp samesign ult i64 %indvars.iv89, %i.x
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv89
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !290
  %i.jo = sext i16 %i.jn to i32                   ; 2 uses
  %i.jp = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv89 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 -2
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !290
  %i.js = sext i16 %i.jr to i32                   ; 2 uses
  %i.jt = load i16, ptr %i.jp, align 2, !tbaa !290
  %i.ju = sext i16 %i.jt to i32
  %i.jv = shl nsw i32 %i.ju, 3                    ; 2 uses
  %i.jw = add nuw nsw i64 %indvars.iv89, 1        ; 2 uses
  %i.jx = icmp samesign ult i64 %i.jw, %i.v
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.jw
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !290
  %i.ka = sext i16 %i.jz to i32                   ; 2 uses
  %i.kb = add nsw i32 %i.js, 4
  %i.kc = add nsw i32 %i.kb, %i.jv
  %i.kd = sub nsw i32 %i.kc, %i.ka
  %i.ke = lshr i32 %i.kd, 3
  %i.kf = add nsw i32 %i.ke, %i.jo
  %i.kg = shl i32 %i.kf, %3
  %i.kh = lshr i32 %i.kg, 1
  %reass.sub = sub nsw i32 %i.jv, %i.js
  %i.ki = add nsw i32 %reass.sub, 4
  %i.kj = add nsw i32 %i.ki, %i.ka
  %i.kk = lshr i32 %i.kj, 3
  %i.kl = sub nsw i32 %i.kk, %i.jo
end_hunk_0
