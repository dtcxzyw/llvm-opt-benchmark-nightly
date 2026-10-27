Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/distribute?download=true
inline.NumInlined: 931
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL27computeAtomGroupDomainIndexRK12gmx_domdec_tRK11gmx_ddbox_tRA3_A3_KfN3gmx8ArrayRefIKSt6vectorIfSaIfEEEEiiPS6_PA3_fSI_:bb.a
  %wide.trip.count218 = sext i32 %5 to i64        ; 14 uses
  %wide.trip.count223 = sext i32 %5 to i64
  %wide.trip.count228 = sext i32 %5 to i64
  %wide.trip.count233 = sext i32 %5 to i64
  %wide.trip.count238 = sext i32 %5 to i64
  %wide.trip.count243 = sext i32 %5 to i64
  %i.dp = mul nsw i64 %.pre-phi, 12               ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.dp
  %i.dq = mul nsw i64 %wide.trip.count218, 12     ; 2 uses
  %scevgep19 = getelementptr i8, ptr %7, i64 %i.dq
  %scevgep20 = getelementptr i8, ptr %8, i64 %i.dp ; 4 uses
  %scevgep21 = getelementptr i8, ptr %8, i64 %i.dq ; 4 uses
  %scevgep22 = getelementptr i8, ptr %6, i64 36   ; 4 uses
  %i.dr = getelementptr i8, <2 x ptr> %i.df, <2 x i64> <i64 36, i64 596>
  %scevgep24 = getelementptr i8, ptr %i.d, i64 596 ; 2 uses
  %i.ds = mul nsw i64 %.pre-phi, 12               ; 2 uses
  %scevgep99 = getelementptr i8, ptr %7, i64 %i.ds ; 5 uses
  %i.dt = mul nsw i64 %wide.trip.count218, 12     ; 2 uses
  %scevgep100 = getelementptr i8, ptr %7, i64 %i.dt ; 5 uses
  %scevgep169 = getelementptr i8, ptr %8, i64 %i.ds ; 4 uses
  %scevgep170 = getelementptr i8, ptr %8, i64 %i.dt ; 4 uses
  %i.du = getelementptr i8, <2 x ptr> %i.df, <2 x i64> <i64 36, i64 596>
  %i.dv = mul nsw i64 %.pre-phi, 12
  %scevgep272 = getelementptr i8, ptr %7, i64 %i.dv ; 3 uses
  %i.dw = mul nsw i64 %wide.trip.count218, 12
  %scevgep273 = getelementptr i8, ptr %7, i64 %i.dw ; 3 uses
  %i.dx = insertelement <2 x ptr> poison, ptr %scevgep19, i64 0
  %i.dy = insertelement <2 x ptr> poison, ptr %scevgep100, i64 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ea = insertelement <4 x ptr> poison, ptr %scevgep169, i64 0
  %i.eb = insertelement <4 x ptr> %i.ea, ptr %scevgep99, i64 1
  %i.ec = insertelement <4 x ptr> poison, ptr %scevgep100, i64 0
  %i.ed = insertelement <4 x ptr> poison, ptr %scevgep99, i64 0
  %i.ee = insertelement <4 x ptr> poison, ptr %scevgep170, i64 0
  %i.ef = shufflevector <2 x ptr> %i.du, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.eg = shufflevector <2 x ptr> %i.dh, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.eh = sub nsw i64 %wide.trip.count218, %.pre-phi ; 7 uses
  %min.iters.check202 = icmp ult i64 %i.eh, 8     ; 3 uses
  %n.vec323 = and i64 %i.eh, -8                   ; 3 uses
  %i.ei = add nsw i64 %.pre-phi, %n.vec323
  %i.ej = getelementptr [12 x i8], ptr %7, i64 %.pre-phi
  %cmp.n339 = icmp eq i64 %i.eh, %n.vec323
  %bound0275 = icmp ult ptr %scevgep272, %scevgep22
  %bound1276 = icmp ult ptr %i.db, %scevgep273
  %found.conflict277 = and i1 %bound0275, %bound1276
  %n.vec285 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = add nsw i64 %.pre-phi, %n.vec285
  %broadcast.splatinsert286 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat287 = shufflevector <8 x i64> %broadcast.splatinsert286, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction288 = add nsw <8 x i64> %broadcast.splat287, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n313 = icmp eq i64 %i.eh, %n.vec285
  %i.el = add nsw i64 %wide.trip.count218, -1
  %i.em = shufflevector <4 x ptr> %i.ed, <4 x ptr> %i.eg, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.en = shufflevector <4 x ptr> %i.ec, <4 x ptr> %i.ef, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %bound0189 = icmp ult ptr %scevgep169, %scevgep22
  %bound1190 = icmp ult ptr %i.db, %scevgep170
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0197 = icmp ult ptr %scevgep169, %scevgep24
  %bound1198 = icmp ult ptr %i.di, %scevgep170
  %found.conflict199 = and i1 %bound0197, %bound1198
  %n.vec204 = and i64 %i.eh, -8                   ; 3 uses
  %i.eo = add nsw i64 %.pre-phi, %n.vec204
  %broadcast.splatinsert219 = insertelement <8 x ptr> poison, ptr %i.db, i64 0
  %broadcast.splat220 = shufflevector <8 x ptr> %broadcast.splatinsert219, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <8 x ptr> poison, ptr %i.dc, i64 0
  %broadcast.splat222 = shufflevector <8 x ptr> %broadcast.splatinsert221, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert223 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat224 = shufflevector <8 x i64> %broadcast.splatinsert223, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction225 = add nsw <8 x i64> %broadcast.splat224, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n269 = icmp eq i64 %i.eh, %n.vec204
  %i.ep = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep21, i64 0
  %i.er = shufflevector <2 x ptr> %i.dg, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.es = sub nsw i64 %wide.trip.count218, %.pre-phi ; 7 uses
  %min.iters.check = icmp ult i64 %i.es, 8        ; 3 uses
  %n.vec150 = and i64 %i.es, -8                   ; 3 uses
  %i.et = add nsw i64 %.pre-phi, %n.vec150
  %i.eu = getelementptr [12 x i8], ptr %7, i64 %.pre-phi
  %cmp.n166 = icmp eq i64 %i.es, %n.vec150
  %bound0102 = icmp ult ptr %scevgep99, %scevgep22
  %bound1103 = icmp ult ptr %i.db, %scevgep100
  %found.conflict104 = and i1 %bound0102, %bound1103
  %n.vec112 = and i64 %i.es, -8                   ; 3 uses
  %i.ev = add nsw i64 %.pre-phi, %n.vec112
  %broadcast.splatinsert113 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat114 = shufflevector <8 x i64> %broadcast.splatinsert113, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction115 = add nsw <8 x i64> %broadcast.splat114, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n140 = icmp eq i64 %i.es, %n.vec112
  %i.ew = add nsw i64 %wide.trip.count218, -1
  %i.ex = shufflevector <4 x ptr> %i.ep, <4 x ptr> %i.er, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.ey = shufflevector <4 x ptr> %i.ep, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.ez = insertelement <4 x ptr> %i.ey, ptr %scevgep20, i64 0
  %bound036 = icmp ult ptr %scevgep20, %scevgep22
  %bound137 = icmp ult ptr %i.db, %scevgep21
  %found.conflict38 = and i1 %bound036, %bound137
  %bound044 = icmp ult ptr %scevgep20, %scevgep24
  %bound145 = icmp ult ptr %i.di, %scevgep21
  %found.conflict46 = and i1 %bound044, %bound145
  %n.vec = and i64 %i.es, -8                      ; 3 uses
  %i.fa = add nsw i64 %.pre-phi, %n.vec
  %broadcast.splatinsert48 = insertelement <8 x ptr> poison, ptr %i.db, i64 0
  %broadcast.splat49 = shufflevector <8 x ptr> %broadcast.splatinsert48, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <8 x ptr> poison, ptr %i.dc, i64 0
  %broadcast.splat51 = shufflevector <8 x ptr> %broadcast.splatinsert50, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <8 x i64> poison, i64 %.pre-phi, i64 0
  %broadcast.splat53 = shufflevector <8 x i64> %broadcast.splatinsert52, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat53, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val = load i32, ptr %i.fb, align 8, !tbaa !240
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.val125 = load i32, ptr %i.fc, align 4, !tbaa !240
  %i.fd = load i32, ptr %i.b, align 4, !tbaa !240
  %i.fe = mul nsw i32 %i.fd, %.val
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !240
  %i.fh = add nsw i32 %i.fe, %i.fg
  %i.fi = mul nsw i32 %i.fh, %.val125
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !240
  %i.fl = add nsw i32 %i.fi, %i.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.fl

bb.e:                                             ; preds = %.loopexit131, %.critedge
  %indvar = phi i64 [ 0, %.loopexit131 ], [ %indvar.next, %.critedge ] ; 7 uses
  %indvars.iv210 = phi i64 [ 2, %.loopexit131 ], [ %indvars.iv.next211, %.critedge ] ; 16 uses
  %.lcssa169173 = phi float [ %i.cs, %.loopexit131 ], [ %.lcssa168, %.critedge ] ; 3 uses
  %i.fm = phi <2 x float> [ %i.ct, %.loopexit131 ], [ %i.xo, %.critedge ] ; 3 uses
  %i.fn = mul nsw i64 %indvar, -12
  %i.fo = getelementptr i8, ptr %6, i64 %i.fn
  %scevgep316 = getelementptr i8, ptr %i.fo, i64 36
  %i.fp = mul nsw i64 %indvar, -12
  %i.fq = getelementptr i8, ptr %6, i64 %i.fp
  %scevgep274 = getelementptr i8, ptr %i.fq, i64 36
  %i.fr = mul nsw i64 %indvar, -12
  %i.fs = getelementptr i8, ptr %6, i64 %i.fr     ; 2 uses
  %i.ft = insertelement <2 x ptr> %i.dy, ptr %i.fs, i64 1
  %i.fu = getelementptr i8, <2 x ptr> %i.ft, <2 x i64> <i64 0, i64 36>
  %scevgep172 = getelementptr i8, ptr %i.fs, i64 36
  %i.fv = mul nsw i64 %indvar, -12
  %i.fw = getelementptr i8, ptr %6, i64 %i.fv
  %scevgep143 = getelementptr i8, ptr %i.fw, i64 36
  %i.fx = mul nsw i64 %indvar, -12
  %i.fy = getelementptr i8, ptr %6, i64 %i.fx
  %scevgep101 = getelementptr i8, ptr %i.fy, i64 36
  %i.fz = mul nsw i64 %indvar, -12
  %i.ga = getelementptr i8, ptr %6, i64 %i.fz     ; 2 uses
  %i.gb = insertelement <2 x ptr> %i.dx, ptr %i.ga, i64 1
  %i.gc = getelementptr i8, <2 x ptr> %i.gb, <2 x i64> <i64 0, i64 36> ; 2 uses
  %scevgep23 = getelementptr i8, ptr %i.ga, i64 36
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv210
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !250 ; 5 uses
  %i.gf = icmp slt i64 %indvars.iv210, %i.do
  br i1 %i.gf, label %bb.f, label %.loopexit127

bb.f:                                             ; preds = %bb.e
  %i.gg = load i8, ptr %i.cx, align 1, !tbaa !141, !range !142, !noundef !143
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = icmp eq i64 %indvars.iv210, 0
  %i.gj = and i1 %i.gi, %i.gh                     ; 8 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv210
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !240
  %.not = icmp eq i32 %i.gl, 0
  br i1 %.not, label %.loopexit129, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv210
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !240
  %i.go = icmp sgt i32 %i.gn, 1
  br i1 %i.go, label %.preheader128, label %.loopexit129

.preheader128:                                    ; preds = %bb.g
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv210 ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv210, 2
  br i1 %i.gp, label %.lr.ph144.peel, label %.loopexit129

.lr.ph144.peel:                                   ; preds = %.preheader128
  %indvars.iv.next213.peel = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next213.peel
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !250
  %gep.peel = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next213.peel
  %i.gs = load float, ptr %gep.peel, align 4, !tbaa !250
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gs, float %i.ge) ; 2 uses
  %i.gu = icmp eq i64 %indvars.iv210, 0
  br i1 %i.gu, label %.loopexit129.loopexit.loopexit, label %.loopexit129

.loopexit129.loopexit.loopexit:                   ; preds = %.lr.ph144.peel
  %i.gv = load float, ptr %i.dz, align 4, !tbaa !250
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.gw = load float, ptr %gep, align 4, !tbaa !250
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gw, float %i.gt)
  br label %.loopexit129

.loopexit129:                                     ; preds = %.lr.ph144.peel, %.loopexit129.loopexit.loopexit, %.preheader128, %bb.g, %bb.f
  %.1 = phi float [ %i.ge, %bb.f ], [ %i.ge, %bb.g ], [ %i.ge, %.preheader128 ], [ %i.gt, %.lr.ph144.peel ], [ %i.gx, %.loopexit129.loopexit.loopexit ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv210 ; 41 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv210 ; 3 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !250 ; 2 uses
  %i.hb = fcmp ult float %.1, %i.ha
  br i1 %i.hb, label %.preheader, label %.lr.ph152

.lr.ph152:                                        ; preds = %.loopexit129
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 15 uses
  %i.he = insertelement <4 x ptr> %i.eb, ptr %i.gy, i64 2
  %i.hf = shufflevector <4 x ptr> %i.he, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.hg = shufflevector <2 x ptr> %i.fu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %bound0317 = icmp ult ptr %scevgep272, %scevgep316
  %bound1318 = icmp ult ptr %i.gy, %scevgep273
  %found.conflict319 = and i1 %bound0317, %bound1318
  %bound0278 = icmp ult ptr %scevgep272, %scevgep274
  %bound1279 = icmp ult ptr %i.gy, %scevgep273
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %found.conflict277, %found.conflict280
  %i.hh = shufflevector <4 x ptr> %i.ee, <4 x ptr> %i.hg, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  %i.hi = icmp ult <4 x ptr> %i.em, %i.hh
  %i.hj = icmp ult <4 x ptr> %i.hf, %i.en
  %i.hk = and <4 x i1> %i.hj, %i.hi
  %bound0193 = icmp ult ptr %scevgep169, %scevgep172
  %bound1194 = icmp ult ptr %i.gy, %scevgep170
  %found.conflict195 = and i1 %bound0193, %bound1194
  %i.hl = bitcast <4 x i1> %i.hk to i4
  %i.hm = icmp ne i4 %i.hl, 0
  %op.rdx343 = or i1 %i.hm, %found.conflict191
  %op.rdx344 = or i1 %found.conflict195, %found.conflict199
  %op.rdx345 = or i1 %op.rdx343, %op.rdx344
  %broadcast.splatinsert217 = insertelement <8 x i1> poison, i1 %i.gj, i64 0
  %broadcast.splat218 = shufflevector <8 x i1> %broadcast.splatinsert217, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.h

.loopexit126:                                     ; preds = %.lr.ph147.split.split.prol.loopexit, %.lr.ph147.split.split, %.lr.ph147.split.split.us.prol.loopexit, %.lr.ph147.split.split.us, %bb.l, %middle.block338, %middle.block312, %middle.block268, %bb.j
  %i.hn = load float, ptr %i.gz, align 4, !tbaa !250 ; 2 uses
  %i.ho = fcmp ult float %i.if, %i.hn
  br i1 %i.ho, label %..preheader_crit_edge, label %bb.h, !llvm.loop !396

..preheader_crit_edge:                            ; preds = %.loopexit126
  store <2 x float> %i.ip, ptr %i.cz, align 4, !tbaa !250
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.loopexit129
  %.lcssa = phi float [ %i.ih, %..preheader_crit_edge ], [ %.lcssa169173, %.loopexit129 ] ; 3 uses
  %.2.lcssa = phi float [ %i.if, %..preheader_crit_edge ], [ %.1, %.loopexit129 ] ; 3 uses
  %i.hp = phi <2 x float> [ %i.ip, %..preheader_crit_edge ], [ %i.fm, %.loopexit129 ] ; 2 uses
  store float %.lcssa, ptr %i.a, align 4
  %i.hq = fcmp olt float %.2.lcssa, 0.000000e+00
  br i1 %i.hq, label %.lr.ph165, label %.loopexit127

.lr.ph165:                                        ; preds = %.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 15 uses
  %i.ht = shufflevector <2 x ptr> %i.gc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %bound0144 = icmp ult ptr %scevgep99, %scevgep143
  %bound1145 = icmp ult ptr %i.gy, %scevgep100
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0105 = icmp ult ptr %scevgep99, %scevgep101
  %bound1106 = icmp ult ptr %i.gy, %scevgep100
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %found.conflict104, %found.conflict107
  %i.hu = shufflevector <4 x ptr> %i.eq, <4 x ptr> %i.ht, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  %i.hv = icmp ult <4 x ptr> %i.ex, %i.hu
  %i.hw = insertelement <4 x ptr> %i.ez, ptr %i.gy, i64 2
  %i.hx = shufflevector <2 x ptr> %i.gc, <2 x ptr> %i.dr, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.hy = icmp ult <4 x ptr> %i.hw, %i.hx
  %i.hz = and <4 x i1> %i.hy, %i.hv
  %bound040 = icmp ult ptr %scevgep20, %scevgep23
  %bound141 = icmp ult ptr %i.gy, %scevgep21
  %found.conflict42 = and i1 %bound040, %bound141
  %i.ia = bitcast <4 x i1> %i.hz to i4
  %i.ib = icmp ne i4 %i.ia, 0
  %op.rdx = or i1 %i.ib, %found.conflict38
  %op.rdx341 = or i1 %found.conflict42, %found.conflict46
  %op.rdx342 = or i1 %op.rdx, %op.rdx341
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.gj, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph152, %.loopexit126
  %i.ic = phi float [ %i.ha, %.lr.ph152 ], [ %i.hn, %.loopexit126 ]
  %.2151 = phi float [ %.1, %.lr.ph152 ], [ %i.if, %.loopexit126 ]
  %i.id = phi float [ %.lcssa169173, %.lr.ph152 ], [ %i.ih, %.loopexit126 ]
  %i.ie = phi <2 x float> [ %i.fm, %.lr.ph152 ], [ %i.ip, %.loopexit126 ]
  %i.if = fsub float %.2151, %i.ic                ; 3 uses
  %i.ig = load float, ptr %i.gy, align 4, !tbaa !250
  %i.ih = fsub float %i.id, %i.ig                 ; 2 uses
  %i.ii = load <2 x float>, ptr %i.hc, align 4, !tbaa !250
  %i.ij = fsub <2 x float> %i.ie, %i.ii           ; 2 uses
  br i1 %i.gj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ik = load float, ptr %i.db, align 4, !tbaa !250
  %i.il = load float, ptr %i.dc, align 4, !tbaa !250
  %i.im = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.in = insertelement <2 x float> %i.im, float %i.il, i64 1
  %i.io = fsub <2 x float> %i.in, %i.ij
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ip = phi <2 x float> [ %i.io, %bb.i ], [ %i.ij, %bb.h ] ; 3 uses
  br i1 %i.dd, label %.lr.ph147, label %.loopexit126

.lr.ph147:                                        ; preds = %bb.j
  br i1 %i.g, label %.lr.ph147.split.us.preheader, label %.lr.ph147.split

.lr.ph147.split.us.preheader:                     ; preds = %.lr.ph147
  %brmerge = select i1 %min.iters.check202, i1 true, i1 %op.rdx345
  br i1 %brmerge, label %.lr.ph147.split.us.preheader356, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph147.split.us.preheader
  %i.iq = load float, ptr %i.gy, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert234 = insertelement <8 x float> poison, float %i.iq, i64 0
  %broadcast.splat223 = shufflevector <8 x float> %broadcast.splatinsert234, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ir = load float, ptr %i.hc, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert237 = insertelement <8 x float> poison, float %i.ir, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert237, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.is = load float, ptr %i.hd, align 4, !tbaa !250, !alias.scope !441
  %broadcast.splatinsert240 = insertelement <8 x float> poison, float %i.is, i64 0
  %broadcast.splat229 = shufflevector <8 x float> %broadcast.splatinsert240, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.it = load float, ptr %i.di, align 4, !tbaa !250, !alias.scope !442
  %.scalar = fneg float %i.it
  %i.iu = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.iv = shufflevector <8 x float> %i.iu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = load float, ptr %i.dj, align 4, !tbaa !250, !alias.scope !442
  %.scalar346 = fneg float %i.iw
  %i.ix = insertelement <8 x float> poison, float %.scalar346, i64 0
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iz = load float, ptr %i.dk, align 4, !tbaa !250, !alias.scope !442
  %.scalar347 = fneg float %i.iz
  %i.ja = insertelement <8 x float> poison, float %.scalar347, i64 0
  %i.jb = shufflevector <8 x float> %i.ja, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jc = load float, ptr %i.dl, align 4, !tbaa !250, !alias.scope !442
  %.scalar348 = fneg float %i.jc
  %i.jd = insertelement <8 x float> poison, float %.scalar348, i64 0
  %i.je = shufflevector <8 x float> %i.jd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jf = load float, ptr %i.dm, align 4, !tbaa !250, !alias.scope !442
  %.scalar349 = fneg float %i.jf
  %i.jg = insertelement <8 x float> poison, float %.scalar349, i64 0
  %i.jh = shufflevector <8 x float> %i.jg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ji = load float, ptr %i.dn, align 4, !tbaa !250, !alias.scope !442
  %.scalar350 = fneg float %i.ji
  %i.jj = insertelement <8 x float> poison, float %.scalar350, i64 0
  %i.jk = shufflevector <8 x float> %i.jj, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.masked.gather262 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat220, <8 x i1> %broadcast.splat218, <8 x float> poison), !tbaa !250, !alias.scope !443
  %wide.masked.gather264 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat222, <8 x i1> %broadcast.splat218, <8 x float> poison), !tbaa !250, !alias.scope !443
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph203
  %index227 = phi i64 [ 0, %vector.ph203 ], [ %index.next266, %vector.body226 ]
  %vec.ind228 = phi <8 x i64> [ %induction225, %vector.ph203 ], [ %vec.ind.next267, %vector.body226 ] ; 3 uses
  %wide.gep229 = getelementptr inbounds [12 x i8], ptr %7, <8 x i64> %vec.ind228 ; 3 uses
  %i.jl = extractelement <8 x ptr> %wide.gep229, i64 0 ; 2 uses
  %wide.vec230 = load <24 x float>, ptr %i.jl, align 4, !tbaa !250, !alias.scope !444, !noalias !445 ; 3 uses
  %strided.vec219 = shufflevector <24 x float> %wide.vec230, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec220 = shufflevector <24 x float> %wide.vec230, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec221 = shufflevector <24 x float> %wide.vec230, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %9 = fsub <8 x float> %strided.vec219, %broadcast.splat223
  %wide.gep236.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep229, i64 4 ; 2 uses
  %10 = fsub <8 x float> %strided.vec220, %broadcast.splat226
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep229, i64 8 ; 2 uses
  %11 = fsub <8 x float> %strided.vec221, %broadcast.splat229
  %12 = shufflevector <8 x float> %9, <8 x float> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %13 = shufflevector <8 x float> %11, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec242 = shufflevector <16 x float> %12, <16 x float> %13, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec242, ptr %i.jl, align 4, !tbaa !250, !alias.scope !444, !noalias !445
  %wide.gep243 = getelementptr inbounds [12 x i8], ptr %8, <8 x i64> %vec.ind228 ; 4 uses
  %i.jm = extractelement <8 x ptr> %wide.gep243, i64 0 ; 2 uses
  %wide.vec244 = load <24 x float>, ptr %i.jm, align 4, !tbaa !250, !alias.scope !446, !noalias !447 ; 3 uses
  %strided.vec245 = shufflevector <24 x float> %wide.vec244, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec246 = shufflevector <24 x float> %wide.vec244, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec247 = shufflevector <24 x float> %wide.vec244, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.jn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.iv, <8 x float> %broadcast.splat223, <8 x float> %strided.vec245) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jn, <8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %i.jo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.iy, <8 x float> %broadcast.splat226, <8 x float> %i.jn) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jo, <8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %wide.gep252 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep243, i64 4
  %i.jp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jb, <8 x float> %broadcast.splat226, <8 x float> %strided.vec246) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jp, <8 x ptr> align 4 %wide.gep252, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !446, !noalias !447
  %i.jq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.je, <8 x float> %broadcast.splat229, <8 x float> %i.jo)
  %i.jr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jh, <8 x float> %broadcast.splat229, <8 x float> %i.jp)
  %i.js = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jk, <8 x float> %broadcast.splat229, <8 x float> %strided.vec247)
  %i.jt = shufflevector <8 x float> %i.jq, <8 x float> %i.jr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ju = shufflevector <8 x float> %i.js, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec261 = shufflevector <16 x float> %i.jt, <16 x float> %i.ju, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec261, ptr %i.jm, align 4, !tbaa !250, !alias.scope !446, !noalias !447
  %wide.masked.gather263 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep236.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !444, !noalias !445
  %i.jv = fsub <8 x float> %wide.masked.gather262, %wide.masked.gather263
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jv, <8 x ptr> align 4 %wide.gep236.a, <8 x i1> %broadcast.splat218), !tbaa !250, !alias.scope !444, !noalias !445
  %wide.masked.gather265 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !444, !noalias !445
  %i.jw = fsub <8 x float> %wide.masked.gather264, %wide.masked.gather265
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.jw, <8 x ptr> align 4 %wide.gep227, <8 x i1> %broadcast.splat218), !tbaa !250, !alias.scope !444, !noalias !445
  %index.next266 = add nuw i64 %index227, 8       ; 2 uses
  %vec.ind.next267 = add nsw <8 x i64> %vec.ind228, splat (i64 8)
  %i.jx = icmp eq i64 %index.next266, %n.vec204
  br i1 %i.jx, label %middle.block268, label %vector.body226, !llvm.loop !403

middle.block268:                                  ; preds = %vector.body226
  br i1 %cmp.n269, label %.loopexit126, label %.lr.ph147.split.us.preheader356

.lr.ph147.split.us.preheader356:                  ; preds = %.lr.ph147.split.us.preheader, %middle.block268
  %indvars.iv225.ph = phi i64 [ %i.eo, %middle.block268 ], [ %.pre-phi, %.lr.ph147.split.us.preheader ]
  br label %.lr.ph147.split.us

.lr.ph147.split.us:                               ; preds = %.lr.ph147.split.us.preheader356, %bb.l
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.l ], [ %indvars.iv225.ph, %.lr.ph147.split.us.preheader356 ] ; 3 uses
  %i.jy = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv225 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !250
  %i.kb = load float, ptr %i.hd, align 4, !tbaa !250
  %i.kc = fsub float %i.ka, %i.kb
  %i.kd = load <2 x float>, ptr %i.jy, align 4, !tbaa !250
  %i.ke = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.kf = fsub <2 x float> %i.kd, %i.ke
  store <2 x float> %i.kf, ptr %i.jy, align 4, !tbaa !250
  store float %i.kc, ptr %i.jz, align 4, !tbaa !250
  %i.kg = getelementptr inbounds [12 x i8], ptr %8, i64 %indvars.iv225 ; 6 uses
  %i.kh = load float, ptr %i.di, align 4, !tbaa !250
  %i.ki = load float, ptr %i.gy, align 4, !tbaa !250
  %i.kj = load float, ptr %i.kg, align 4, !tbaa !250
  %i.kk = fneg float %i.kh
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kk, float %i.ki, float %i.kj) ; 2 uses
  store float %i.kl, ptr %i.kg, align 4, !tbaa !250
  %i.km = load float, ptr %i.dj, align 4, !tbaa !250
  %i.kn = load float, ptr %i.hc, align 4, !tbaa !250
  %i.ko = fneg float %i.km
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.kn, float %i.kl) ; 2 uses
  store float %i.kp, ptr %i.kg, align 4, !tbaa !250
  %i.kq = load float, ptr %i.dk, align 4, !tbaa !250
  %i.kr = load float, ptr %i.hc, align 4, !tbaa !250
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 4 ; 3 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !250
  %i.ku = fneg float %i.kq
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.kr, float %i.kt) ; 2 uses
  store float %i.kv, ptr %i.ks, align 4, !tbaa !250
  %i.kw = load float, ptr %i.dl, align 4, !tbaa !250
  %i.kx = load float, ptr %i.hd, align 4, !tbaa !250
  %i.ky = fneg float %i.kw
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.kx, float %i.kp)
  store float %i.kz, ptr %i.kg, align 4, !tbaa !250
  %i.la = load float, ptr %i.dm, align 4, !tbaa !250
  %i.lb = load float, ptr %i.hd, align 4, !tbaa !250
  %i.lc = fneg float %i.la
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.lb, float %i.kv)
  store float %i.ld, ptr %i.ks, align 4, !tbaa !250
  %i.le = load float, ptr %i.dn, align 4, !tbaa !250
  %i.lf = load float, ptr %i.hd, align 4, !tbaa !250
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !250
  %i.li = fneg float %i.le
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.li, float %i.lf, float %i.lh)
  store float %i.lj, ptr %i.lg, align 4, !tbaa !250
  br i1 %i.gj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph147.split.us
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 2 uses
  %i.ll = load float, ptr %i.db, align 4, !tbaa !250
  %i.lm = load float, ptr %i.lk, align 4, !tbaa !250
  %i.ln = fsub float %i.ll, %i.lm
  store float %i.ln, ptr %i.lk, align 4, !tbaa !250
  %i.lo = load float, ptr %i.dc, align 4, !tbaa !250
  %i.lp = load float, ptr %i.jz, align 4, !tbaa !250
  %i.lq = fsub float %i.lo, %i.lp
  store float %i.lq, ptr %i.jz, align 4, !tbaa !250
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph147.split.us
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %.loopexit126, label %.lr.ph147.split.us, !llvm.loop !404

.lr.ph147.split:                                  ; preds = %.lr.ph147
  br i1 %i.gj, label %.lr.ph147.split.split.us.preheader, label %.lr.ph147.split.split.preheader

.lr.ph147.split.split.preheader:                  ; preds = %.lr.ph147.split
  %brmerge396 = select i1 %min.iters.check202, i1 true, i1 %found.conflict319
  br i1 %brmerge396, label %.lr.ph147.split.split.preheader359, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph147.split.split.preheader
  %i.lr = load float, ptr %i.gy, align 4, !tbaa !250, !alias.scope !448
  %broadcast.splatinsert330 = insertelement <8 x float> poison, float %i.lr, i64 0
  %i.ls = load float, ptr %i.hc, align 4, !tbaa !250, !alias.scope !448
  %broadcast.splatinsert332 = insertelement <8 x float> poison, float %i.ls, i64 0
  %i.lt = load float, ptr %i.hd, align 4, !tbaa !250, !alias.scope !448
  %broadcast.splatinsert334 = insertelement <8 x float> poison, float %i.lt, i64 0
  %i.lu = shufflevector <8 x float> %broadcast.splatinsert330, <8 x float> %broadcast.splatinsert332, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.lv = shufflevector <8 x float> %broadcast.splatinsert334, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next337, %vector.body324 ] ; 2 uses
  %i.lw = getelementptr [12 x i8], ptr %i.ej, i64 %index325 ; 2 uses
  %wide.vec326 = load <24 x float>, ptr %i.lw, align 4, !tbaa !250, !alias.scope !449, !noalias !448 ; 2 uses
  %i.lx = shufflevector <24 x float> %wide.vec326, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ly = fsub <16 x float> %i.lx, %i.lu
  %i.lz = shufflevector <24 x float> %wide.vec326, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ma = fsub <16 x float> %i.lz, %i.lv
  %interleaved.vec336 = shufflevector <16 x float> %i.ly, <16 x float> %i.ma, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec336, ptr %i.lw, align 4, !tbaa !250, !alias.scope !449, !noalias !448
  %index.next337 = add nuw i64 %index325, 8       ; 2 uses
  %i.mb = icmp eq i64 %index.next337, %n.vec323
  br i1 %i.mb, label %middle.block338, label %vector.body324, !llvm.loop !408

middle.block338:                                  ; preds = %vector.body324
  br i1 %cmp.n339, label %.loopexit126, label %.lr.ph147.split.split.preheader359

.lr.ph147.split.split.preheader359:               ; preds = %.lr.ph147.split.split.preheader, %middle.block338
  %indvars.iv215.ph = phi i64 [ %i.ei, %middle.block338 ], [ %.pre-phi, %.lr.ph147.split.split.preheader ] ; 4 uses
  %i.mc = sub nsw i64 %wide.trip.count218, %indvars.iv215.ph
  %xtraiter373 = and i64 %i.mc, 3                 ; 2 uses
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.lr.ph147.split.split.prol.loopexit, label %.lr.ph147.split.split.prol

.lr.ph147.split.split.prol:                       ; preds = %.lr.ph147.split.split.preheader359, %.lr.ph147.split.split.prol
  %indvars.iv215.prol = phi i64 [ %indvars.iv.next216.prol, %.lr.ph147.split.split.prol ], [ %indvars.iv215.ph, %.lr.ph147.split.split.preheader359 ] ; 2 uses
  %prol.iter375 = phi i64 [ %prol.iter375.next, %.lr.ph147.split.split.prol ], [ 0, %.lr.ph147.split.split.preheader359 ]
  %i.md = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv215.prol ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !250
  %i.mg = load float, ptr %i.hd, align 4, !tbaa !250
  %i.mh = fsub float %i.mf, %i.mg
  %i.mi = load <2 x float>, ptr %i.md, align 4, !tbaa !250
  %i.mj = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.mk = fsub <2 x float> %i.mi, %i.mj
  store <2 x float> %i.mk, ptr %i.md, align 4, !tbaa !250
  store float %i.mh, ptr %i.me, align 4, !tbaa !250
  %indvars.iv.next216.prol = add nsw i64 %indvars.iv215.prol, 1 ; 2 uses
  %prol.iter375.next = add i64 %prol.iter375, 1   ; 2 uses
  %prol.iter375.cmp.not = icmp eq i64 %prol.iter375.next, %xtraiter373
  br i1 %prol.iter375.cmp.not, label %.lr.ph147.split.split.prol.loopexit, label %.lr.ph147.split.split.prol, !llvm.loop !409

.lr.ph147.split.split.prol.loopexit:              ; preds = %.lr.ph147.split.split.prol, %.lr.ph147.split.split.preheader359
  %indvars.iv215.unr = phi i64 [ %indvars.iv215.ph, %.lr.ph147.split.split.preheader359 ], [ %indvars.iv.next216.prol, %.lr.ph147.split.split.prol ]
  %i.ml = sub nsw i64 %indvars.iv215.ph, %wide.trip.count218
  %i.mm = icmp ugt i64 %i.ml, -4
  br i1 %i.mm, label %.loopexit126, label %.lr.ph147.split.split

.lr.ph147.split.split.us.preheader:               ; preds = %.lr.ph147.split
  %brmerge397 = select i1 %min.iters.check202, i1 true, i1 %conflict.rdx281
  br i1 %brmerge397, label %.lr.ph147.split.split.us.preheader357, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph147.split.split.us.preheader
  %i.mn = load float, ptr %i.gy, align 4, !tbaa !250, !alias.scope !450
  %broadcast.splatinsert297 = insertelement <8 x float> poison, float %i.mn, i64 0
  %broadcast.splat298 = shufflevector <8 x float> %broadcast.splatinsert297, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mo = load float, ptr %i.hc, align 4, !tbaa !250, !alias.scope !450
  %broadcast.splatinsert300 = insertelement <8 x float> poison, float %i.mo, i64 0
  %broadcast.splat301 = shufflevector <8 x float> %broadcast.splatinsert300, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mp = load float, ptr %i.hd, align 4, !tbaa !250, !alias.scope !450
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %i.mp, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mq = load float, ptr %i.db, align 4, !tbaa !250, !alias.scope !451
  %broadcast.splatinsert305 = insertelement <8 x float> poison, float %i.mq, i64 0
  %broadcast.splat306 = shufflevector <8 x float> %broadcast.splatinsert305, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mr = load float, ptr %i.dc, align 4, !tbaa !250, !alias.scope !451
  %broadcast.splatinsert307 = insertelement <8 x float> poison, float %i.mr, i64 0
  %broadcast.splat308 = shufflevector <8 x float> %broadcast.splatinsert307, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph284
  %index290 = phi i64 [ 0, %vector.ph284 ], [ %index.next310, %vector.body289 ]
  %vec.ind291 = phi <8 x i64> [ %induction288, %vector.ph284 ], [ %vec.ind.next311, %vector.body289 ] ; 2 uses
  %wide.gep292 = getelementptr inbounds [12 x i8], ptr %7, <8 x i64> %vec.ind291 ; 3 uses
  %i.ms = extractelement <8 x ptr> %wide.gep292, i64 0 ; 2 uses
  %wide.vec293 = load <24 x float>, ptr %i.ms, align 4, !tbaa !250, !alias.scope !452, !noalias !453 ; 3 uses
  %strided.vec294 = shufflevector <24 x float> %wide.vec293, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec295 = shufflevector <24 x float> %wide.vec293, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec296 = shufflevector <24 x float> %wide.vec293, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.mt = fsub <8 x float> %strided.vec294, %broadcast.splat298
  %wide.gep299 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 4
  %i.mu = fsub <8 x float> %strided.vec295, %broadcast.splat301 ; 2 uses
  %wide.gep302 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep292, i64 8
  %i.mv = fsub <8 x float> %strided.vec296, %broadcast.splat304 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mu, <8 x ptr> align 4 %wide.gep299, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !452, !noalias !453
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mv, <8 x ptr> align 4 %wide.gep302, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !452, !noalias !453
  %i.mw = fsub <8 x float> %broadcast.splat306, %i.mu
  %i.mx = fsub <8 x float> %broadcast.splat308, %i.mv
  %i.my = shufflevector <8 x float> %i.mt, <8 x float> %i.mw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mz = shufflevector <8 x float> %i.mx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec309 = shufflevector <16 x float> %i.my, <16 x float> %i.mz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec309, ptr %i.ms, align 4, !tbaa !250, !alias.scope !452, !noalias !453
  %index.next310 = add nuw i64 %index290, 8       ; 2 uses
  %vec.ind.next311 = add nsw <8 x i64> %vec.ind291, splat (i64 8)
  %i.na = icmp eq i64 %index.next310, %n.vec285
  br i1 %i.na, label %middle.block312, label %vector.body289, !llvm.loop !414

middle.block312:                                  ; preds = %vector.body289
  br i1 %cmp.n313, label %.loopexit126, label %.lr.ph147.split.split.us.preheader357

.lr.ph147.split.split.us.preheader357:            ; preds = %.lr.ph147.split.split.us.preheader, %middle.block312
  %indvars.iv220.ph = phi i64 [ %i.ek, %middle.block312 ], [ %.pre-phi, %.lr.ph147.split.split.us.preheader ] ; 5 uses
  %i.nb = sub nsw i64 %wide.trip.count218, %indvars.iv220.ph
  %xtraiter376 = and i64 %i.nb, 1
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph147.split.split.us.prol.loopexit, label %.lr.ph147.split.split.us.prol

.lr.ph147.split.split.us.prol:                    ; preds = %.lr.ph147.split.split.us.preheader357
  %i.nc = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv220.ph ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 3 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !250
  %i.ng = load float, ptr %i.hd, align 4, !tbaa !250
  %i.nh = fsub float %i.nf, %i.ng                 ; 2 uses
  %i.ni = load <2 x float>, ptr %i.nc, align 4, !tbaa !250
  %i.nj = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.nk = fsub <2 x float> %i.ni, %i.nj           ; 2 uses
  store <2 x float> %i.nk, ptr %i.nc, align 4, !tbaa !250
  store float %i.nh, ptr %i.ne, align 4, !tbaa !250
  %i.nl = load float, ptr %i.db, align 4, !tbaa !250
  %i.nm = extractelement <2 x float> %i.nk, i64 1
  %i.nn = fsub float %i.nl, %i.nm
  store float %i.nn, ptr %i.nd, align 4, !tbaa !250
  %i.no = load float, ptr %i.dc, align 4, !tbaa !250
  %i.np = fsub float %i.no, %i.nh
  store float %i.np, ptr %i.ne, align 4, !tbaa !250
  %indvars.iv.next221.prol = add nsw i64 %indvars.iv220.ph, 1
  br label %.lr.ph147.split.split.us.prol.loopexit

.lr.ph147.split.split.us.prol.loopexit:           ; preds = %.lr.ph147.split.split.us.prol, %.lr.ph147.split.split.us.preheader357
  %indvars.iv220.unr = phi i64 [ %indvars.iv220.ph, %.lr.ph147.split.split.us.preheader357 ], [ %indvars.iv.next221.prol, %.lr.ph147.split.split.us.prol ]
  %i.nq = icmp eq i64 %indvars.iv220.ph, %i.el
  br i1 %i.nq, label %.loopexit126, label %.lr.ph147.split.split.us

.lr.ph147.split.split.us:                         ; preds = %.lr.ph147.split.split.us.prol.loopexit, %.lr.ph147.split.split.us
  %indvars.iv220 = phi i64 [ %indvars.iv.next221.1, %.lr.ph147.split.split.us ], [ %indvars.iv220.unr, %.lr.ph147.split.split.us.prol.loopexit ] ; 3 uses
  %i.nr = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv220 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 3 uses
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !250
  %i.nv = load float, ptr %i.hd, align 4, !tbaa !250
  %i.nw = fsub float %i.nu, %i.nv                 ; 2 uses
  %i.nx = load <2 x float>, ptr %i.nr, align 4, !tbaa !250
  %i.ny = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.nz = fsub <2 x float> %i.nx, %i.ny           ; 2 uses
  store <2 x float> %i.nz, ptr %i.nr, align 4, !tbaa !250
  store float %i.nw, ptr %i.nt, align 4, !tbaa !250
  %i.oa = load float, ptr %i.db, align 4, !tbaa !250
  %i.ob = extractelement <2 x float> %i.nz, i64 1
  %i.oc = fsub float %i.oa, %i.ob
  store float %i.oc, ptr %i.ns, align 4, !tbaa !250
  %i.od = load float, ptr %i.dc, align 4, !tbaa !250
  %i.oe = fsub float %i.od, %i.nw
  store float %i.oe, ptr %i.nt, align 4, !tbaa !250
  %i.of = getelementptr [12 x i8], ptr %7, i64 %indvars.iv220 ; 3 uses
  %i.og = getelementptr i8, ptr %i.of, i64 12     ; 2 uses
  %i.oh = getelementptr i8, ptr %i.of, i64 16
  %i.oi = getelementptr i8, ptr %i.of, i64 20     ; 3 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !250
  %i.ok = load float, ptr %i.hd, align 4, !tbaa !250
  %i.ol = fsub float %i.oj, %i.ok                 ; 2 uses
  %i.om = load <2 x float>, ptr %i.og, align 4, !tbaa !250
  %i.on = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.oo = fsub <2 x float> %i.om, %i.on           ; 2 uses
  store <2 x float> %i.oo, ptr %i.og, align 4, !tbaa !250
  store float %i.ol, ptr %i.oi, align 4, !tbaa !250
  %i.op = load float, ptr %i.db, align 4, !tbaa !250
  %i.oq = extractelement <2 x float> %i.oo, i64 1
  %i.or = fsub float %i.op, %i.oq
  store float %i.or, ptr %i.oh, align 4, !tbaa !250
  %i.os = load float, ptr %i.dc, align 4, !tbaa !250
  %i.ot = fsub float %i.os, %i.ol
  store float %i.ot, ptr %i.oi, align 4, !tbaa !250
  %indvars.iv.next221.1 = add nsw i64 %indvars.iv220, 2 ; 2 uses
  %exitcond224.not.1 = icmp eq i64 %indvars.iv.next221.1, %wide.trip.count223
  br i1 %exitcond224.not.1, label %.loopexit126, label %.lr.ph147.split.split.us, !llvm.loop !415

.lr.ph147.split.split:                            ; preds = %.lr.ph147.split.split.prol.loopexit, %.lr.ph147.split.split
  %indvars.iv215 = phi i64 [ %indvars.iv.next216.3, %.lr.ph147.split.split ], [ %indvars.iv215.unr, %.lr.ph147.split.split.prol.loopexit ] ; 5 uses
  %i.ou = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv215 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !250
  %i.ox = load float, ptr %i.hd, align 4, !tbaa !250
  %i.oy = fsub float %i.ow, %i.ox
  %i.oz = load <2 x float>, ptr %i.ou, align 4, !tbaa !250
  %i.pa = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.pb = fsub <2 x float> %i.oz, %i.pa
  store <2 x float> %i.pb, ptr %i.ou, align 4, !tbaa !250
  store float %i.oy, ptr %i.ov, align 4, !tbaa !250
  %i.pc = getelementptr [12 x i8], ptr %7, i64 %indvars.iv215 ; 2 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 12     ; 2 uses
  %i.pe = getelementptr i8, ptr %i.pc, i64 20     ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !250
  %i.pg = load float, ptr %i.hd, align 4, !tbaa !250
  %i.ph = fsub float %i.pf, %i.pg
  %i.pi = load <2 x float>, ptr %i.pd, align 4, !tbaa !250
  %i.pj = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.pk = fsub <2 x float> %i.pi, %i.pj
  store <2 x float> %i.pk, ptr %i.pd, align 4, !tbaa !250
  store float %i.ph, ptr %i.pe, align 4, !tbaa !250
  %i.pl = getelementptr [12 x i8], ptr %7, i64 %indvars.iv215 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 24     ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pl, i64 32     ; 2 uses
  %i.po = load float, ptr %i.pn, align 4, !tbaa !250
  %i.pp = load float, ptr %i.hd, align 4, !tbaa !250
  %i.pq = fsub float %i.po, %i.pp
  %i.pr = load <2 x float>, ptr %i.pm, align 4, !tbaa !250
  %i.ps = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.pt = fsub <2 x float> %i.pr, %i.ps
  store <2 x float> %i.pt, ptr %i.pm, align 4, !tbaa !250
  store float %i.pq, ptr %i.pn, align 4, !tbaa !250
  %i.pu = getelementptr [12 x i8], ptr %7, i64 %indvars.iv215 ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 36     ; 2 uses
  %i.pw = getelementptr i8, ptr %i.pu, i64 44     ; 2 uses
  %i.px = load float, ptr %i.pw, align 4, !tbaa !250
  %i.py = load float, ptr %i.hd, align 4, !tbaa !250
  %i.pz = fsub float %i.px, %i.py
  %i.qa = load <2 x float>, ptr %i.pv, align 4, !tbaa !250
  %i.qb = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.qc = fsub <2 x float> %i.qa, %i.qb
  store <2 x float> %i.qc, ptr %i.pv, align 4, !tbaa !250
  store float %i.pz, ptr %i.pw, align 4, !tbaa !250
  %indvars.iv.next216.3 = add nsw i64 %indvars.iv215, 4 ; 2 uses
  %exitcond219.not.3 = icmp eq i64 %indvars.iv.next216.3, %wide.trip.count218
  br i1 %exitcond219.not.3, label %.loopexit126, label %.lr.ph147.split.split, !llvm.loop !416

.loopexit:                                        ; preds = %.lr.ph162.split.split.prol.loopexit, %.lr.ph162.split.split, %.lr.ph162.split.split.us.prol.loopexit, %.lr.ph162.split.split.us, %bb.q, %middle.block165, %middle.block139, %middle.block, %bb.o
  %i.qd = fcmp olt float %i.qg, 0.000000e+00
  br i1 %i.qd, label %bb.m, label %.loopexit127.loopexit, !llvm.loop !417

bb.m:                                             ; preds = %.lr.ph165, %.loopexit
  %.lcssa171 = phi float [ %.lcssa, %.lr.ph165 ], [ %i.qi, %.loopexit ]
  %.3164 = phi float [ %.2.lcssa, %.lr.ph165 ], [ %i.qg, %.loopexit ]
  %i.qe = phi <2 x float> [ %i.hp, %.lr.ph165 ], [ %i.qq, %.loopexit ]
  %i.qf = load float, ptr %i.gz, align 4, !tbaa !250
  %i.qg = fadd float %.3164, %i.qf                ; 3 uses
  %i.qh = load float, ptr %i.gy, align 4, !tbaa !250
  %i.qi = fadd float %.lcssa171, %i.qh            ; 3 uses
  %i.qj = load <2 x float>, ptr %i.hr, align 4, !tbaa !250
  %i.qk = fadd <2 x float> %i.qe, %i.qj           ; 2 uses
  br i1 %i.gj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ql = load float, ptr %i.db, align 4, !tbaa !250
  %i.qm = load float, ptr %i.dc, align 4, !tbaa !250
  %i.qn = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.qo = insertelement <2 x float> %i.qn, float %i.qm, i64 1
  %i.qp = fsub <2 x float> %i.qo, %i.qk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.qq = phi <2 x float> [ %i.qp, %bb.n ], [ %i.qk, %bb.m ] ; 4 uses
  br i1 %i.dd, label %.lr.ph162, label %.loopexit

.lr.ph162:                                        ; preds = %bb.o
  br i1 %i.g, label %.lr.ph162.split.us.preheader, label %.lr.ph162.split

.lr.ph162.split.us.preheader:                     ; preds = %.lr.ph162
  %brmerge398 = select i1 %min.iters.check, i1 true, i1 %op.rdx342
  br i1 %brmerge398, label %.lr.ph162.split.us.preheader351, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.split.us.preheader
  %i.qr = load float, ptr %i.gy, align 4, !tbaa !250, !alias.scope !454
  %broadcast.splatinsert59.a = insertelement <8 x float> poison, float %i.qr, i64 0
  %broadcast.splat57 = shufflevector <8 x float> %broadcast.splatinsert59.a, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qs = load float, ptr %i.hr, align 4, !tbaa !250, !alias.scope !454
  %broadcast.splatinsert69.a = insertelement <8 x float> poison, float %i.qs, i64 0
  %broadcast.splat70.a = shufflevector <8 x float> %broadcast.splatinsert69.a, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.qt = load float, ptr %i.hs, align 4, !tbaa !250, !alias.scope !454
  %broadcast.splatinsert71.a = insertelement <8 x float> poison, float %i.qt, i64 0
  %broadcast.splat72.a = shufflevector <8 x float> %broadcast.splatinsert71.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qu = load float, ptr %i.di, align 4, !tbaa !250, !alias.scope !455
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.qu, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qv = load float, ptr %i.dj, align 4, !tbaa !250, !alias.scope !455
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %i.qv, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qw = load float, ptr %i.dk, align 4, !tbaa !250, !alias.scope !455
  %broadcast.splatinsert80.a = insertelement <8 x float> poison, float %i.qw, i64 0
  %broadcast.splat81.a = shufflevector <8 x float> %broadcast.splatinsert80.a, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qx = load float, ptr %i.dl, align 4, !tbaa !250, !alias.scope !455
  %broadcast.splatinsert84 = insertelement <8 x float> poison, float %i.qx, i64 0
  %broadcast.splat85 = shufflevector <8 x float> %broadcast.splatinsert84, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qy = load float, ptr %i.dm, align 4, !tbaa !250, !alias.scope !455
  %broadcast.splatinsert88 = insertelement <8 x float> poison, float %i.qy, i64 0
  %broadcast.splat89 = shufflevector <8 x float> %broadcast.splatinsert88, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qz = load float, ptr %i.dn, align 4, !tbaa !250, !alias.scope !455
  %broadcast.splatinsert92 = insertelement <8 x float> poison, float %i.qz, i64 0
  %broadcast.splat93 = shufflevector <8 x float> %broadcast.splatinsert92, <8 x float> poison, <8 x i32> zeroinitializer
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat49, <8 x i1> %broadcast.splat, <8 x float> poison), !tbaa !250, !alias.scope !456
  %wide.masked.gather96 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat51, <8 x i1> %broadcast.splat, <8 x float> poison), !tbaa !250, !alias.scope !456
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %wide.gep = getelementptr inbounds [12 x i8], ptr %7, <8 x i64> %vec.ind ; 3 uses
  %i.ra = extractelement <8 x ptr> %wide.gep, i64 0 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.ra, align 4, !tbaa !250, !alias.scope !457, !noalias !458 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec54 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec55 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %14 = fadd <8 x float> %strided.vec, %broadcast.splat57
  %wide.gep58 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  %15 = fadd <8 x float> %strided.vec54, %broadcast.splat70.a
  %wide.gep61 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  %16 = fadd <8 x float> %strided.vec55, %broadcast.splat72.a
  %17 = shufflevector <8 x float> %14, <8 x float> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %18 = shufflevector <8 x float> %16, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %17, <16 x float> %18, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.ra, align 4, !tbaa !250, !alias.scope !457, !noalias !458
  %wide.gep64 = getelementptr inbounds [12 x i8], ptr %8, <8 x i64> %vec.ind ; 4 uses
  %i.rb = extractelement <8 x ptr> %wide.gep64, i64 0 ; 2 uses
  %wide.vec65 = load <24 x float>, ptr %i.rb, align 4, !tbaa !250, !alias.scope !459, !noalias !460 ; 3 uses
  %strided.vec66 = shufflevector <24 x float> %wide.vec65, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec67 = shufflevector <24 x float> %wide.vec65, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec68 = shufflevector <24 x float> %wide.vec65, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.rc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat74, <8 x float> %broadcast.splat57, <8 x float> %strided.vec66) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.rc, <8 x ptr> align 4 %wide.gep64, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !459, !noalias !460
  %i.rd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat76, <8 x float> %broadcast.splat70.a, <8 x float> %i.rc) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.rd, <8 x ptr> align 4 %wide.gep64, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !459, !noalias !460
  %wide.gep77 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep64, i64 4
  %i.re = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat81.a, <8 x float> %broadcast.splat70.a, <8 x float> %strided.vec67) ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.re, <8 x ptr> align 4 %wide.gep77, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !459, !noalias !460
  %i.rf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat85, <8 x float> %broadcast.splat72.a, <8 x float> %i.rd)
  %i.rg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat89, <8 x float> %broadcast.splat72.a, <8 x float> %i.re)
  %i.rh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat93, <8 x float> %broadcast.splat72.a, <8 x float> %strided.vec68)
  %i.ri = shufflevector <8 x float> %i.rf, <8 x float> %i.rg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rj = shufflevector <8 x float> %i.rh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec94 = shufflevector <16 x float> %i.ri, <16 x float> %i.rj, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec94, ptr %i.rb, align 4, !tbaa !250, !alias.scope !459, !noalias !460
  %wide.masked.gather95 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep58, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !457, !noalias !458
  %i.rk = fsub <8 x float> %wide.masked.gather, %wide.masked.gather95
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.rk, <8 x ptr> align 4 %wide.gep58, <8 x i1> %broadcast.splat), !tbaa !250, !alias.scope !457, !noalias !458
  %wide.masked.gather97 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep61, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !250, !alias.scope !457, !noalias !458
  %i.rl = fsub <8 x float> %wide.masked.gather96, %wide.masked.gather97
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.rl, <8 x ptr> align 4 %wide.gep61, <8 x i1> %broadcast.splat), !tbaa !250, !alias.scope !457, !noalias !458
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.rm = icmp eq i64 %index.next, %n.vec
  br i1 %i.rm, label %middle.block, label %vector.body, !llvm.loop !424

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph162.split.us.preheader351

.lr.ph162.split.us.preheader351:                  ; preds = %.lr.ph162.split.us.preheader, %middle.block
  %indvars.iv240.ph = phi i64 [ %i.fa, %middle.block ], [ %.pre-phi, %.lr.ph162.split.us.preheader ]
  br label %.lr.ph162.split.us

.lr.ph162.split.us:                               ; preds = %.lr.ph162.split.us.preheader351, %bb.q
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %bb.q ], [ %indvars.iv240.ph, %.lr.ph162.split.us.preheader351 ] ; 3 uses
  %i.rn = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv240 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8 ; 4 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !250
  %i.rq = load float, ptr %i.hs, align 4, !tbaa !250
  %i.rr = fadd float %i.rp, %i.rq
  %i.rs = load <2 x float>, ptr %i.rn, align 4, !tbaa !250
  %i.rt = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.ru = fadd <2 x float> %i.rs, %i.rt
  store <2 x float> %i.ru, ptr %i.rn, align 4, !tbaa !250
  store float %i.rr, ptr %i.ro, align 4, !tbaa !250
  %i.rv = getelementptr inbounds [12 x i8], ptr %8, i64 %indvars.iv240 ; 6 uses
  %i.rw = load float, ptr %i.di, align 4, !tbaa !250
  %i.rx = load float, ptr %i.gy, align 4, !tbaa !250
  %i.ry = load float, ptr %i.rv, align 4, !tbaa !250
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.rw, float %i.rx, float %i.ry) ; 2 uses
  store float %i.rz, ptr %i.rv, align 4, !tbaa !250
  %i.sa = load float, ptr %i.dj, align 4, !tbaa !250
  %i.sb = load float, ptr %i.hr, align 4, !tbaa !250
  %i.sc = tail call float @llvm.fmuladd.f32(float %i.sa, float %i.sb, float %i.rz) ; 2 uses
  store float %i.sc, ptr %i.rv, align 4, !tbaa !250
  %i.sd = load float, ptr %i.dk, align 4, !tbaa !250
  %i.se = load float, ptr %i.hr, align 4, !tbaa !250
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rv, i64 4 ; 3 uses
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !250
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.sd, float %i.se, float %i.sg) ; 2 uses
  store float %i.sh, ptr %i.sf, align 4, !tbaa !250
  %i.si = load float, ptr %i.dl, align 4, !tbaa !250
  %i.sj = load float, ptr %i.hs, align 4, !tbaa !250
  %i.sk = tail call float @llvm.fmuladd.f32(float %i.si, float %i.sj, float %i.sc)
  store float %i.sk, ptr %i.rv, align 4, !tbaa !250
  %i.sl = load float, ptr %i.dm, align 4, !tbaa !250
  %i.sm = load float, ptr %i.hs, align 4, !tbaa !250
  %i.sn = tail call float @llvm.fmuladd.f32(float %i.sl, float %i.sm, float %i.sh)
  store float %i.sn, ptr %i.sf, align 4, !tbaa !250
  %i.so = load float, ptr %i.dn, align 4, !tbaa !250
  %i.sp = load float, ptr %i.hs, align 4, !tbaa !250
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !250
  %i.ss = tail call float @llvm.fmuladd.f32(float %i.so, float %i.sp, float %i.sr)
  store float %i.ss, ptr %i.sq, align 4, !tbaa !250
  br i1 %i.gj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph162.split.us
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 4 ; 2 uses
  %i.su = load float, ptr %i.db, align 4, !tbaa !250
  %i.sv = load float, ptr %i.st, align 4, !tbaa !250
  %i.sw = fsub float %i.su, %i.sv
  store float %i.sw, ptr %i.st, align 4, !tbaa !250
  %i.sx = load float, ptr %i.dc, align 4, !tbaa !250
  %i.sy = load float, ptr %i.ro, align 4, !tbaa !250
  %i.sz = fsub float %i.sx, %i.sy
  store float %i.sz, ptr %i.ro, align 4, !tbaa !250
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph162.split.us
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %.loopexit, label %.lr.ph162.split.us, !llvm.loop !425

.lr.ph162.split:                                  ; preds = %.lr.ph162
  br i1 %i.gj, label %.lr.ph162.split.split.us.preheader, label %.lr.ph162.split.split.preheader

.lr.ph162.split.split.preheader:                  ; preds = %.lr.ph162.split
  %brmerge399 = select i1 %min.iters.check, i1 true, i1 %found.conflict146
  br i1 %brmerge399, label %.lr.ph162.split.split.preheader354, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph162.split.split.preheader
  %i.ta = load float, ptr %i.gy, align 4, !tbaa !250, !alias.scope !461
  %broadcast.splatinsert157 = insertelement <8 x float> poison, float %i.ta, i64 0
  %i.tb = load float, ptr %i.hr, align 4, !tbaa !250, !alias.scope !461
  %broadcast.splatinsert159 = insertelement <8 x float> poison, float %i.tb, i64 0
  %i.tc = load float, ptr %i.hs, align 4, !tbaa !250, !alias.scope !461
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.tc, i64 0
  %i.td = shufflevector <8 x float> %broadcast.splatinsert157, <8 x float> %broadcast.splatinsert159, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.te = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next164, %vector.body151 ] ; 2 uses
  %i.tf = getelementptr [12 x i8], ptr %i.eu, i64 %index152 ; 2 uses
  %wide.vec153 = load <24 x float>, ptr %i.tf, align 4, !tbaa !250, !alias.scope !462, !noalias !461 ; 2 uses
  %i.tg = shufflevector <24 x float> %wide.vec153, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.th = fadd <16 x float> %i.tg, %i.td
  %i.ti = shufflevector <24 x float> %wide.vec153, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tj = fadd <16 x float> %i.ti, %i.te
  %interleaved.vec163 = shufflevector <16 x float> %i.th, <16 x float> %i.tj, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec163, ptr %i.tf, align 4, !tbaa !250, !alias.scope !462, !noalias !461
  %index.next164 = add nuw i64 %index152, 8       ; 2 uses
  %i.tk = icmp eq i64 %index.next164, %n.vec150
  br i1 %i.tk, label %middle.block165, label %vector.body151, !llvm.loop !429

middle.block165:                                  ; preds = %vector.body151
  br i1 %cmp.n166, label %.loopexit, label %.lr.ph162.split.split.preheader354

.lr.ph162.split.split.preheader354:               ; preds = %.lr.ph162.split.split.preheader, %middle.block165
  %indvars.iv230.ph = phi i64 [ %i.et, %middle.block165 ], [ %.pre-phi, %.lr.ph162.split.split.preheader ] ; 4 uses
  %i.tl = sub nsw i64 %wide.trip.count218, %indvars.iv230.ph
  %xtraiter379 = and i64 %i.tl, 3                 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph162.split.split.prol.loopexit, label %.lr.ph162.split.split.prol

.lr.ph162.split.split.prol:                       ; preds = %.lr.ph162.split.split.preheader354, %.lr.ph162.split.split.prol
  %indvars.iv230.prol = phi i64 [ %indvars.iv.next231.prol, %.lr.ph162.split.split.prol ], [ %indvars.iv230.ph, %.lr.ph162.split.split.preheader354 ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph162.split.split.prol ], [ 0, %.lr.ph162.split.split.preheader354 ]
  %i.tm = getelementptr inbounds [12 x i8], ptr %7, i64 %indvars.iv230.prol ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !250
  %i.tp = load float, ptr %i.hs, align 4, !tbaa !250
  %i.tq = fadd float %i.to, %i.tp
  %i.tr = load <2 x float>, ptr %i.tm, align 4, !tbaa !250
  %i.ts = load <2 x float>, ptr %i.gy, align 4, !tbaa !250
  %i.tt = fadd <2 x float> %i.tr, %i.ts
  store <2 x float> %i.tt, ptr %i.tm, align 4, !tbaa !250
  store float %i.tq, ptr %i.tn, align 4, !tbaa !250
  %indvars.iv.next231.prol = add nsw i64 %indvars.iv230.prol, 1 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph162.split.split.prol.loopexit, label %.lr.ph162.split.split.prol, !llvm.loop !430

.lr.ph162.split.split.prol.loopexit:              ; preds = %.lr.ph162.split.split.prol, %.lr.ph162.split.split.preheader354
  %indvars.iv230.unr = phi i64 [ %indvars.iv230.ph, %.lr.ph162.split.split.preheader354 ], [ %indvars.iv.next231.prol, %.lr.ph162.split.split.prol ]
  %i.tu = sub nsw i64 %indvars.iv230.ph, %wide.trip.count218
  %i.tv = icmp ugt i64 %i.tu, -4
  br i1 %i.tv, label %.loopexit, label %.lr.ph162.split.split

.lr.ph162.split.split.us.preheader:               ; preds = %.lr.ph162.split
  %brmerge400 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx108
  br i1 %brmerge400, label %.lr.ph162.split.split.us.preheader352, label %vector.ph111

vector.ph111:                                     ; preds = %.lr.ph162.split.split.us.preheader
  %i.tw = load float, ptr %i.gy, align 4, !tbaa !250, !alias.scope !463
  %broadcast.splatinsert124 = insertelement <8 x float> poison, float %i.tw, i64 0
  %broadcast.splat125 = shufflevector <8 x float> %broadcast.splatinsert124, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tx = load float, ptr %i.hr, align 4, !tbaa !250, !alias.scope !463
  %broadcast.splatinsert127 = insertelement <8 x float> poison, float %i.tx, i64 0
  %broadcast.splat128 = shufflevector <8 x float> %broadcast.splatinsert127, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ty = load float, ptr %i.hs, align 4, !tbaa !250, !alias.scope !463
  %broadcast.splatinsert130 = insertelement <8 x float> poison, float %i.ty, i64 0
  %broadcast.splat131 = shufflevector <8 x float> %broadcast.splatinsert130, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tz = load float, ptr %i.db, align 4, !tbaa !250, !alias.scope !464
  %broadcast.splatinsert132 = insertelement <8 x float> poison, float %i.tz, i64 0
  %broadcast.splat133 = shufflevector <8 x float> %broadcast.splatinsert132, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ua = load float, ptr %i.dc, align 4, !tbaa !250, !alias.scope !464
  %broadcast.splatinsert134 = insertelement <8 x float> poison, float %i.ua, i64 0
  %broadcast.splat135 = shufflevector <8 x float> %broadcast.splatinsert134, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph111
  %index117 = phi i64 [ 0, %vector.ph111 ], [ %index.next137, %vector.body116 ]
  %vec.ind118 = phi <8 x i64> [ %induction115, %vector.ph111 ], [ %vec.ind.next138, %vector.body116 ] ; 2 uses
  %wide.gep119 = getelementptr inbounds [12 x i8], ptr %7, <8 x i64> %vec.ind118 ; 3 uses
  %i.ub = extractelement <8 x ptr> %wide.gep119, i64 0 ; 2 uses
  %wide.vec120 = load <24 x float>, ptr %i.ub, align 4, !tbaa !250, !alias.scope !465, !noalias !466 ; 3 uses
  %strided.vec121 = shufflevector <24 x float> %wide.vec120, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec122 = shufflevector <24 x float> %wide.vec120, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec123 = shufflevector <24 x float> %wide.vec120, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.uc = fadd <8 x float> %strided.vec121, %broadcast.splat125
  %wide.gep126 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep119, i64 4
  %i.ud = fadd <8 x float> %strided.vec122, %broadcast.splat128 ; 2 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep119, i64 8
  %i.ue = fadd <8 x float> %strided.vec123, %broadcast.splat131 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ud, <8 x ptr> align 4 %wide.gep126, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !465, !noalias !466
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ue, <8 x ptr> align 4 %wide.gep129, <8 x i1> splat (i1 true)), !tbaa !250, !alias.scope !465, !noalias !466
  %i.uf = fsub <8 x float> %broadcast.splat133, %i.ud
  %i.ug = fsub <8 x float> %broadcast.splat135, %i.ue
  %i.uh = shufflevector <8 x float> %i.uc, <8 x float> %i.uf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ui = shufflevector <8 x float> %i.ug, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec136 = shufflevector <16 x float> %i.uh, <16 x float> %i.ui, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec136, ptr %i.ub, align 4, !tbaa !250, !alias.scope !465, !noalias !466
  %index.next137 = add nuw i64 %index117, 8       ; 2 uses
  %vec.ind.next138 = add nsw <8 x i64> %vec.ind118, splat (i64 8)
  %i.uj = icmp eq i64 %index.next137, %n.vec112
  br i1 %i.uj, label %middle.block139, label %vector.body116, !llvm.loop !435

middle.block139:                                  ; preds = %vector.body116
  br i1 %cmp.n140, label %.loopexit, label %.lr.ph162.split.split.us.preheader352
end_hunk_0
