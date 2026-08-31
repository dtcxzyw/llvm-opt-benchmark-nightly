Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZNK2cv6DFT_R3IfEclEPNS_7ComplexIfEEiiiPKS3_:bb.a
  %bound0271 = icmp ult ptr %scevgep204, %scevgep211
  %bound1272 = icmp ult ptr %scevgep210, %scevgep205
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %scevgep206, %scevgep209
  %bound1276 = icmp ult ptr %scevgep208, %scevgep207
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep206, %scevgep211
  %bound1280 = icmp ult ptr %scevgep210, %scevgep207
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %scalar.ph283.preheader, label %vector.body287

vector.body287:                                   ; preds = %vector.memcheck191, %vector.body287
  %index288 = phi i64 [ %index.next304, %vector.body287 ], [ 0, %vector.memcheck191 ] ; 5 uses
  %i.cf = or disjoint i64 %index288, 1            ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.c ; 2 uses
  %wide.vec289 = load <8 x float>, ptr %i.ch, align 4, !tbaa !143 ; 2 uses
  %strided.vec290 = shufflevector <8 x float> %wide.vec289, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec291 = shufflevector <8 x float> %wide.vec289, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cf
  %wide.vec292 = load <8 x float>, ptr %i.ci, align 4, !tbaa !143 ; 2 uses
  %strided.vec293 = shufflevector <8 x float> %wide.vec292, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec294 = shufflevector <8 x float> %wide.vec292, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cj = fneg <4 x float> %strided.vec294
  %i.ck = fmul <4 x float> %strided.vec291, %i.cj
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec290, <4 x float> %strided.vec293, <4 x float> %i.ck) ; 2 uses
  %i.cm = fmul <4 x float> %strided.vec293, %strided.vec291
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec290, <4 x float> %strided.vec294, <4 x float> %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.e ; 2 uses
  %wide.vec295 = load <8 x float>, ptr %i.co, align 4, !tbaa !143 ; 2 uses
  %strided.vec296 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec297 = shufflevector <8 x float> %wide.vec295, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cp = shl nsw i64 %i.cf, 4
  %i.cq = shl i64 %index288, 4
  %i.cr = shl i64 %index288, 4
  %i.cs = shl i64 %index288, 4
  %i.ct = getelementptr inbounds i8, ptr %5, i64 %i.cp ; 2 uses
  %i.cu = getelementptr i8, ptr %5, i64 %i.cq     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 32
  %i.cw = getelementptr i8, ptr %5, i64 %i.cr     ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 48
  %i.cy = getelementptr i8, ptr %5, i64 %i.cs     ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 64
  %i.da = load float, ptr %i.ct, align 4, !tbaa !412, !alias.scope !463
  %i.db = load float, ptr %i.cv, align 4, !tbaa !412, !alias.scope !463
  %i.dc = load float, ptr %i.cx, align 4, !tbaa !412, !alias.scope !463
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !412, !alias.scope !463
  %i.de = insertelement <4 x float> poison, float %i.da, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 3 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dj = getelementptr i8, ptr %i.cu, i64 36
  %i.dk = getelementptr i8, ptr %i.cw, i64 52
  %i.dl = getelementptr i8, ptr %i.cy, i64 68
  %i.dm = load float, ptr %i.di, align 4, !tbaa !414, !alias.scope !466
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !414, !alias.scope !466
  %i.do = load float, ptr %i.dk, align 4, !tbaa !414, !alias.scope !466
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !414, !alias.scope !466
  %i.dq = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 3 ; 2 uses
  %i.du = fneg <4 x float> %i.dt
  %i.dv = fmul <4 x float> %strided.vec297, %i.du
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec296, <4 x float> %i.dh, <4 x float> %i.dv) ; 2 uses
  %i.dx = fmul <4 x float> %i.dh, %strided.vec297
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec296, <4 x float> %i.dt, <4 x float> %i.dx) ; 2 uses
  %i.dz = fadd <4 x float> %i.cl, %i.dw           ; 2 uses
  %i.ea = fadd <4 x float> %i.cn, %i.dy           ; 2 uses
  %i.eb = fsub <4 x float> %i.cn, %i.dy
  %i.ec = fmul <4 x float> %i.eb, splat (float f0x3F5DB3D7) ; 2 uses
  %i.ed = fsub <4 x float> %i.dw, %i.cl
  %i.ee = fmul <4 x float> %i.ed, splat (float f0x3F5DB3D7) ; 2 uses
  %wide.vec298 = load <8 x float>, ptr %i.cg, align 4, !tbaa !143 ; 2 uses
  %strided.vec299 = shufflevector <8 x float> %wide.vec298, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec300 = shufflevector <8 x float> %wide.vec298, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ef = fadd <4 x float> %strided.vec299, %i.dz
  %i.eg = fadd <4 x float> %strided.vec300, %i.ea
  %interleaved.vec301 = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec301, ptr %i.cg, align 4, !tbaa !143
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> splat (float -5.000000e-01), <4 x float> %strided.vec299) ; 2 uses
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> splat (float -5.000000e-01), <4 x float> %strided.vec300) ; 2 uses
  %i.ej = fadd <4 x float> %i.ec, %i.eh
  %i.ek = fadd <4 x float> %i.ei, %i.ee
  %interleaved.vec302 = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec302, ptr %i.ch, align 4, !tbaa !143
  %i.el = fsub <4 x float> %i.eh, %i.ec
  %i.em = fsub <4 x float> %i.ei, %i.ee
  %interleaved.vec303 = shufflevector <4 x float> %i.el, <4 x float> %i.em, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec303, ptr %i.co, align 4, !tbaa !143
  %index.next304 = add nuw i64 %index288, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next304, %n.vec286
  br i1 %i.en, label %scalar.ph283.preheader, label %vector.body287, !llvm.loop !468

scalar.ph283.preheader:                           ; preds = %vector.body287, %vector.memcheck191, %.lr.ph.us
  %indvars.iv139.ph = phi i64 [ %i.ae, %vector.memcheck191 ], [ %i.ae, %.lr.ph.us ], [ %i.bm, %vector.body287 ]
  %indvars.iv137.ph = phi i64 [ 1, %vector.memcheck191 ], [ 1, %.lr.ph.us ], [ %i.bm, %vector.body287 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph283 ], [ %indvars.iv139.ph, %scalar.ph283.preheader ] ; 3 uses
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph283 ], [ %indvars.iv137.ph, %scalar.ph283.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv137 ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.c ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv139 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.e ; 2 uses
  %.idx = shl nsw i64 %indvars.iv139, 4
  %i.et = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load <2 x float>, ptr %i.ep, align 4, !tbaa !143 ; 3 uses
  %i.ew = load float, ptr %i.er, align 4, !tbaa !414 ; 2 uses
  %i.ex = load float, ptr %i.eq, align 4, !tbaa !412 ; 2 uses
  %i.ey = fneg float %i.ew
  %i.ez = load <2 x float>, ptr %i.es, align 4, !tbaa !143 ; 3 uses
  %i.fa = load float, ptr %i.eu, align 4, !tbaa !414 ; 2 uses
  %i.fb = load float, ptr %i.et, align 4, !tbaa !412 ; 2 uses
  %i.fc = fneg float %i.fa
  %i.fd = insertelement <2 x float> %i.ez, float %i.ex, i64 0
  %i.fe = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.fc, i64 1
  %i.fg = fmul <2 x float> %i.fd, %i.ff
  %i.fh = insertelement <2 x float> %i.ev, float %i.fb, i64 0
  %i.fi = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fj = insertelement <2 x float> %i.fi, float %i.ey, i64 1
  %i.fk = fmul <2 x float> %i.fh, %i.fj
  %i.fl = shufflevector <2 x float> %i.ev, <2 x float> %i.ez, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fb, i64 1
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> %i.fg) ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.ex, i64 1
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fr, <2 x float> %i.fk) ; 2 uses
  %i.ft = fsub <2 x float> %i.fo, %i.fs
  %i.fu = fmul <2 x float> %i.ft, splat (float f0x3F5DB3D7) ; 2 uses
  %i.fv = load <2 x float>, ptr %i.eo, align 4, !tbaa !143 ; 2 uses
  %i.fw = fadd <2 x float> %i.fo, %i.fs
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fy = fadd <2 x float> %i.fv, %i.fx
  store <2 x float> %i.fy, ptr %i.eo, align 4, !tbaa !143
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> splat (float -5.000000e-01), <2 x float> %i.fv) ; 2 uses
  %i.ga = fadd <2 x float> %i.fu, %i.fz
  store <2 x float> %i.ga, ptr %i.ep, align 4, !tbaa !143
  %i.gb = fsub <2 x float> %i.fz, %i.fu
  store <2 x float> %i.gb, ptr %i.es, align 4, !tbaa !143
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, %i.ae
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph283, !llvm.loop !469

._crit_edge.us:                                   ; preds = %scalar.ph283
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, %i.af ; 2 uses
  %i.gc = trunc nuw i64 %indvars.iv.next145 to i32
  %i.gd = icmp sgt i32 %2, %i.gc
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gd, label %.lr.ph.us, label %._crit_edge134, !llvm.loop !470

._crit_edge134:                                   ; preds = %.lr.ph133.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader309, %.lr.ph133.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph133.split ], [ %indvars.iv.ph, %.lr.ph133.split.preheader309 ] ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.c ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.e ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gf, align 4, !tbaa !143 ; 3 uses
  %i.gi = load <2 x float>, ptr %i.gg, align 4, !tbaa !143 ; 3 uses
  %i.gj = fadd <2 x float> %i.gh, %i.gi           ; 2 uses
  %i.gk = load <2 x float>, ptr %i.ge, align 4, !tbaa !143 ; 2 uses
  %i.gl = shufflevector <2 x float> %i.gh, <2 x float> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gm = shufflevector <2 x float> %i.gi, <2 x float> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.gn = fsub <2 x float> %i.gl, %i.gm
  %i.go = fmul <2 x float> %i.gn, splat (float f0x3F5DB3D7) ; 2 uses
  %i.gp = fadd <2 x float> %i.gj, %i.gk
  store <2 x float> %i.gp, ptr %i.ge, align 4, !tbaa !143
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> splat (float -5.000000e-01), <2 x float> %i.gk) ; 2 uses
  %i.gr = fadd <2 x float> %i.gq, %i.go
  store <2 x float> %i.gr, ptr %i.gf, align 4, !tbaa !143
  %i.gs = fsub <2 x float> %i.gq, %i.go
  store <2 x float> %i.gs, ptr %i.gg, align 4, !tbaa !143
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.gt = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.gt, label %.lr.ph133.split, label %._crit_edge134, !llvm.loop !471
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R5IfEclEPNS_7ComplexIfEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 5                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge166.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 4
  %i.d = shl nsw i32 %i.a, 1
  %6 = zext i32 %i.d to i64                       ; 6 uses
  %i.e = sext i32 %i.a to i64                     ; 5 uses
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge166.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = sext i32 %4 to i64
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 7 uses
  %i.h = shl nuw nsw i64 %wide.trip.count, 3      ; 11 uses
  %i.i = add nsw i64 %i.h, -4                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = shl nuw nsw i64 %i.e, 3                  ; 8 uses
  %i.l = shl nuw nsw i64 %6, 4                    ; 4 uses
  %i.m = shl nuw nsw i64 %6, 3                    ; 8 uses
  %i.n = shl nuw nsw i64 %wide.trip.count, 4      ; 2 uses
  %i.o = getelementptr i8, ptr %5, i64 %i.n
  %i.p = mul nuw nsw i64 %wide.trip.count, 24     ; 2 uses
  %i.q = getelementptr i8, ptr %5, i64 %i.p
  %i.r = insertelement <2 x ptr> poison, ptr %i.o, i64 0
  %i.s = insertelement <2 x ptr> %i.r, ptr %i.q, i64 1 ; 2 uses
  %i.t = getelementptr i8, <2 x ptr> %i.s, <2 x i64> <i64 -12, i64 -20>
  %i.u = getelementptr i8, <2 x ptr> %i.s, <2 x i64> <i64 -12, i64 -20>
  %i.v = shl nuw nsw i64 %wide.trip.count, 5      ; 2 uses
  %i.w = getelementptr i8, ptr %5, i64 %i.v
  %scevgep188 = getelementptr i8, ptr %i.w, i64 -28 ; 2 uses
  %scevgep189 = getelementptr i8, ptr %5, i64 %i.i ; 2 uses
  %scevgep200 = getelementptr i8, ptr %5, i64 4
  %i.x = getelementptr i8, ptr %5, i64 %i.n
  %i.y = getelementptr i8, ptr %5, i64 %i.p
  %i.z = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.y, i64 1 ; 2 uses
  %i.ab = getelementptr i8, <2 x ptr> %i.aa, <2 x i64> <i64 -8, i64 -16>
  %i.ac = getelementptr i8, <2 x ptr> %i.aa, <2 x i64> <i64 -8, i64 -16>
  %i.ad = getelementptr i8, ptr %5, i64 %i.v
  %scevgep203 = getelementptr i8, ptr %i.ad, i64 -24 ; 2 uses
  %scevgep204 = getelementptr i8, ptr %5, i64 %i.h ; 2 uses
  %i.ae = insertelement <4 x ptr> poison, ptr %5, i64 0 ; 5 uses
  %i.af = insertelement <4 x ptr> poison, ptr %scevgep200, i64 0 ; 5 uses
  %i.ag = shufflevector <2 x ptr> %i.ab, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <2 x ptr> %i.t, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check = icmp ugt i32 %3, 44
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %7 = getelementptr i8, ptr %1, i64 %i.k
  %8 = getelementptr i8, ptr %7, i64 %i.h
  %9 = getelementptr i8, ptr %8, i64 %i.m
  %10 = getelementptr i8, ptr %1, i64 %i.k
  %i.ak = getelementptr i8, ptr %10, i64 %i.m
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = getelementptr i8, ptr %1, i64 %i.h
  %i.an = getelementptr i8, ptr %i.am, i64 %i.m
  %i.ao = getelementptr i8, ptr %1, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = getelementptr i8, ptr %1, i64 %i.l
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.h
  %i.as = getelementptr i8, ptr %1, i64 %i.l
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = getelementptr i8, ptr %1, i64 %i.k
  %i.av = getelementptr i8, ptr %i.au, i64 %i.h
  %i.aw = getelementptr i8, ptr %1, i64 %i.k
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = getelementptr i8, ptr %1, i64 %i.h
  %i.az = getelementptr i8, ptr %1, i64 %i.k
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.h
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.m
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = getelementptr i8, ptr %1, i64 %i.k
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.m
  %i.bf = getelementptr i8, ptr %1, i64 %i.h
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.m
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = getelementptr i8, ptr %1, i64 %i.m
  %i.bj = getelementptr i8, ptr %1, i64 %i.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.h
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = getelementptr i8, ptr %1, i64 %i.l
  %i.bn = getelementptr i8, ptr %1, i64 %i.k
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.h
  %i.bp = getelementptr i8, ptr %i.bo, i64 -4
  %i.bq = getelementptr i8, ptr %1, i64 %i.k
  %i.br = getelementptr i8, ptr %1, i64 %i.i
  %i.bs = insertelement <4 x ptr> %i.aj, ptr %scevgep188, i64 2
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %scevgep189, i64 3 ; 4 uses
  %i.bu = insertelement <4 x ptr> %i.ai, ptr %scevgep188, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep189, i64 3
  %i.bw = insertelement <4 x ptr> %i.ah, ptr %scevgep203, i64 2
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep204, i64 3 ; 4 uses
  %i.by = insertelement <4 x ptr> %i.ag, ptr %scevgep203, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep204, i64 3
  %i.ca = and i64 %wide.trip.count, 3             ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  %i.cc = select i1 %i.cb, i64 4, i64 %i.ca
  %n.vec = sub nsw i64 %wide.trip.count, %i.cc    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv172 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next173, %._crit_edge ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv172 ; 7 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ] ; 2 uses
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader
  %i.ce = mul i64 %i.j, %indvar                   ; 19 uses
  %scevgep199 = getelementptr i8, ptr %9, i64 %i.ce ; 5 uses
  %scevgep198 = getelementptr i8, ptr %i.al, i64 %i.ce ; 5 uses
  %scevgep197 = getelementptr i8, ptr %i.an, i64 %i.ce ; 5 uses
  %scevgep196 = getelementptr i8, ptr %i.ap, i64 %i.ce ; 5 uses
  %scevgep195 = getelementptr i8, ptr %i.ar, i64 %i.ce ; 5 uses
  %scevgep194 = getelementptr i8, ptr %i.at, i64 %i.ce ; 5 uses
  %scevgep193 = getelementptr i8, ptr %i.av, i64 %i.ce ; 5 uses
  %scevgep192 = getelementptr i8, ptr %i.ax, i64 %i.ce ; 5 uses
  %scevgep191 = getelementptr i8, ptr %i.ay, i64 %i.ce ; 5 uses
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce
  %scevgep190 = getelementptr i8, ptr %i.cf, i64 4 ; 5 uses
  %scevgep185 = getelementptr i8, ptr %i.bc, i64 %i.ce ; 5 uses
  %scevgep184 = getelementptr i8, ptr %i.be, i64 %i.ce ; 5 uses
  %scevgep183 = getelementptr i8, ptr %i.bh, i64 %i.ce ; 5 uses
  %scevgep182 = getelementptr i8, ptr %i.bi, i64 %i.ce ; 5 uses
  %scevgep181 = getelementptr i8, ptr %i.bl, i64 %i.ce ; 5 uses
  %scevgep180 = getelementptr i8, ptr %i.bm, i64 %i.ce ; 5 uses
  %scevgep179 = getelementptr i8, ptr %i.bp, i64 %i.ce ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.bq, i64 %i.ce ; 5 uses
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.ce ; 5 uses
  %bound0 = icmp ult ptr %i.cd, %scevgep179
  %bound1 = icmp ult ptr %scevgep178, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0205 = icmp ult ptr %i.cd, %scevgep181
  %bound1206 = icmp ult ptr %scevgep180, %scevgep
  %found.conflict207 = and i1 %bound0205, %bound1206
  %bound0208 = icmp ult ptr %i.cd, %scevgep183
  %bound1209 = icmp ult ptr %scevgep182, %scevgep
  %found.conflict210 = and i1 %bound0208, %bound1209
  %bound0212 = icmp ult ptr %i.cd, %scevgep185
  %bound1213 = icmp ult ptr %scevgep184, %scevgep
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.cg = insertelement <4 x ptr> poison, ptr %i.cd, i64 0
  %i.ch = shufflevector <4 x ptr> %i.cg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ci = icmp ult <4 x ptr> %i.ch, %i.bt
  %i.cj = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ck = icmp ult <4 x ptr> %i.ae, %i.cj
  %i.cl = shufflevector <4 x i1> %i.ck, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cm = and <4 x i1> %i.ci, %i.cl
  %bound0232 = icmp ult ptr %scevgep178, %scevgep181
  %bound1233 = icmp ult ptr %scevgep180, %scevgep179
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0236 = icmp ult ptr %scevgep178, %scevgep183
  %bound1237 = icmp ult ptr %scevgep182, %scevgep179
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0240 = icmp ult ptr %scevgep178, %scevgep185
  %bound1241 = icmp ult ptr %scevgep184, %scevgep179
  %found.conflict242 = and i1 %bound0240, %bound1241
  %i.cn = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.co = shufflevector <4 x ptr> %i.cn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cp = icmp ult <4 x ptr> %i.co, %i.bt
  %i.cq = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0
  %i.cr = icmp ult <4 x ptr> %i.ae, %i.cq
  %i.cs = shufflevector <4 x i1> %i.cr, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ct = and <4 x i1> %i.cp, %i.cs
  %bound0260 = icmp ult ptr %scevgep180, %scevgep183
  %bound1261 = icmp ult ptr %scevgep182, %scevgep181
  %found.conflict262 = and i1 %bound0260, %bound1261
  %bound0264 = icmp ult ptr %scevgep180, %scevgep185
  %bound1265 = icmp ult ptr %scevgep184, %scevgep181
  %found.conflict266 = and i1 %bound0264, %bound1265
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep180, i64 0
  %i.cv = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cw = icmp ult <4 x ptr> %i.cv, %i.bt
  %i.cx = insertelement <4 x ptr> poison, ptr %scevgep181, i64 0
  %i.cy = icmp ult <4 x ptr> %i.ae, %i.cx
  %i.cz = shufflevector <4 x i1> %i.cy, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.da = and <4 x i1> %i.cw, %i.cz
  %bound0284 = icmp ult ptr %scevgep182, %scevgep185
  %bound1285 = icmp ult ptr %scevgep184, %scevgep183
  %found.conflict286 = and i1 %bound0284, %bound1285
  %i.db = insertelement <4 x ptr> poison, ptr %scevgep182, i64 0
  %i.dc = shufflevector <4 x ptr> %i.db, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dd = icmp ult <4 x ptr> %i.dc, %i.bt
  %i.de = insertelement <4 x ptr> poison, ptr %scevgep183, i64 0
  %i.df = icmp ult <4 x ptr> %i.ae, %i.de
  %i.dg = shufflevector <4 x i1> %i.df, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dh = and <4 x i1> %i.dd, %i.dg
  %i.di = insertelement <4 x ptr> poison, ptr %scevgep184, i64 0
  %i.dj = shufflevector <4 x ptr> %i.di, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dk = icmp ult <4 x ptr> %i.dj, %i.bv
  %i.dl = insertelement <4 x ptr> poison, ptr %scevgep185, i64 0
  %i.dm = icmp ult <4 x ptr> %i.ae, %i.dl
  %i.dn = shufflevector <4 x i1> %i.dm, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.do = and <4 x i1> %i.dk, %i.dn
  %bound0320 = icmp ult ptr %scevgep190, %scevgep193
  %bound1321 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0324 = icmp ult ptr %scevgep190, %scevgep195
  %bound1325 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0328 = icmp ult ptr %scevgep190, %scevgep197
  %bound1329 = icmp ult ptr %scevgep196, %scevgep191
  %found.conflict330 = and i1 %bound0328, %bound1329
  %bound0332 = icmp ult ptr %scevgep190, %scevgep199
  %bound1333 = icmp ult ptr %scevgep198, %scevgep191
  %found.conflict334 = and i1 %bound0332, %bound1333
  %i.dp = insertelement <4 x ptr> poison, ptr %scevgep190, i64 0
  %i.dq = shufflevector <4 x ptr> %i.dp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dr = icmp ult <4 x ptr> %i.dq, %i.bx
  %i.ds = insertelement <4 x ptr> poison, ptr %scevgep191, i64 0
  %i.dt = icmp ult <4 x ptr> %i.af, %i.ds
  %i.du = shufflevector <4 x i1> %i.dt, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dv = and <4 x i1> %i.dr, %i.du
  %bound0352 = icmp ult ptr %scevgep192, %scevgep195
  %bound1353 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict354 = and i1 %bound0352, %bound1353
  %bound0356 = icmp ult ptr %scevgep192, %scevgep197
  %bound1357 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict358 = and i1 %bound0356, %bound1357
  %bound0360 = icmp ult ptr %scevgep192, %scevgep199
  %bound1361 = icmp ult ptr %scevgep198, %scevgep193
  %found.conflict362 = and i1 %bound0360, %bound1361
  %i.dw = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.dx = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dy = icmp ult <4 x ptr> %i.dx, %i.bx
  %i.dz = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.ea = icmp ult <4 x ptr> %i.af, %i.dz
  %i.eb = shufflevector <4 x i1> %i.ea, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ec = and <4 x i1> %i.dy, %i.eb
  %bound0380 = icmp ult ptr %scevgep194, %scevgep197
  %bound1381 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict382 = and i1 %bound0380, %bound1381
  %bound0384 = icmp ult ptr %scevgep194, %scevgep199
  %bound1385 = icmp ult ptr %scevgep198, %scevgep195
  %found.conflict386 = and i1 %bound0384, %bound1385
  %i.ed = insertelement <4 x ptr> poison, ptr %scevgep194, i64 0
  %i.ee = shufflevector <4 x ptr> %i.ed, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ef = icmp ult <4 x ptr> %i.ee, %i.bx
  %i.eg = insertelement <4 x ptr> poison, ptr %scevgep195, i64 0
  %i.eh = icmp ult <4 x ptr> %i.af, %i.eg
  %i.ei = shufflevector <4 x i1> %i.eh, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ej = and <4 x i1> %i.ef, %i.ei
  %bound0404 = icmp ult ptr %scevgep196, %scevgep199
  %bound1405 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict406 = and i1 %bound0404, %bound1405
  %i.ek = insertelement <4 x ptr> poison, ptr %scevgep196, i64 0
  %i.el = shufflevector <4 x ptr> %i.ek, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.em = icmp ult <4 x ptr> %i.el, %i.bx
  %i.en = insertelement <4 x ptr> poison, ptr %scevgep197, i64 0
  %i.eo = icmp ult <4 x ptr> %i.af, %i.en
  %i.ep = shufflevector <4 x i1> %i.eo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.eq = and <4 x i1> %i.em, %i.ep
  %i.er = insertelement <4 x ptr> poison, ptr %scevgep198, i64 0
  %i.es = shufflevector <4 x ptr> %i.er, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.et = icmp ult <4 x ptr> %i.es, %i.bz
  %i.eu = insertelement <4 x ptr> poison, ptr %scevgep199, i64 0
  %i.ev = icmp ult <4 x ptr> %i.af, %i.eu
  %i.ew = shufflevector <4 x i1> %i.ev, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ex = and <4 x i1> %i.et, %i.ew
  %rdx.op = or <4 x i1> %i.cm, %i.ct
  %rdx.op460 = or <4 x i1> %rdx.op, %i.da
  %rdx.op461 = or <4 x i1> %rdx.op460, %i.dh
  %rdx.op462 = or <4 x i1> %rdx.op461, %i.do
  %rdx.op463 = or <4 x i1> %rdx.op462, %i.dv
  %rdx.op464 = or <4 x i1> %rdx.op463, %i.ec
  %rdx.op465 = or <4 x i1> %rdx.op464, %i.ej
  %rdx.op466 = or <4 x i1> %rdx.op465, %i.eq
  %rdx.op467 = or <4 x i1> %rdx.op466, %i.ex
  %i.ey = bitcast <4 x i1> %rdx.op467 to i4
  %i.ez = icmp ne i4 %i.ey, 0
  %op.rdx = or i1 %i.ez, %found.conflict
  %op.rdx468 = or i1 %found.conflict207, %found.conflict210
  %op.rdx469 = or i1 %found.conflict214, %found.conflict234
  %op.rdx470 = or i1 %found.conflict238, %found.conflict242
  %op.rdx471 = or i1 %found.conflict262, %found.conflict266
  %op.rdx472 = or i1 %found.conflict286, %found.conflict322
  %op.rdx473 = or i1 %found.conflict326, %found.conflict330
  %op.rdx474 = or i1 %found.conflict334, %found.conflict354
  %op.rdx475 = or i1 %found.conflict358, %found.conflict362
  %op.rdx476 = or i1 %found.conflict382, %found.conflict386
  %op.rdx477 = or i1 %op.rdx, %op.rdx468
  %op.rdx478 = or i1 %op.rdx469, %op.rdx470
  %op.rdx479 = or i1 %op.rdx471, %op.rdx472
  %op.rdx480 = or i1 %op.rdx473, %op.rdx474
  %op.rdx481 = or i1 %op.rdx475, %op.rdx476
  %op.rdx482 = or i1 %op.rdx477, %op.rdx478
  %op.rdx483 = or i1 %op.rdx479, %op.rdx480
  %op.rdx484 = or i1 %op.rdx481, %found.conflict406
  %op.rdx485 = or i1 %op.rdx482, %op.rdx483
  %op.rdx486 = or i1 %op.rdx485, %op.rdx484
  br i1 %op.rdx486, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.fa = or disjoint i64 %index, 1               ; 3 uses
  %i.fb = or disjoint i64 %index, 2               ; 3 uses
  %i.fc = or disjoint i64 %index, 3               ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index ; 4 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %6 ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %6 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.e ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.fg, align 4, !tbaa !143 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec440 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %5, i64 %index
  %wide.vec441 = load <8 x float>, ptr %i.fh, align 4, !tbaa !143 ; 2 uses
  %strided.vec442 = shufflevector <8 x float> %wide.vec441, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec443 = shufflevector <8 x float> %wide.vec441, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fi = fneg <4 x float> %strided.vec443
  %i.fj = fmul <4 x float> %strided.vec440, %i.fi
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec442, <4 x float> %i.fj) ; 2 uses
  %i.fl = fmul <4 x float> %strided.vec442, %strided.vec440
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec443, <4 x float> %i.fl) ; 2 uses
  %wide.vec444 = load <8 x float>, ptr %i.ff, align 4, !tbaa !143 ; 2 uses
  %strided.vec445 = shufflevector <8 x float> %wide.vec444, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec446 = shufflevector <8 x float> %wide.vec444, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fn = shl nsw i64 %index, 5
  %i.fo = shl nsw i64 %i.fa, 5
  %i.fp = shl nsw i64 %i.fb, 5
  %i.fq = shl nsw i64 %i.fc, 5
  %i.fr = getelementptr inbounds i8, ptr %5, i64 %i.fn ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_:bb.a
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %scevgep204, %scevgep207
  %bound1264 = icmp ult ptr %scevgep206, %scevgep205
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  %bound0267 = icmp ult ptr %scevgep204, %scevgep209
  %bound1268 = icmp ult ptr %scevgep208, %scevgep205
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  %bound0271 = icmp ult ptr %scevgep204, %scevgep211
  %bound1272 = icmp ult ptr %scevgep210, %scevgep205
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %scevgep206, %scevgep209
  %bound1276 = icmp ult ptr %scevgep208, %scevgep207
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep206, %scevgep211
  %bound1280 = icmp ult ptr %scevgep210, %scevgep207
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  br i1 %conflict.rdx282, label %scalar.ph283.preheader, label %vector.body287

vector.body287:                                   ; preds = %vector.memcheck191, %vector.body287
  %index288 = phi i64 [ %index.next304, %vector.body287 ], [ 0, %vector.memcheck191 ] ; 3 uses
  %i.cc = or disjoint i64 %index288, 1            ; 3 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.c ; 2 uses
  %wide.vec289 = load <4 x double>, ptr %i.ce, align 8, !tbaa !228 ; 2 uses
  %strided.vec290 = shufflevector <4 x double> %wide.vec289, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec291 = shufflevector <4 x double> %wide.vec289, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %5, i64 %i.cc
  %wide.vec292 = load <4 x double>, ptr %i.cf, align 8, !tbaa !228 ; 2 uses
  %strided.vec293 = shufflevector <4 x double> %wide.vec292, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec294 = shufflevector <4 x double> %wide.vec292, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cg = fneg <2 x double> %strided.vec294
  %i.ch = fmul <2 x double> %strided.vec291, %i.cg
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec290, <2 x double> %strided.vec293, <2 x double> %i.ch) ; 2 uses
  %i.cj = fmul <2 x double> %strided.vec293, %strided.vec291
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec290, <2 x double> %strided.vec294, <2 x double> %i.cj) ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.e ; 2 uses
  %wide.vec295 = load <4 x double>, ptr %i.cl, align 8, !tbaa !228 ; 2 uses
  %strided.vec296 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec297 = shufflevector <4 x double> %wide.vec295, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cm = shl nsw i64 %i.cc, 5
  %i.cn = shl i64 %index288, 5
  %i.co = getelementptr inbounds i8, ptr %5, i64 %i.cm ; 2 uses
  %i.cp = getelementptr i8, ptr %5, i64 %i.cn     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 64
  %i.cr = load double, ptr %i.co, align 8, !tbaa !408, !alias.scope !539
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !408, !alias.scope !539
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cw = getelementptr i8, ptr %i.cp, i64 72
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !410, !alias.scope !542
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !410, !alias.scope !542
  %i.cz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1 ; 2 uses
  %i.db = fneg <2 x double> %i.da
  %i.dc = fmul <2 x double> %strided.vec297, %i.db
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec296, <2 x double> %i.cu, <2 x double> %i.dc) ; 2 uses
  %i.de = fmul <2 x double> %i.cu, %strided.vec297
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec296, <2 x double> %i.da, <2 x double> %i.de) ; 2 uses
  %i.dg = fadd <2 x double> %i.ci, %i.dd          ; 2 uses
  %i.dh = fadd <2 x double> %i.ck, %i.df          ; 2 uses
  %i.di = fsub <2 x double> %i.ck, %i.df
  %i.dj = fmul <2 x double> %i.di, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.dk = fsub <2 x double> %i.dd, %i.ci
  %i.dl = fmul <2 x double> %i.dk, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %wide.vec298 = load <4 x double>, ptr %i.cd, align 8, !tbaa !228 ; 2 uses
  %strided.vec299 = shufflevector <4 x double> %wide.vec298, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec300 = shufflevector <4 x double> %wide.vec298, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dm = fadd <2 x double> %strided.vec299, %i.dg
  %i.dn = fadd <2 x double> %strided.vec300, %i.dh
  %interleaved.vec301 = shufflevector <2 x double> %i.dm, <2 x double> %i.dn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec301, ptr %i.cd, align 8, !tbaa !228
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec299) ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec300) ; 2 uses
  %i.dq = fadd <2 x double> %i.dj, %i.do
  %i.dr = fadd <2 x double> %i.dp, %i.dl
  %interleaved.vec302 = shufflevector <2 x double> %i.dq, <2 x double> %i.dr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec302, ptr %i.ce, align 8, !tbaa !228
  %i.ds = fsub <2 x double> %i.do, %i.dj
  %i.dt = fsub <2 x double> %i.dp, %i.dl
  %interleaved.vec303 = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec303, ptr %i.cl, align 8, !tbaa !228
  %index.next304 = add nuw i64 %index288, 2       ; 2 uses
  %i.du = icmp eq i64 %index.next304, %n.vec286
  br i1 %i.du, label %scalar.ph283.preheader, label %vector.body287, !llvm.loop !544

scalar.ph283.preheader:                           ; preds = %vector.body287, %vector.memcheck191, %.lr.ph.us
  %indvars.iv139.ph = phi i64 [ %i.ae, %vector.memcheck191 ], [ %i.ae, %.lr.ph.us ], [ %i.bj, %vector.body287 ]
  %indvars.iv137.ph = phi i64 [ 1, %vector.memcheck191 ], [ 1, %.lr.ph.us ], [ %i.bj, %vector.body287 ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph283 ], [ %indvars.iv139.ph, %scalar.ph283.preheader ] ; 3 uses
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph283 ], [ %indvars.iv137.ph, %scalar.ph283.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv137 ; 4 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.c ; 3 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !408 ; 2 uses
  %i.dy = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv139 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !410 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.e ; 3 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !408 ; 2 uses
  %.idx = shl nsw i64 %indvars.iv139, 5
  %i.ee = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !410 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load double, ptr %i.eb, align 8, !tbaa !410 ; 2 uses
  %i.ej = load double, ptr %i.dy, align 8, !tbaa !408 ; 2 uses
  %i.ek = fneg double %i.ei
  %i.el = load double, ptr %i.eh, align 8, !tbaa !410 ; 2 uses
  %i.em = load double, ptr %i.ee, align 8, !tbaa !408 ; 2 uses
  %i.en = fneg double %i.el
  %i.eo = fmul double %i.ej, %i.ea
  %i.ep = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ea, i64 1
  %i.er = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ek, i64 1
  %i.et = fmul <2 x double> %i.eq, %i.es
  %i.eu = fmul double %i.eg, %i.en
  %i.ev = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.ed, i64 1
  %i.ex = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.em, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.eu, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> %i.fa) ; 2 uses
  %i.fc = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.dx, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.el, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.ej, i64 1
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.ff, <2 x double> %i.et) ; 2 uses
  %i.fh = fsub <2 x double> %i.fb, %i.fg
  %i.fi = fmul <2 x double> %i.fh, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.fj = load <2 x double>, ptr %i.dv, align 8, !tbaa !228 ; 2 uses
  %i.fk = fadd <2 x double> %i.fb, %i.fg
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fm = fadd <2 x double> %i.fj, %i.fl
  store <2 x double> %i.fm, ptr %i.dv, align 8, !tbaa !228
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> splat (double -5.000000e-01), <2 x double> %i.fj) ; 2 uses
  %i.fo = fadd <2 x double> %i.fi, %i.fn
  store <2 x double> %i.fo, ptr %i.dw, align 8, !tbaa !228
  %i.fp = fsub <2 x double> %i.fn, %i.fi
  store <2 x double> %i.fp, ptr %i.ec, align 8, !tbaa !228
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, %i.ae
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph283, !llvm.loop !545

._crit_edge.us:                                   ; preds = %scalar.ph283
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, %i.af ; 2 uses
  %i.fq = trunc nuw i64 %indvars.iv.next145 to i32
  %i.fr = icmp sgt i32 %2, %i.fq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fr, label %.lr.ph.us, label %._crit_edge134, !llvm.loop !546

._crit_edge134:                                   ; preds = %.lr.ph133.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader309, %.lr.ph133.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph133.split ], [ %indvars.iv.ph, %.lr.ph133.split.preheader309 ] ; 2 uses
  %i.fs = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.c ; 2 uses
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.e ; 2 uses
  %i.fv = load <2 x double>, ptr %i.ft, align 8, !tbaa !228 ; 3 uses
  %i.fw = load <2 x double>, ptr %i.fu, align 8, !tbaa !228 ; 3 uses
  %i.fx = fadd <2 x double> %i.fv, %i.fw          ; 2 uses
  %i.fy = load <2 x double>, ptr %i.fs, align 8, !tbaa !228 ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.ga = shufflevector <2 x double> %i.fw, <2 x double> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.gb = fsub <2 x double> %i.fz, %i.ga
  %i.gc = fmul <2 x double> %i.gb, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.gd = fadd <2 x double> %i.fx, %i.fy
  store <2 x double> %i.gd, ptr %i.fs, align 8, !tbaa !228
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> splat (double -5.000000e-01), <2 x double> %i.fy) ; 2 uses
  %i.gf = fadd <2 x double> %i.ge, %i.gc
  store <2 x double> %i.gf, ptr %i.ft, align 8, !tbaa !228
  %i.gg = fsub <2 x double> %i.ge, %i.gc
  store <2 x double> %i.gg, ptr %i.fu, align 8, !tbaa !228
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.gh = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.gh, label %.lr.ph133.split, label %._crit_edge134, !llvm.loop !547
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R5IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 5                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge166.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 4
  %i.d = shl nsw i32 %i.a, 1
  %6 = zext i32 %i.d to i64                       ; 6 uses
  %i.e = sext i32 %i.a to i64                     ; 5 uses
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge166.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.f = sext i32 %4 to i64
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 7 uses
  %i.h = shl nuw nsw i64 %wide.trip.count, 4      ; 11 uses
  %i.i = add nsw i64 %i.h, -8                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.g, 4
  %i.k = shl nuw nsw i64 %i.e, 4                  ; 8 uses
  %i.l = shl nuw nsw i64 %6, 5                    ; 4 uses
  %i.m = shl nuw nsw i64 %6, 4                    ; 8 uses
  %i.n = shl nuw nsw i64 %wide.trip.count, 5      ; 2 uses
  %i.o = getelementptr i8, ptr %5, i64 %i.n
  %i.p = mul nuw nsw i64 %wide.trip.count, 48     ; 2 uses
  %i.q = getelementptr i8, ptr %5, i64 %i.p
  %i.r = insertelement <2 x ptr> poison, ptr %i.o, i64 0
  %i.s = insertelement <2 x ptr> %i.r, ptr %i.q, i64 1 ; 2 uses
  %i.t = getelementptr i8, <2 x ptr> %i.s, <2 x i64> <i64 -24, i64 -40>
  %i.u = getelementptr i8, <2 x ptr> %i.s, <2 x i64> <i64 -24, i64 -40>
  %i.v = shl nuw nsw i64 %wide.trip.count, 6      ; 2 uses
  %i.w = getelementptr i8, ptr %5, i64 %i.v
  %scevgep188 = getelementptr i8, ptr %i.w, i64 -56 ; 2 uses
  %scevgep189 = getelementptr i8, ptr %5, i64 %i.i ; 2 uses
  %scevgep200 = getelementptr i8, ptr %5, i64 8
  %i.x = getelementptr i8, ptr %5, i64 %i.n
  %i.y = getelementptr i8, ptr %5, i64 %i.p
  %i.z = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.y, i64 1 ; 2 uses
  %i.ab = getelementptr i8, <2 x ptr> %i.aa, <2 x i64> <i64 -16, i64 -32>
  %i.ac = getelementptr i8, <2 x ptr> %i.aa, <2 x i64> <i64 -16, i64 -32>
  %i.ad = getelementptr i8, ptr %5, i64 %i.v
  %scevgep203 = getelementptr i8, ptr %i.ad, i64 -48 ; 2 uses
  %scevgep204 = getelementptr i8, ptr %5, i64 %i.h ; 2 uses
  %i.ae = insertelement <4 x ptr> poison, ptr %5, i64 0 ; 5 uses
  %i.af = insertelement <4 x ptr> poison, ptr %scevgep200, i64 0 ; 5 uses
  %i.ag = shufflevector <2 x ptr> %i.ab, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <2 x ptr> %i.t, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check = icmp ugt i32 %3, 44
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %7 = getelementptr i8, ptr %1, i64 %i.k
  %8 = getelementptr i8, ptr %7, i64 %i.h
  %9 = getelementptr i8, ptr %8, i64 %i.m
  %10 = getelementptr i8, ptr %1, i64 %i.k
  %i.ak = getelementptr i8, ptr %10, i64 %i.m
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = getelementptr i8, ptr %1, i64 %i.h
  %i.an = getelementptr i8, ptr %i.am, i64 %i.m
  %i.ao = getelementptr i8, ptr %1, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = getelementptr i8, ptr %1, i64 %i.l
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.h
  %i.as = getelementptr i8, ptr %1, i64 %i.l
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = getelementptr i8, ptr %1, i64 %i.k
  %i.av = getelementptr i8, ptr %i.au, i64 %i.h
  %i.aw = getelementptr i8, ptr %1, i64 %i.k
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = getelementptr i8, ptr %1, i64 %i.h
  %i.az = getelementptr i8, ptr %1, i64 %i.k
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.h
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.m
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = getelementptr i8, ptr %1, i64 %i.k
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.m
  %i.bf = getelementptr i8, ptr %1, i64 %i.h
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.m
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = getelementptr i8, ptr %1, i64 %i.m
  %i.bj = getelementptr i8, ptr %1, i64 %i.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.h
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = getelementptr i8, ptr %1, i64 %i.l
  %i.bn = getelementptr i8, ptr %1, i64 %i.k
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.h
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = getelementptr i8, ptr %1, i64 %i.k
  %i.br = getelementptr i8, ptr %1, i64 %i.i
  %i.bs = insertelement <4 x ptr> %i.aj, ptr %scevgep188, i64 2
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %scevgep189, i64 3 ; 4 uses
  %i.bu = insertelement <4 x ptr> %i.ai, ptr %scevgep188, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep189, i64 3
  %i.bw = insertelement <4 x ptr> %i.ah, ptr %scevgep203, i64 2
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep204, i64 3 ; 4 uses
  %i.by = insertelement <4 x ptr> %i.ag, ptr %scevgep203, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep204, i64 3
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv172 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next173, %._crit_edge ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv172 ; 7 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ] ; 2 uses
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader
  %i.cb = mul i64 %i.j, %indvar                   ; 19 uses
  %scevgep199 = getelementptr i8, ptr %9, i64 %i.cb ; 5 uses
  %scevgep198 = getelementptr i8, ptr %i.al, i64 %i.cb ; 5 uses
  %scevgep197 = getelementptr i8, ptr %i.an, i64 %i.cb ; 5 uses
  %scevgep196 = getelementptr i8, ptr %i.ap, i64 %i.cb ; 5 uses
  %scevgep195 = getelementptr i8, ptr %i.ar, i64 %i.cb ; 5 uses
  %scevgep194 = getelementptr i8, ptr %i.at, i64 %i.cb ; 5 uses
  %scevgep193 = getelementptr i8, ptr %i.av, i64 %i.cb ; 5 uses
  %scevgep192 = getelementptr i8, ptr %i.ax, i64 %i.cb ; 5 uses
  %scevgep191 = getelementptr i8, ptr %i.ay, i64 %i.cb ; 5 uses
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  %scevgep190 = getelementptr i8, ptr %i.cc, i64 8 ; 5 uses
  %scevgep185 = getelementptr i8, ptr %i.bc, i64 %i.cb ; 5 uses
  %scevgep184 = getelementptr i8, ptr %i.be, i64 %i.cb ; 5 uses
  %scevgep183 = getelementptr i8, ptr %i.bh, i64 %i.cb ; 5 uses
  %scevgep182 = getelementptr i8, ptr %i.bi, i64 %i.cb ; 5 uses
  %scevgep181 = getelementptr i8, ptr %i.bl, i64 %i.cb ; 5 uses
  %scevgep180 = getelementptr i8, ptr %i.bm, i64 %i.cb ; 5 uses
  %scevgep179 = getelementptr i8, ptr %i.bp, i64 %i.cb ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.bq, i64 %i.cb ; 5 uses
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.cb ; 5 uses
  %bound0 = icmp ult ptr %i.ca, %scevgep179
  %bound1 = icmp ult ptr %scevgep178, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0205 = icmp ult ptr %i.ca, %scevgep181
  %bound1206 = icmp ult ptr %scevgep180, %scevgep
  %found.conflict207 = and i1 %bound0205, %bound1206
  %bound0208 = icmp ult ptr %i.ca, %scevgep183
  %bound1209 = icmp ult ptr %scevgep182, %scevgep
  %found.conflict210 = and i1 %bound0208, %bound1209
  %bound0212 = icmp ult ptr %i.ca, %scevgep185
  %bound1213 = icmp ult ptr %scevgep184, %scevgep
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.cd = insertelement <4 x ptr> poison, ptr %i.ca, i64 0
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = icmp ult <4 x ptr> %i.ce, %i.bt
  %i.cg = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ch = icmp ult <4 x ptr> %i.ae, %i.cg
  %i.ci = shufflevector <4 x i1> %i.ch, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cj = and <4 x i1> %i.cf, %i.ci
  %bound0232 = icmp ult ptr %scevgep178, %scevgep181
  %bound1233 = icmp ult ptr %scevgep180, %scevgep179
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0236 = icmp ult ptr %scevgep178, %scevgep183
  %bound1237 = icmp ult ptr %scevgep182, %scevgep179
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0240 = icmp ult ptr %scevgep178, %scevgep185
  %bound1241 = icmp ult ptr %scevgep184, %scevgep179
  %found.conflict242 = and i1 %bound0240, %bound1241
  %i.ck = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.cl = shufflevector <4 x ptr> %i.ck, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cm = icmp ult <4 x ptr> %i.cl, %i.bt
  %i.cn = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0
  %i.co = icmp ult <4 x ptr> %i.ae, %i.cn
  %i.cp = shufflevector <4 x i1> %i.co, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cq = and <4 x i1> %i.cm, %i.cp
  %bound0260 = icmp ult ptr %scevgep180, %scevgep183
  %bound1261 = icmp ult ptr %scevgep182, %scevgep181
  %found.conflict262 = and i1 %bound0260, %bound1261
  %bound0264 = icmp ult ptr %scevgep180, %scevgep185
  %bound1265 = icmp ult ptr %scevgep184, %scevgep181
  %found.conflict266 = and i1 %bound0264, %bound1265
  %i.cr = insertelement <4 x ptr> poison, ptr %scevgep180, i64 0
  %i.cs = shufflevector <4 x ptr> %i.cr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ct = icmp ult <4 x ptr> %i.cs, %i.bt
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep181, i64 0
  %i.cv = icmp ult <4 x ptr> %i.ae, %i.cu
  %i.cw = shufflevector <4 x i1> %i.cv, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cx = and <4 x i1> %i.ct, %i.cw
  %bound0284 = icmp ult ptr %scevgep182, %scevgep185
  %bound1285 = icmp ult ptr %scevgep184, %scevgep183
  %found.conflict286 = and i1 %bound0284, %bound1285
  %i.cy = insertelement <4 x ptr> poison, ptr %scevgep182, i64 0
  %i.cz = shufflevector <4 x ptr> %i.cy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.da = icmp ult <4 x ptr> %i.cz, %i.bt
  %i.db = insertelement <4 x ptr> poison, ptr %scevgep183, i64 0
  %i.dc = icmp ult <4 x ptr> %i.ae, %i.db
  %i.dd = shufflevector <4 x i1> %i.dc, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.de = and <4 x i1> %i.da, %i.dd
  %i.df = insertelement <4 x ptr> poison, ptr %scevgep184, i64 0
  %i.dg = shufflevector <4 x ptr> %i.df, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dh = icmp ult <4 x ptr> %i.dg, %i.bv
  %i.di = insertelement <4 x ptr> poison, ptr %scevgep185, i64 0
  %i.dj = icmp ult <4 x ptr> %i.ae, %i.di
  %i.dk = shufflevector <4 x i1> %i.dj, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dl = and <4 x i1> %i.dh, %i.dk
  %bound0320 = icmp ult ptr %scevgep190, %scevgep193
  %bound1321 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0324 = icmp ult ptr %scevgep190, %scevgep195
  %bound1325 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0328 = icmp ult ptr %scevgep190, %scevgep197
  %bound1329 = icmp ult ptr %scevgep196, %scevgep191
  %found.conflict330 = and i1 %bound0328, %bound1329
  %bound0332 = icmp ult ptr %scevgep190, %scevgep199
  %bound1333 = icmp ult ptr %scevgep198, %scevgep191
  %found.conflict334 = and i1 %bound0332, %bound1333
  %i.dm = insertelement <4 x ptr> poison, ptr %scevgep190, i64 0
  %i.dn = shufflevector <4 x ptr> %i.dm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.do = icmp ult <4 x ptr> %i.dn, %i.bx
  %i.dp = insertelement <4 x ptr> poison, ptr %scevgep191, i64 0
  %i.dq = icmp ult <4 x ptr> %i.af, %i.dp
  %i.dr = shufflevector <4 x i1> %i.dq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ds = and <4 x i1> %i.do, %i.dr
  %bound0352 = icmp ult ptr %scevgep192, %scevgep195
  %bound1353 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict354 = and i1 %bound0352, %bound1353
  %bound0356 = icmp ult ptr %scevgep192, %scevgep197
  %bound1357 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict358 = and i1 %bound0356, %bound1357
  %bound0360 = icmp ult ptr %scevgep192, %scevgep199
  %bound1361 = icmp ult ptr %scevgep198, %scevgep193
  %found.conflict362 = and i1 %bound0360, %bound1361
  %i.dt = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.du = shufflevector <4 x ptr> %i.dt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dv = icmp ult <4 x ptr> %i.du, %i.bx
  %i.dw = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.dx = icmp ult <4 x ptr> %i.af, %i.dw
  %i.dy = shufflevector <4 x i1> %i.dx, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dz = and <4 x i1> %i.dv, %i.dy
  %bound0380 = icmp ult ptr %scevgep194, %scevgep197
  %bound1381 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict382 = and i1 %bound0380, %bound1381
  %bound0384 = icmp ult ptr %scevgep194, %scevgep199
  %bound1385 = icmp ult ptr %scevgep198, %scevgep195
  %found.conflict386 = and i1 %bound0384, %bound1385
  %i.ea = insertelement <4 x ptr> poison, ptr %scevgep194, i64 0
  %i.eb = shufflevector <4 x ptr> %i.ea, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ec = icmp ult <4 x ptr> %i.eb, %i.bx
  %i.ed = insertelement <4 x ptr> poison, ptr %scevgep195, i64 0
  %i.ee = icmp ult <4 x ptr> %i.af, %i.ed
  %i.ef = shufflevector <4 x i1> %i.ee, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.eg = and <4 x i1> %i.ec, %i.ef
  %bound0404 = icmp ult ptr %scevgep196, %scevgep199
  %bound1405 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict406 = and i1 %bound0404, %bound1405
  %i.eh = insertelement <4 x ptr> poison, ptr %scevgep196, i64 0
  %i.ei = shufflevector <4 x ptr> %i.eh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ej = icmp ult <4 x ptr> %i.ei, %i.bx
  %i.ek = insertelement <4 x ptr> poison, ptr %scevgep197, i64 0
  %i.el = icmp ult <4 x ptr> %i.af, %i.ek
  %i.em = shufflevector <4 x i1> %i.el, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.en = and <4 x i1> %i.ej, %i.em
  %i.eo = insertelement <4 x ptr> poison, ptr %scevgep198, i64 0
  %i.ep = shufflevector <4 x ptr> %i.eo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eq = icmp ult <4 x ptr> %i.ep, %i.bz
  %i.er = insertelement <4 x ptr> poison, ptr %scevgep199, i64 0
  %i.es = icmp ult <4 x ptr> %i.af, %i.er
  %i.et = shufflevector <4 x i1> %i.es, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.eu = and <4 x i1> %i.eq, %i.et
  %rdx.op = or <4 x i1> %i.cj, %i.cq
  %rdx.op460 = or <4 x i1> %rdx.op, %i.cx
  %rdx.op461 = or <4 x i1> %rdx.op460, %i.de
  %rdx.op462 = or <4 x i1> %rdx.op461, %i.dl
  %rdx.op463 = or <4 x i1> %rdx.op462, %i.ds
  %rdx.op464 = or <4 x i1> %rdx.op463, %i.dz
  %rdx.op465 = or <4 x i1> %rdx.op464, %i.eg
  %rdx.op466 = or <4 x i1> %rdx.op465, %i.en
  %rdx.op467 = or <4 x i1> %rdx.op466, %i.eu
  %i.ev = bitcast <4 x i1> %rdx.op467 to i4
  %i.ew = icmp ne i4 %i.ev, 0
  %op.rdx = or i1 %i.ew, %found.conflict
  %op.rdx468 = or i1 %found.conflict207, %found.conflict210
  %op.rdx469 = or i1 %found.conflict214, %found.conflict234
  %op.rdx470 = or i1 %found.conflict238, %found.conflict242
  %op.rdx471 = or i1 %found.conflict262, %found.conflict266
  %op.rdx472 = or i1 %found.conflict286, %found.conflict322
  %op.rdx473 = or i1 %found.conflict326, %found.conflict330
  %op.rdx474 = or i1 %found.conflict334, %found.conflict354
  %op.rdx475 = or i1 %found.conflict358, %found.conflict362
  %op.rdx476 = or i1 %found.conflict382, %found.conflict386
  %op.rdx477 = or i1 %op.rdx, %op.rdx468
  %op.rdx478 = or i1 %op.rdx469, %op.rdx470
  %op.rdx479 = or i1 %op.rdx471, %op.rdx472
  %op.rdx480 = or i1 %op.rdx473, %op.rdx474
  %op.rdx481 = or i1 %op.rdx475, %op.rdx476
  %op.rdx482 = or i1 %op.rdx477, %op.rdx478
  %op.rdx483 = or i1 %op.rdx479, %op.rdx480
  %op.rdx484 = or i1 %op.rdx481, %found.conflict406
  %op.rdx485 = or i1 %op.rdx482, %op.rdx483
  %op.rdx486 = or i1 %op.rdx485, %op.rdx484
  br i1 %op.rdx486, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 7 uses
  %i.ex = or disjoint i64 %index, 1               ; 3 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %index ; 4 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %6 ; 4 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %6 ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.e ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.fb, align 8, !tbaa !228 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec440 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fc = getelementptr inbounds [16 x i8], ptr %5, i64 %index
  %wide.vec441 = load <4 x double>, ptr %i.fc, align 8, !tbaa !228 ; 2 uses
  %strided.vec442 = shufflevector <4 x double> %wide.vec441, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec443 = shufflevector <4 x double> %wide.vec441, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fd = fneg <2 x double> %strided.vec443
  %i.fe = fmul <2 x double> %strided.vec440, %i.fd
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec442, <2 x double> %i.fe) ; 2 uses
  %i.fg = fmul <2 x double> %strided.vec442, %strided.vec440
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec443, <2 x double> %i.fg) ; 2 uses
  %wide.vec444 = load <4 x double>, ptr %i.fa, align 8, !tbaa !228 ; 2 uses
  %strided.vec445 = shufflevector <4 x double> %wide.vec444, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec446 = shufflevector <4 x double> %wide.vec444, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fi = shl nsw i64 %index, 6
  %i.fj = shl nsw i64 %i.ex, 6
  %i.fk = getelementptr inbounds i8, ptr %5, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %5, i64 %i.fj ; 2 uses
  %i.fm = load double, ptr %i.fk, align 8, !tbaa !408, !alias.scope !548
  %i.fn = load double, ptr %i.fl, align 8, !tbaa !408, !alias.scope !548
  %i.fo = insertelement <2 x double> poison, double %i.fm, i64 0
end_hunk_1
begin_hunk_2_@_ZN2cv10OcvDftImpl6colDftEPKhmPhmiib:bb.a
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.aof ; 2 uses
  %i.asq = load i32, ptr %i.aso, align 4, !tbaa !41
  store i32 %i.asq, ptr %i.asp, align 4, !tbaa !41
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aso, i64 %i.asa ; 2 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.asp, i64 %i.aof ; 2 uses
  %i.ast = load i32, ptr %i.asr, align 4, !tbaa !41
  store i32 %i.ast, ptr %i.ass, align 4, !tbaa !41
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.asa ; 2 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %i.aof ; 2 uses
  %i.asw = load i32, ptr %i.asu, align 4, !tbaa !41
  store i32 %i.asw, ptr %i.asv, align 4, !tbaa !41
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %i.asa ; 2 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.asv, i64 %i.aof ; 2 uses
  %i.asz = load i32, ptr %i.asx, align 4, !tbaa !41
  store i32 %i.asz, ptr %i.asy, align 4, !tbaa !41
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asx, i64 %i.asa ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.asy, i64 %i.aof ; 2 uses
  %i.atc = load i32, ptr %i.ata, align 4, !tbaa !41
  store i32 %i.atc, ptr %i.atb, align 4, !tbaa !41
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %i.asa ; 2 uses
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %i.aof ; 2 uses
  %i.atf = load i32, ptr %i.atd, align 4, !tbaa !41
  store i32 %i.atf, ptr %i.ate, align 4, !tbaa !41
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %i.asa ; 2 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.ate, i64 %i.aof ; 2 uses
  %niter724.next.7 = add nuw nsw i32 %niter724, 8 ; 2 uses
  %niter724.ncmp.7 = icmp eq i32 %niter724.next.7, %unroll_iter723
  br i1 %niter724.ncmp.7, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit.unr-lcssa, label %.lr.ph68.i327, !llvm.loop !581

.lr.ph64.i321:                                    ; preds = %.lr.ph64.i321, %.lr.ph64.i321.preheader.new
  %.163.i322 = phi ptr [ %i.arz, %.lr.ph64.i321.preheader.new ], [ %i.auf, %.lr.ph64.i321 ] ; 2 uses
  %.14862.i323 = phi ptr [ %.0119, %.lr.ph64.i321.preheader.new ], [ %i.aue, %.lr.ph64.i321 ] ; 2 uses
  %niter718 = phi i32 [ 0, %.lr.ph64.i321.preheader.new ], [ %niter718.next.7, %.lr.ph64.i321 ]
  %i.ati = load <2 x i32>, ptr %.14862.i323, align 4, !tbaa !41
  store <2 x i32> %i.ati, ptr %.163.i322, align 4, !tbaa !41
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.14862.i323, i64 %i.asa ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.163.i322, i64 %i.aof ; 2 uses
  %i.atl = load <2 x i32>, ptr %i.atj, align 4, !tbaa !41
  store <2 x i32> %i.atl, ptr %i.atk, align 4, !tbaa !41
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %i.asa ; 2 uses
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.aof ; 2 uses
  %i.ato = load <2 x i32>, ptr %i.atm, align 4, !tbaa !41
  store <2 x i32> %i.ato, ptr %i.atn, align 4, !tbaa !41
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %i.atm, i64 %i.asa ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.atn, i64 %i.aof ; 2 uses
  %i.atr = load <2 x i32>, ptr %i.atp, align 4, !tbaa !41
  store <2 x i32> %i.atr, ptr %i.atq, align 4, !tbaa !41
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.atp, i64 %i.asa ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.aof ; 2 uses
  %i.atu = load <2 x i32>, ptr %i.ats, align 4, !tbaa !41
  store <2 x i32> %i.atu, ptr %i.att, align 4, !tbaa !41
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %i.asa ; 2 uses
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %i.aof ; 2 uses
  %i.atx = load <2 x i32>, ptr %i.atv, align 4, !tbaa !41
  store <2 x i32> %i.atx, ptr %i.atw, align 4, !tbaa !41
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %i.asa ; 2 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.atw, i64 %i.aof ; 2 uses
  %i.aua = load <2 x i32>, ptr %i.aty, align 4, !tbaa !41
  store <2 x i32> %i.aua, ptr %i.atz, align 4, !tbaa !41
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %i.asa ; 2 uses
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.atz, i64 %i.aof ; 2 uses
  %i.aud = load <2 x i32>, ptr %i.aub, align 4, !tbaa !41
  store <2 x i32> %i.aud, ptr %i.auc, align 4, !tbaa !41
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %i.asa ; 2 uses
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %i.aof ; 2 uses
  %niter718.next.7 = add nuw nsw i32 %niter718, 8 ; 2 uses
  %niter718.ncmp.7 = icmp eq i32 %niter718.next.7, %unroll_iter717
  br i1 %niter718.ncmp.7, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit570.unr-lcssa, label %.lr.ph64.i321, !llvm.loop !582

.lr.ph.i315:                                      ; preds = %.lr.ph.i315, %.lr.ph.i315.preheader.new
  %.260.i316 = phi ptr [ %i.arz, %.lr.ph.i315.preheader.new ], [ %i.avd, %.lr.ph.i315 ] ; 3 uses
  %.24959.i317 = phi ptr [ %.0119, %.lr.ph.i315.preheader.new ], [ %i.avc, %.lr.ph.i315 ] ; 3 uses
  %niter712 = phi i32 [ 0, %.lr.ph.i315.preheader.new ], [ %niter712.next.3, %.lr.ph.i315 ]
  %i.aug = load <2 x i32>, ptr %.24959.i317, align 4, !tbaa !41
  store <2 x i32> %i.aug, ptr %.260.i316, align 4, !tbaa !41
  %i.auh = getelementptr inbounds nuw i8, ptr %.24959.i317, i64 8
  %i.aui = getelementptr inbounds nuw i8, ptr %.260.i316, i64 8
  %i.auj = load <2 x i32>, ptr %i.auh, align 4, !tbaa !41
  store <2 x i32> %i.auj, ptr %i.aui, align 4, !tbaa !41
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %.24959.i317, i64 %i.asa ; 3 uses
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %.260.i316, i64 %i.aof ; 3 uses
  %i.aum = load <2 x i32>, ptr %i.auk, align 4, !tbaa !41
  store <2 x i32> %i.aum, ptr %i.aul, align 4, !tbaa !41
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  %i.aup = load <2 x i32>, ptr %i.aun, align 4, !tbaa !41
  store <2 x i32> %i.aup, ptr %i.auo, align 4, !tbaa !41
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.auk, i64 %i.asa ; 3 uses
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.aul, i64 %i.aof ; 3 uses
  %i.aus = load <2 x i32>, ptr %i.auq, align 4, !tbaa !41
  store <2 x i32> %i.aus, ptr %i.aur, align 4, !tbaa !41
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aur, i64 8
  %i.auv = load <2 x i32>, ptr %i.aut, align 4, !tbaa !41
  store <2 x i32> %i.auv, ptr %i.auu, align 4, !tbaa !41
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %i.asa ; 3 uses
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %i.aof ; 3 uses
  %i.auy = load <2 x i32>, ptr %i.auw, align 4, !tbaa !41
  store <2 x i32> %i.auy, ptr %i.aux, align 4, !tbaa !41
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aux, i64 8
  %i.avb = load <2 x i32>, ptr %i.auz, align 4, !tbaa !41
  store <2 x i32> %i.avb, ptr %i.ava, align 4, !tbaa !41
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %i.asa ; 2 uses
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.aof ; 2 uses
  %niter712.next.3 = add nuw nsw i32 %niter712, 4 ; 2 uses
  %niter712.ncmp.3 = icmp eq i32 %niter712.next.3, %unroll_iter711
  br i1 %niter712.ncmp.3, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit571.unr-lcssa, label %.lr.ph.i315, !llvm.loop !583

_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit.unr-lcssa: ; preds = %.lr.ph68.i327
  %lcmp.mod721.not = icmp eq i32 %xtraiter719, 0
  br i1 %lcmp.mod721.not, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, label %.lr.ph68.i327.epil.preheader

.lr.ph68.i327.epil.preheader:                     ; preds = %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit.unr-lcssa, %.lr.ph68.i327.preheader
  %.067.i328.epil.init = phi ptr [ %i.arz, %.lr.ph68.i327.preheader ], [ %i.ath, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit.unr-lcssa ]
  %.04766.i329.epil.init = phi ptr [ %.0119, %.lr.ph68.i327.preheader ], [ %i.atg, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit.unr-lcssa ]
  %lcmp.mod722 = icmp ne i32 %xtraiter719, 0
  tail call void @llvm.assume(i1 %lcmp.mod722)
  br label %.lr.ph68.i327.epil

.lr.ph68.i327.epil:                               ; preds = %.lr.ph68.i327.epil, %.lr.ph68.i327.epil.preheader
  %.067.i328.epil = phi ptr [ %i.avg, %.lr.ph68.i327.epil ], [ %.067.i328.epil.init, %.lr.ph68.i327.epil.preheader ] ; 2 uses
  %.04766.i329.epil = phi ptr [ %i.avf, %.lr.ph68.i327.epil ], [ %.04766.i329.epil.init, %.lr.ph68.i327.epil.preheader ] ; 2 uses
  %epil.iter720 = phi i32 [ %epil.iter720.next, %.lr.ph68.i327.epil ], [ 0, %.lr.ph68.i327.epil.preheader ]
  %i.ave = load i32, ptr %.04766.i329.epil, align 4, !tbaa !41
  store i32 %i.ave, ptr %.067.i328.epil, align 4, !tbaa !41
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %.04766.i329.epil, i64 %i.asa
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %.067.i328.epil, i64 %i.aof
  %epil.iter720.next = add i32 %epil.iter720, 1   ; 2 uses
  %epil.iter720.cmp.not = icmp eq i32 %epil.iter720.next, %xtraiter719
  br i1 %epil.iter720.cmp.not, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, label %.lr.ph68.i327.epil, !llvm.loop !617

_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit570.unr-lcssa: ; preds = %.lr.ph64.i321
  %lcmp.mod715.not = icmp eq i32 %xtraiter713, 0
  br i1 %lcmp.mod715.not, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, label %.lr.ph64.i321.epil.preheader

.lr.ph64.i321.epil.preheader:                     ; preds = %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit570.unr-lcssa, %.lr.ph64.i321.preheader
  %.163.i322.epil.init = phi ptr [ %i.arz, %.lr.ph64.i321.preheader ], [ %i.auf, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit570.unr-lcssa ]
  %.14862.i323.epil.init = phi ptr [ %.0119, %.lr.ph64.i321.preheader ], [ %i.aue, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit570.unr-lcssa ]
  %lcmp.mod716 = icmp ne i32 %xtraiter713, 0
  tail call void @llvm.assume(i1 %lcmp.mod716)
  br label %.lr.ph64.i321.epil

.lr.ph64.i321.epil:                               ; preds = %.lr.ph64.i321.epil, %.lr.ph64.i321.epil.preheader
  %.163.i322.epil = phi ptr [ %i.avj, %.lr.ph64.i321.epil ], [ %.163.i322.epil.init, %.lr.ph64.i321.epil.preheader ] ; 2 uses
  %.14862.i323.epil = phi ptr [ %i.avi, %.lr.ph64.i321.epil ], [ %.14862.i323.epil.init, %.lr.ph64.i321.epil.preheader ] ; 2 uses
  %epil.iter714 = phi i32 [ %epil.iter714.next, %.lr.ph64.i321.epil ], [ 0, %.lr.ph64.i321.epil.preheader ]
  %i.avh = load <2 x i32>, ptr %.14862.i323.epil, align 4, !tbaa !41
  store <2 x i32> %i.avh, ptr %.163.i322.epil, align 4, !tbaa !41
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %.14862.i323.epil, i64 %i.asa
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %.163.i322.epil, i64 %i.aof
  %epil.iter714.next = add i32 %epil.iter714, 1   ; 2 uses
  %epil.iter714.cmp.not = icmp eq i32 %epil.iter714.next, %xtraiter713
  br i1 %epil.iter714.cmp.not, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, label %.lr.ph64.i321.epil, !llvm.loop !618

_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit571.unr-lcssa: ; preds = %.lr.ph.i315
  %lcmp.mod709.not = icmp eq i32 %xtraiter707, 0
  br i1 %lcmp.mod709.not, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, label %.lr.ph.i315.epil.preheader

.lr.ph.i315.epil.preheader:                       ; preds = %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit571.unr-lcssa, %.lr.ph.i315.preheader
  %.260.i316.epil.init = phi ptr [ %i.arz, %.lr.ph.i315.preheader ], [ %i.avd, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit571.unr-lcssa ]
  %.24959.i317.epil.init = phi ptr [ %.0119, %.lr.ph.i315.preheader ], [ %i.avc, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit571.unr-lcssa ]
  %lcmp.mod710 = icmp ne i32 %xtraiter707, 0
  tail call void @llvm.assume(i1 %lcmp.mod710)
  br label %.lr.ph.i315.epil

.lr.ph.i315.epil:                                 ; preds = %.lr.ph.i315.epil, %.lr.ph.i315.epil.preheader
  %.260.i316.epil = phi ptr [ %i.avp, %.lr.ph.i315.epil ], [ %.260.i316.epil.init, %.lr.ph.i315.epil.preheader ] ; 3 uses
  %.24959.i317.epil = phi ptr [ %i.avo, %.lr.ph.i315.epil ], [ %.24959.i317.epil.init, %.lr.ph.i315.epil.preheader ] ; 3 uses
  %epil.iter708 = phi i32 [ %epil.iter708.next, %.lr.ph.i315.epil ], [ 0, %.lr.ph.i315.epil.preheader ]
  %i.avk = load <2 x i32>, ptr %.24959.i317.epil, align 4, !tbaa !41
  store <2 x i32> %i.avk, ptr %.260.i316.epil, align 4, !tbaa !41
  %i.avl = getelementptr inbounds nuw i8, ptr %.24959.i317.epil, i64 8
  %i.avm = getelementptr inbounds nuw i8, ptr %.260.i316.epil, i64 8
  %i.avn = load <2 x i32>, ptr %i.avl, align 4, !tbaa !41
  store <2 x i32> %i.avn, ptr %i.avm, align 4, !tbaa !41
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %.24959.i317.epil, i64 %i.asa
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %.260.i316.epil, i64 %i.aof
  %epil.iter708.next = add i32 %epil.iter708, 1   ; 2 uses
  %epil.iter708.cmp.not = icmp eq i32 %epil.iter708.next, %xtraiter707
  br i1 %epil.iter708.cmp.not, label %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, label %.lr.ph.i315.epil, !llvm.loop !619

_ZN2cvL10CopyColumnEPKhmPhmim.exit332:            ; preds = %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit571.unr-lcssa, %.lr.ph.i315.epil, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit570.unr-lcssa, %.lr.ph64.i321.epil, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332.loopexit.unr-lcssa, %.lr.ph68.i327.epil, %.preheader.i326, %.preheader54.i320, %.preheader56.i314, %bb.t, %_ZN2cvL10CopyColumnEPKhmPhmim.exit313
  %i.avq = load i32, ptr %i.aob, align 4, !tbaa !86
  %i.avr = sext i32 %i.avq to i64
  %i.avs = getelementptr inbounds i8, ptr %3, i64 %i.avr
  br label %bb.u

bb.u:                                             ; preds = %_ZN2cvL10CopyColumnEPKhmPhmim.exit332, %_ZN2cvL10CopyColumnEPKhmPhmim.exit294, %_ZN2cvL10CopyColumnEPKhmPhmim.exit256, %bb.a
  %.0122 = phi i32 [ 0, %bb.a ], [ 1, %_ZN2cvL10CopyColumnEPKhmPhmim.exit256 ], [ 1, %_ZN2cvL10CopyColumnEPKhmPhmim.exit294 ], [ 1, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332 ] ; 2 uses
  %.0121 = phi i32 [ %i.d, %bb.a ], [ %i.t, %_ZN2cvL10CopyColumnEPKhmPhmim.exit256 ], [ %i.t, %_ZN2cvL10CopyColumnEPKhmPhmim.exit294 ], [ %i.t, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332 ] ; 3 uses
  %.1117 = phi ptr [ %1, %bb.a ], [ %.0116395, %_ZN2cvL10CopyColumnEPKhmPhmim.exit256 ], [ %.0116395, %_ZN2cvL10CopyColumnEPKhmPhmim.exit294 ], [ %.0116395, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332 ]
  %.1 = phi ptr [ %3, %bb.a ], [ %i.afy, %_ZN2cvL10CopyColumnEPKhmPhmim.exit256 ], [ %i.anu, %_ZN2cvL10CopyColumnEPKhmPhmim.exit294 ], [ %i.avs, %_ZN2cvL10CopyColumnEPKhmPhmim.exit332 ]
  %i.avt = icmp slt i32 %.0122, %.0121
  br i1 %i.avt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.avv = lshr i64 %2, 2                         ; 28 uses
  %i.avw = icmp sgt i32 %i.b, 0                   ; 12 uses
  %i.avx = shl nuw nsw i32 %i.b, 2
  %i.avy = zext nneg i32 %i.avx to i64            ; 2 uses
  %i.avz = shl i32 %i.b, 1
  %i.awa = zext i32 %i.avz to i64
  %wide.trip.count.i = zext i32 %i.b to i64       ; 5 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.awc = lshr i64 %4, 2                         ; 34 uses
  %i.awd = add i32 %i.b, -1                       ; 6 uses
  %i.awe = add nsw i64 %i.awa, -2                 ; 4 uses
  %i.awf = lshr exact i64 %i.awe, 1
  %i.awg = add nuw i64 %i.awf, 1                  ; 4 uses
  %i.awh = add nsw i64 %wide.trip.count.i, -1     ; 2 uses
  %xtraiter797 = and i32 %i.b, 3                  ; 3 uses
  %i.awi = icmp ult i32 %i.awd, 3
  %unroll_iter801 = and i32 %i.b, 2147483644
  %lcmp.mod799.not = icmp eq i32 %xtraiter797, 0
  %lcmp.mod800 = icmp ne i32 %xtraiter797, 0
  %xtraiter803 = and i32 %i.b, 7                  ; 3 uses
  %i.awj = icmp ult i32 %i.awd, 7
  %unroll_iter807 = and i32 %i.b, 2147483640
  %lcmp.mod805.not = icmp eq i32 %xtraiter803, 0
  %lcmp.mod806 = icmp ne i32 %xtraiter803, 0
  %xtraiter809 = and i32 %i.b, 7                  ; 3 uses
  %i.awk = icmp ult i32 %i.awd, 7
  %unroll_iter813 = and i32 %i.b, 2147483640
  %lcmp.mod811.not = icmp eq i32 %xtraiter809, 0
  %lcmp.mod812 = icmp ne i32 %xtraiter809, 0
  %i.awl = icmp eq i64 %i.awe, 0
  %unroll_iter819 = and i64 %i.awg, -2
  %i.awm = and i64 %i.awe, 2
  %lcmp.mod817.not.not = icmp eq i64 %i.awm, 0
  %lcmp.mod818 = trunc i64 %i.awg to i1
  %xtraiter821 = and i64 %wide.trip.count.i, 1
  %i.awn = icmp eq i64 %i.awh, 0
  %unroll_iter825 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod823.not = icmp eq i64 %xtraiter821, 0
  %lcmp.mod824 = trunc i32 %i.b to i1
  %xtraiter827 = and i32 %i.b, 3                  ; 3 uses
  %i.awo = icmp ult i32 %i.awd, 3
  %unroll_iter831 = and i32 %i.b, 2147483644
  %lcmp.mod829.not = icmp eq i32 %xtraiter827, 0
  %lcmp.mod830 = icmp ne i32 %xtraiter827, 0
  %xtraiter833 = and i32 %i.b, 7                  ; 3 uses
  %i.awp = icmp ult i32 %i.awd, 7
  %unroll_iter837 = and i32 %i.b, 2147483640
  %lcmp.mod835.not = icmp eq i32 %xtraiter833, 0
  %lcmp.mod836 = icmp ne i32 %xtraiter833, 0
  %xtraiter839 = and i32 %i.b, 7                  ; 3 uses
  %i.awq = icmp ult i32 %i.awd, 7
  %unroll_iter843 = and i32 %i.b, 2147483640
  %lcmp.mod841.not = icmp eq i32 %xtraiter839, 0
  %lcmp.mod842 = icmp ne i32 %xtraiter839, 0
  %xtraiter845 = and i64 %i.awg, 3                ; 3 uses
  %i.awr = icmp ult i64 %i.awe, 6
  %unroll_iter849 = and i64 %i.awg, -4
  %lcmp.mod847.not = icmp eq i64 %xtraiter845, 0
  %lcmp.mod848 = icmp ne i64 %xtraiter845, 0
  %xtraiter851 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.aws = icmp ult i64 %i.awh, 3
  %unroll_iter855 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod853.not = icmp eq i64 %xtraiter851, 0
  %lcmp.mod854 = icmp ne i64 %xtraiter851, 0
  br label %bb.v

._crit_edge:                                      ; preds = %_ZN2cvL14CopyTo2ColumnsEPKhS1_Phmim.exit, %bb.u
  br i1 %7, label %bb.aa, label %_ZN2cvL23complementComplexOutputEiPhmiii.exit

bb.v:                                             ; preds = %.lr.ph, %_ZN2cvL14CopyTo2ColumnsEPKhS1_Phmim.exit
  %.0436 = phi i32 [ %.0122, %.lr.ph ], [ %i.biu, %_ZN2cvL14CopyTo2ColumnsEPKhS1_Phmim.exit ] ; 2 uses
  %.2435 = phi ptr [ %.1, %.lr.ph ], [ %i.bit, %_ZN2cvL14CopyTo2ColumnsEPKhS1_Phmim.exit ] ; 12 uses
  %.2118433 = phi ptr [ %.1117, %.lr.ph ], [ %i.bis, %_ZN2cvL14CopyTo2ColumnsEPKhS1_Phmim.exit ] ; 12 uses
  %i.awt = add nuw nsw i32 %.0436, 1
  %i.awu = icmp slt i32 %i.awt, %.0121            ; 2 uses
  %i.awv = load ptr, ptr %i.e, align 8, !tbaa !19 ; 24 uses
  br i1 %i.awu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aww = load ptr, ptr %i.g, align 8, !tbaa !19 ; 9 uses
  %i.awx = load i32, ptr %i.avu, align 4, !tbaa !86
  switch i32 %i.awx, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit [
    i32 4, label %.preheader.i334
    i32 8, label %.preheader81.i
    i32 16, label %.preheader83.i
  ]

.preheader83.i:                                   ; preds = %bb.w
  br i1 %i.avw, label %.lr.ph.i333, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit

.preheader81.i:                                   ; preds = %bb.w
  br i1 %i.avw, label %.lr.ph89.i.preheader, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit

.lr.ph89.i.preheader:                             ; preds = %.preheader81.i
  br i1 %i.awl, label %.lr.ph89.i.epil.preheader, label %.lr.ph89.i

.preheader.i334:                                  ; preds = %bb.w
  br i1 %i.avw, label %.lr.ph92.i.preheader, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit

.lr.ph92.i.preheader:                             ; preds = %.preheader.i334
  br i1 %i.awn, label %.lr.ph92.i.epil.preheader, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.1, %.lr.ph92.i ], [ 0, %.lr.ph92.i.preheader ] ; 4 uses
  %.091.i = phi ptr [ %i.axj, %.lr.ph92.i ], [ %.2118433, %.lr.ph92.i.preheader ] ; 3 uses
  %niter826 = phi i64 [ %niter826.next.1, %.lr.ph92.i ], [ 0, %.lr.ph92.i.preheader ]
  %i.awy = load i32, ptr %.091.i, align 4, !tbaa !41
  %i.awz = getelementptr inbounds nuw i8, ptr %.091.i, i64 4
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !41
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv99.i
  store i32 %i.awy, ptr %i.axb, align 4, !tbaa !41
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv99.i
  store i32 %i.axa, ptr %i.axc, align 4, !tbaa !41
  %indvars.iv.next100.i = or disjoint i64 %indvars.iv99.i, 1 ; 2 uses
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %.091.i, i64 %i.avv ; 3 uses
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !41
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 4
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !41
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv.next100.i
  store i32 %i.axe, ptr %i.axh, align 4, !tbaa !41
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv.next100.i
  store i32 %i.axg, ptr %i.axi, align 4, !tbaa !41
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.axd, i64 %i.avv ; 2 uses
  %niter826.next.1 = add i64 %niter826, 2         ; 2 uses
  %niter826.ncmp.1 = icmp eq i64 %niter826.next.1, %unroll_iter825
  br i1 %niter826.ncmp.1, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit.unr-lcssa, label %.lr.ph92.i, !llvm.loop !620

.lr.ph89.i:                                       ; preds = %.lr.ph89.i.preheader, %.lr.ph89.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i.1, %.lr.ph89.i ], [ 0, %.lr.ph89.i.preheader ] ; 4 uses
  %.188.i = phi ptr [ %i.axv, %.lr.ph89.i ], [ %.2118433, %.lr.ph89.i.preheader ] ; 3 uses
  %niter820 = phi i64 [ %niter820.next.1, %.lr.ph89.i ], [ 0, %.lr.ph89.i.preheader ]
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv96.i
  %i.axl = load <2 x i32>, ptr %.188.i, align 4, !tbaa !41
  store <2 x i32> %i.axl, ptr %i.axk, align 4, !tbaa !41
  %i.axm = getelementptr inbounds nuw i8, ptr %.188.i, i64 8
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv96.i
  %i.axo = load <2 x i32>, ptr %i.axm, align 4, !tbaa !41
  store <2 x i32> %i.axo, ptr %i.axn, align 4, !tbaa !41
  %indvars.iv.next97.i = or disjoint i64 %indvars.iv96.i, 2 ; 2 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %.188.i, i64 %i.avv ; 3 uses
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv.next97.i
  %i.axr = load <2 x i32>, ptr %i.axp, align 4, !tbaa !41
  store <2 x i32> %i.axr, ptr %i.axq, align 4, !tbaa !41
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axp, i64 8
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv.next97.i
  %i.axu = load <2 x i32>, ptr %i.axs, align 4, !tbaa !41
  store <2 x i32> %i.axu, ptr %i.axt, align 4, !tbaa !41
  %indvars.iv.next97.i.1 = add nuw nsw i64 %indvars.iv96.i, 4 ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axp, i64 %i.avv ; 2 uses
  %niter820.next.1 = add nuw nsw i64 %niter820, 2 ; 2 uses
  %niter820.ncmp.1.not = icmp eq i64 %niter820.next.1, %unroll_iter819
  br i1 %niter820.ncmp.1.not, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit558.unr-lcssa, label %.lr.ph89.i, !llvm.loop !621

.lr.ph.i333:                                      ; preds = %.preheader83.i, %.lr.ph.i333
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i333 ], [ 0, %.preheader83.i ] ; 4 uses
  %.286.i = phi ptr [ %i.ayi, %.lr.ph.i333 ], [ %.2118433, %.preheader83.i ] ; 5 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv.i
  %i.axx = load <2 x i32>, ptr %.286.i, align 4, !tbaa !41
  store <2 x i32> %i.axx, ptr %i.axw, align 4, !tbaa !41
  %i.axy = getelementptr inbounds nuw i8, ptr %.286.i, i64 8
  %i.axz = or disjoint i64 %indvars.iv.i, 2       ; 2 uses
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.axz
  %i.ayb = load <2 x i32>, ptr %i.axy, align 4, !tbaa !41
  store <2 x i32> %i.ayb, ptr %i.aya, align 4, !tbaa !41
  %i.ayc = getelementptr inbounds nuw i8, ptr %.286.i, i64 16
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv.i
  %i.aye = load <2 x i32>, ptr %i.ayc, align 4, !tbaa !41
  store <2 x i32> %i.aye, ptr %i.ayd, align 4, !tbaa !41
  %i.ayf = getelementptr inbounds nuw i8, ptr %.286.i, i64 24
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %i.axz
  %i.ayh = load <2 x i32>, ptr %i.ayf, align 4, !tbaa !41
  store <2 x i32> %i.ayh, ptr %i.ayg, align 4, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %.286.i, i64 %i.avv
  %i.ayj = icmp samesign ult i64 %indvars.iv.next.i, %i.avy
  br i1 %i.ayj, label %.lr.ph.i333, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit, !llvm.loop !622

_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit.unr-lcssa: ; preds = %.lr.ph92.i
  br i1 %lcmp.mod823.not, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit, label %.lr.ph92.i.epil.preheader

.lr.ph92.i.epil.preheader:                        ; preds = %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit.unr-lcssa, %.lr.ph92.i.preheader
  %indvars.iv99.i.epil.init = phi i64 [ 0, %.lr.ph92.i.preheader ], [ %indvars.iv.next100.i.1, %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit.unr-lcssa ] ; 2 uses
  %.091.i.epil.init = phi ptr [ %.2118433, %.lr.ph92.i.preheader ], [ %i.axj, %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod824)
  %i.ayk = load i32, ptr %.091.i.epil.init, align 4, !tbaa !41
  %i.ayl = getelementptr inbounds nuw i8, ptr %.091.i.epil.init, i64 4
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !41
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv99.i.epil.init
  store i32 %i.ayk, ptr %i.ayn, align 4, !tbaa !41
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %indvars.iv99.i.epil.init
  store i32 %i.aym, ptr %i.ayo, align 4, !tbaa !41
  br label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit

_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit558.unr-lcssa: ; preds = %.lr.ph89.i
  br i1 %lcmp.mod817.not.not, label %.lr.ph89.i.epil.preheader, label %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit

.lr.ph89.i.epil.preheader:                        ; preds = %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit558.unr-lcssa, %.lr.ph89.i.preheader
  %indvars.iv96.i.epil.init = phi i64 [ 0, %.lr.ph89.i.preheader ], [ %indvars.iv.next97.i.1, %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit558.unr-lcssa ] ; 2 uses
  %.188.i.epil.init = phi ptr [ %.2118433, %.lr.ph89.i.preheader ], [ %i.axv, %_ZN2cvL16CopyFrom2ColumnsEPKhmPhS2_im.exit.loopexit558.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod818)
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %indvars.iv96.i.epil.init
  %i.ayq = load <2 x i32>, ptr %.188.i.epil.init, align 4, !tbaa !41
end_hunk_2
