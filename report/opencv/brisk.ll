Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/brisk?download=true
inline.NumInlined: 1012
inline.NumDeleted: 417
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif:bb.a
  %i.fn = fadd float %i.fm, 1.000000e+00
  %i.fo = fptosi float %i.fn to i32               ; 2 uses
  %.not103 = icmp sgt i32 %.fr, %i.fo
  br i1 %.not103, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.w
  %i.fp = fsub float %2, %i.fj
  %i.fq = fptosi float %i.fp to i32               ; 2 uses
  %i.fr = fadd float %2, %i.fj
  %i.fs = fadd float %i.fr, 1.000000e+00
  %i.ft = fptosi float %i.fs to i32               ; 2 uses
  %.not52101 = icmp sgt i32 %i.fq, %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.gd = add nsw i32 %3, -1
  br i1 %.not52101, label %._crit_edge108, label %.lr.ph

._crit_edge108:                                   ; preds = %._crit_edge, %.lr.ph107, %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gf = tail call noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer5valueERKNS_3MatEfff(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.ge, float noundef %1, float noundef %2, float noundef %4)
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph107, %._crit_edge
  %.049104 = phi i32 [ %i.gi, %._crit_edge ], [ %.fr, %.lr.ph107 ] ; 4 uses
  %i.gg = icmp slt i32 %.049104, 3
  %i.gh = zext nneg i32 %.049104 to i64           ; 2 uses
  br i1 %i.gg, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100, %.lr.ph
  %i.gi = add i32 %.049104, 1                     ; 2 uses
  %.not = icmp sgt i32 %i.gi, %i.fo
  br i1 %.not, label %._crit_edge108, label %.lr.ph, !llvm.loop !243

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100
  %.0102 = phi i32 [ %i.hh, %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100 ], [ %i.fq, %.lr.ph ] ; 5 uses
  %i.gj = icmp slt i32 %.0102, 3
  br i1 %i.gj, label %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split
  %i.gk = load i32, ptr %i.fu, align 4, !tbaa !133
  %i.gl = add nsw i32 %i.gk, -3
  %.not.i90 = icmp slt i32 %.049104, %i.gl
  br i1 %.not.i90, label %bb.y, label %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100

bb.y:                                             ; preds = %bb.x
  %i.gm = load i32, ptr %i.fv, align 8, !tbaa !134
  %i.gn = add nsw i32 %i.gm, -3
  %.not21.i92 = icmp slt i32 %.0102, %i.gn
  br i1 %.not21.i92, label %bb.z, label %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100

bb.z:                                             ; preds = %bb.y
  %i.go = load i32, ptr %i.fw, align 4, !tbaa !105
  %i.gp = icmp slt i32 %i.go, 2
  %i.gq = load ptr, ptr %i.fx, align 8, !tbaa !97
  %i.gr = load i64, ptr %i.fy, align 8
  %i.gs = zext nneg i32 %.0102 to i64             ; 2 uses
  %i.gt = mul i64 %i.gr, %i.gs
  %.sink.idx.i.i93 = select i1 %i.gp, i64 0, i64 %i.gt
  %.sink.i.i94 = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.sink.idx.i.i93
  %i.gu = getelementptr inbounds nuw i8, ptr %.sink.i.i94, i64 %i.gh ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !48
  %i.gw = icmp ugt i8 %i.gv, 2
  br i1 %i.gw, label %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gx = load i32, ptr %i.fz, align 4, !tbaa !105
  %i.gy = icmp slt i32 %i.gx, 2
  %i.gz = load ptr, ptr %i.ga, align 8, !tbaa !97
  %i.ha = load i64, ptr %i.gb, align 8
  %i.hb = mul i64 %i.ha, %i.gs
  %.sink.idx.i22.i95 = select i1 %i.gy, i64 0, i64 %i.hb
  %.sink.i23.i96 = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sink.idx.i22.i95
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink.i23.i96, i64 %i.gh
  %i.hd = tail call noundef i32 @_ZN2cv11xfeatures2d17agast_cornerScoreILi3EEEiPKhPKii(ptr noundef nonnull %i.hc, ptr noundef nonnull %i.gc, i32 noundef %i.gd) ; 2 uses
  %i.he = trunc i32 %i.hd to i8
  %i.hf = and i32 %i.hd, 255
  %i.hg = icmp slt i32 %i.hf, %3
  %spec.select.i97 = select i1 %i.hg, i8 0, i8 %i.he
  store i8 %spec.select.i97, ptr %i.gu, align 1, !tbaa !48
  br label %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100

_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit100: ; preds = %bb.z, %bb.aa, %.lr.ph.split, %bb.x, %bb.y
  %i.hh = add i32 %.0102, 1
  %exitcond.not = icmp eq i32 %.0102, %i.ft
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !244

bb.ab:                                            ; preds = %._crit_edge108, %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit88
  %.050 = phi i32 [ %i.fi, %_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEiii.exit88 ], [ %i.gf, %._crit_edge108 ]
  ret i32 %.050
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d15BriskScaleSpace10subpixel2DEiiiiiiiiiRfS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %11) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = shl i32 %5, 1
  %.neg.neg = mul i32 %5, 5
  %i.b = add nsw i32 %3, %1                       ; 2 uses
  %i.c = add i32 %9, %7
  %i.d = add i32 %i.c, %i.b
  %i.e = add i32 %3, %7
  %i.f = sub i32 %1, %i.e
  %i.g = sub nsw i32 %3, %7                       ; 2 uses
  %i.h = shl i32 %i.g, 1
  %i.i = add nsw i32 %i.f, %9
  %i.j = shl i32 %i.i, 2                          ; 14 uses
  %i.k = add i32 %i.b, %7
  %i.l = add i32 %i.k, %9
  %i.m = sub i32 %.neg.neg, %i.l
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %i.d, %i.a                       ; 2 uses
  %i.p = add i32 %6, %i.h
  %i.q = add i32 %6, %4                           ; 3 uses
  %i.r = add nsw i32 %i.g, %1
  %i.s = add i32 %i.q, %i.o
  %i.t = add i32 %8, %2                           ; 2 uses
  %i.u = shl i32 %i.t, 1
  %i.v = shl i32 %i.q, 1
  %i.w = sub i32 %2, %8
  %i.x = sub i32 %4, %i.p
  %i.y = sub i32 %i.r, %9                         ; 2 uses
  %i.z = sub i32 %i.s, %i.u                       ; 2 uses
  %i.aa = sub i32 %i.t, %i.v
  %i.ab = add i32 %i.x, %i.y
  %i.ac = add i32 %i.w, %i.y
  %i.ad = add i32 %i.aa, %i.o                     ; 4 uses
  %i.ae = add i32 %i.q, %2
  %i.af = add nsw i32 %i.ae, %8
  %i.ag = shl i32 %i.af, 2
  %i.ah = mul nsw i32 %i.ab, -3                   ; 9 uses
  %i.ai = mul nsw i32 %i.ac, -3                   ; 9 uses
  %i.aj = mul nsw i32 %i.z, 3                     ; 4 uses
  %i.ak = mul nsw i32 %i.ad, 3                    ; 3 uses
  %i.al = add i32 %i.ag, %i.n                     ; 4 uses
  %i.am = mul nsw i32 %i.ad, 12
  %i.an = mul nsw i32 %i.am, %i.aj                ; 2 uses
  %i.ao = mul nsw i32 %i.j, %i.j                  ; 2 uses
  %i.ap = sub nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = icmp eq i32 %i.an, %i.ao
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %10, align 4, !tbaa !38
  store float 0.000000e+00, ptr %11, align 4, !tbaa !38
  %i.ar = sitofp i32 %i.al to float
  %i.as = fdiv float %i.ar, 1.800000e+01
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.at = icmp sgt i32 %i.ap, 0
  %i.au = icmp slt i32 %i.ad, 0
  %or.cond = and i1 %i.at, %i.au
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = add nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.j                 ; 2 uses
  store float 1.000000e+00, ptr %10, align 4, !tbaa !38
  store float 1.000000e+00, ptr %11, align 4, !tbaa !38
  %i.ax = add i32 %i.ai, %i.j
  %i.ay = sub i32 %i.ah, %i.ax                    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, %i.aw
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float -1.000000e+00, ptr %10, align 4, !tbaa !38
  store float 1.000000e+00, ptr %11, align 4, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0199 = phi i32 [ %i.ay, %bb.e ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ba = add i32 %i.ah, %i.j
  %i.bb = sub i32 %i.ai, %i.ba                    ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, %.0199
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float 1.000000e+00, ptr %10, align 4, !tbaa !38
  store float -1.000000e+00, ptr %11, align 4, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.bb, %bb.g ], [ %.0199, %bb.f ] ; 2 uses
  %i.bd = sub i32 %i.j, %i.av                     ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %.1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float -1.000000e+00, ptr %10, align 4, !tbaa !38
  store float -1.000000e+00, ptr %11, align 4, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %i.bd, %bb.i ], [ %.1, %bb.h ]
  %i.bf = add i32 %i.aj, %i.ak
  %i.bg = add i32 %i.bf, %i.al
  %i.bh = add i32 %i.bg, %.2
  %i.bi = sitofp i32 %i.bh to float
  %i.bj = fdiv float %i.bi, 1.800000e+01
  br label %bb.z

bb.k:                                             ; preds = %bb.c
  %i.bk = mul nsw i32 %i.z, 6                     ; 3 uses
  %i.bl = mul nsw i32 %i.ah, %i.j
  %i.bm = sub nsw i32 0, %i.ap
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = mul nsw i32 %i.ad, 6                    ; 3 uses
  %i.bp = mul nsw i32 %i.ai, %i.j
  %i.bq = mul nsw i32 %i.bo, %i.ah
  %i.br = mul nsw i32 %i.bk, %i.ai
  %i.bs = sub nsw i32 %i.bq, %i.bp
  %i.bt = sub nsw i32 %i.br, %i.bl
  %i.bu = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.bv = insertelement <2 x i32> %i.bu, i32 %i.bt, i64 1
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fdiv <2 x float> %i.bw, %i.by           ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1
  store float %i.ca, ptr %10, align 4, !tbaa !38
  %i.cb = extractelement <2 x float> %i.bz, i64 0 ; 7 uses
  store float %i.cb, ptr %11, align 4, !tbaa !38
  %i.cc = load float, ptr %10, align 4, !tbaa !38 ; 6 uses
  %i.cd = fcmp ogt float %i.cc, 1.000000e+00      ; 2 uses
  %i.ce = fcmp olt float %i.cc, -1.000000e+00     ; 2 uses
  %i.cf = fcmp ogt float %i.cb, 1.000000e+00      ; 2 uses
  %i.cg = fcmp olt float %i.cb, -1.000000e+00     ; 2 uses
  %or.cond3 = or i1 %i.cd, %i.ce
  %or.cond5 = or i1 %i.cf, %or.cond3
  %or.cond7 = or i1 %i.cg, %or.cond5
  br i1 %or.cond7, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  br i1 %i.cd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ch = add nsw i32 %i.ah, %i.j
  %i.ci = sitofp i32 %i.ch to float
  %i.cj = fneg float %i.ci
  %i.ck = sitofp i32 %i.bk to float
  %i.cl = fdiv float %i.cj, %i.ck                 ; 3 uses
  %i.cm = fcmp ogt float %i.cl, 1.000000e+00
  br i1 %i.cm, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = fcmp olt float %i.cl, -1.000000e+00
  %spec.store.select = select i1 %i.cn, float -1.000000e+00, float %i.cl
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  br i1 %i.ce, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.co = sub nsw i32 %i.ah, %i.j
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fneg float %i.cp
  %i.cr = sitofp i32 %i.bk to float
  %i.cs = fdiv float %i.cq, %i.cr                 ; 3 uses
  %i.ct = fcmp ogt float %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = fcmp olt float %i.cs, -1.000000e+00
  %spec.store.select8 = select i1 %i.cu, float -1.000000e+00, float %i.cs
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.o, %bb.q, %bb.n
  %.0194 = phi float [ 0.000000e+00, %bb.o ], [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %bb.m ], [ -1.000000e+00, %bb.q ], [ -1.000000e+00, %bb.p ] ; 2 uses
  %.0192 = phi float [ 0.000000e+00, %bb.o ], [ %spec.store.select, %bb.n ], [ 1.000000e+00, %bb.m ], [ %spec.store.select8, %bb.q ], [ 1.000000e+00, %bb.p ] ; 2 uses
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cv = add nsw i32 %i.ai, %i.j
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = fneg float %i.cw
  %i.cy = sitofp i32 %i.bo to float
  %i.cz = fdiv float %i.cx, %i.cy                 ; 3 uses
  %i.da = fcmp ogt float %i.cz, 1.000000e+00
  br i1 %i.da, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = fcmp olt float %i.cz, -1.000000e+00
  %spec.store.select9 = select i1 %i.db, float -1.000000e+00, float %i.cz
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  br i1 %i.cg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dc = sub nsw i32 %i.ai, %i.j
  %i.dd = sitofp i32 %i.dc to float
  %i.de = fneg float %i.dd
  %i.df = sitofp i32 %i.bo to float
  %i.dg = fdiv float %i.de, %i.df                 ; 3 uses
  %i.dh = fcmp ogt float %i.dg, 1.000000e+00
  br i1 %i.dh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = fcmp olt float %i.dg, -1.000000e+00
  %spec.store.select10 = select i1 %i.di, float -1.000000e+00, float %i.dg
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.s, %bb.u, %bb.w, %bb.t
  %.0193 = phi float [ 0.000000e+00, %bb.u ], [ %spec.store.select9, %bb.t ], [ 1.000000e+00, %bb.s ], [ %spec.store.select10, %bb.w ], [ 1.000000e+00, %bb.v ] ; 2 uses
  %.0 = phi float [ 0.000000e+00, %bb.u ], [ 1.000000e+00, %bb.t ], [ 1.000000e+00, %bb.s ], [ -1.000000e+00, %bb.w ], [ -1.000000e+00, %bb.v ] ; 2 uses
  %i.dj = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.aj, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.ai, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.ah, i64 3
  %i.dn = sitofp <4 x i32> %i.dm to <4 x float>   ; 4 uses
  %i.do = sitofp i32 %i.j to float
  %i.dp = sitofp i32 %i.al to float
  %i.dq = insertelement <2 x float> poison, float %.0194, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %.0193, i64 1 ; 4 uses
  %i.ds = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = insertelement <2 x float> poison, float %.0192, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %.0, i64 1 ; 4 uses
  %i.dw = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fmul <2 x float> %i.dv, %i.dw
  %i.dy = fmul <2 x float> %i.dv, %i.dx
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dr, <2 x float> %i.dy)
  %i.ea = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.dr, <2 x float> %i.dz)
  %i.ec = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.dv, <2 x float> %i.eb)
  %i.ee = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.dr, %i.ef
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.dv, <2 x float> %i.ed)
  %i.ei = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fadd <2 x float> %i.eh, %i.ej
  %i.el = fdiv <2 x float> %i.ek, splat (float 1.800000e+01) ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0 ; 2 uses
  %i.en = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.eo = fcmp ogt float %i.em, %i.en             ; 3 uses
  %.0194..0193 = select i1 %i.eo, float %.0194, float %.0193
  %.0192..0 = select i1 %i.eo, float %.0192, float %.0
  %. = select i1 %i.eo, float %i.em, float %i.en
  store float %.0194..0193, ptr %10, align 4, !tbaa !38
  store float %.0192..0, ptr %11, align 4, !tbaa !38
  br label %bb.z

bb.y:                                             ; preds = %bb.k
  %i.ep = sitofp i32 %i.ak to float
  %i.eq = fmul float %i.cc, %i.ep
  %i.er = sitofp i32 %i.aj to float
  %i.es = fmul float %i.cb, %i.er
  %i.et = fmul float %i.cb, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.cc, float %i.et)
  %i.ev = sitofp i32 %i.ai to float
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.cc, float %i.eu)
  %i.ex = sitofp i32 %i.ah to float
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.cb, float %i.ew)
  %i.ez = sitofp i32 %i.j to float
  %i.fa = fmul float %i.cc, %i.ez
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.cb, float %i.ey)
  %i.fc = sitofp i32 %i.al to float
  %i.fd = fadd float %i.fb, %i.fc
  %i.fe = fdiv float %i.fd, 1.800000e+01
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.j, %bb.b
  %.2202 = phi float [ %i.as, %bb.b ], [ %i.bj, %bb.j ], [ %., %bb.x ], [ %i.fe, %bb.y ]
  ret float %.2202
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d15BriskScaleSpace16getScoreMaxBelowEiiiiRbRfS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  store i8 0, ptr %5, align 1, !tbaa !125
  %i.c = and i32 %1, 1
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %3, i64 1
  %i.g = shl nsw <2 x i32> %i.f, splat (i32 3)
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.i = add nsw <4 x i32> %i.h, <i32 -3, i32 5, i32 5, i32 -3>
  %i.j = sitofp <4 x i32> %i.i to <4 x float>
  %i.k = fdiv <4 x float> %i.j, splat (float 6.000000e+00)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = mul nsw i32 %2, 6
  %i.m = mul nsw i32 %3, 6
  %i.n = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %i.o = insertelement <4 x i32> %i.n, i32 %i.m, i64 1
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
end_hunk_0
