Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexPolyhedron?download=true
inline.NumInlined: 320
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9btHashMapI20btInternalVertexPair14btInternalEdgeE6insertERKS0_RKS1_:bb.a
  store i32 %i.aj, ptr %i.eo, align 4, !tbaa !56
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK9btHashMapI20btInternalVertexPair14btInternalEdgeE9findIndexERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN18btConvexPolyhedron11initialize2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(172) initializes((104, 120)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 19 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 4 uses
  br i1 %i.f, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge232:                                   ; preds = %._crit_edge, %bb.a
  %i.k = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ah, %._crit_edge ] ; 4 uses
  %i.l = extractelement <4 x float> %i.k, i64 3
  %i.m = fdiv float 1.000000e+00, %i.l            ; 3 uses
  %i.n = extractelement <4 x float> %i.k, i64 2
  %i.o = fmul float %i.m, %i.n                    ; 6 uses
  store float %i.o, ptr %i.a, align 8, !tbaa !36
  %i.p = extractelement <4 x float> %i.k, i64 1
  %i.q = fmul float %i.m, %i.p                    ; 6 uses
  store float %i.q, ptr %i.b, align 4, !tbaa !36
  %i.r = extractelement <4 x float> %i.k, i64 0
  %i.s = fmul float %i.m, %i.r                    ; 6 uses
  store float %i.s, ptr %i.c, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store float f0x7F7FFFFF, ptr %i.t, align 8, !tbaa !76
  br i1 %i.f, label %.lr.ph237, label %.preheader

.lr.ph237:                                        ; preds = %._crit_edge232
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %wide.trip.count281 = zext nneg i32 %i.e to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph231, %._crit_edge
  %indvars.iv273 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next274, %._crit_edge ] ; 2 uses
  %i.w = phi <4 x float> [ zeroinitializer, %.lr.ph231 ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %indvars.iv273 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %.not220 = icmp slt i32 %i.z, 3
  br i1 %.not220, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = add nsw i32 %i.z, -1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !56
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.ah = phi <4 x float> [ %i.w, %bb.b ], [ %i.ch, %bb.c ] ; 2 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge232, label %bb.b, !llvm.loop !79

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.ai = phi i32 [ %.pre, %.lr.ph ], [ %i.an, %bb.c ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ]
  %i.aj = phi <4 x float> [ %i.w, %.lr.ph ], [ %i.ch, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !56 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ao ; 2 uses
  %i.aq = load float, ptr %i.af, align 4, !tbaa !36 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !36 ; 2 uses
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !36 ; 2 uses
  %i.aw = fsub float %i.aq, %i.av                 ; 2 uses
  %i.ax = fneg float %i.aw
  %i.ay = fadd float %i.aq, %i.as
  %i.az = fadd float %i.ay, %i.av
  %i.ba = fmul float %i.az, f0x3EAAAAAB
  %i.bb = load <2 x float>, ptr %i.ae, align 4, !tbaa !36 ; 4 uses
  %i.bc = load <2 x float>, ptr %i.al, align 4, !tbaa !36 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bb, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop424 = fsub <2 x float> %i.bb, %i.bc
  %i.be = extractelement <2 x float> %foldExtExtBinop424, i64 1 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.ap, align 4, !tbaa !36 ; 2 uses
  %i.bg = fmul float %i.bd, %i.ax
  %i.bh = fsub <2 x float> %i.bb, %i.bf           ; 3 uses
  %i.bi = fneg <2 x float> %i.bh                  ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 1
  %i.bk = fmul float %i.at, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.be, float %i.aw, float %i.bk) ; 2 uses
  %i.bm = extractelement <2 x float> %i.bh, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bm, float %i.bg) ; 2 uses
  %i.bo = extractelement <2 x float> %i.bi, i64 0
  %i.bp = fmul float %i.be, %i.bo
  %i.bq = extractelement <2 x float> %i.bh, i64 1
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bq, float %i.bp) ; 2 uses
  %i.bs = fmul float %i.bn, %i.bn
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bt)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bu)
  %i.bv = fmul float %sqrt.i, 5.000000e-01        ; 3 uses
  %i.bw = fadd <2 x float> %i.bb, %i.bc
  %i.bx = fadd <2 x float> %i.bw, %i.bf
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = fmul float %i.ba, %i.bv
  %i.ca = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cb = fmul <2 x float> %i.bx, splat (float f0x3EAAAAAB)
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ce = fmul <4 x float> %i.cc, %i.cd
  %i.cf = shufflevector <4 x float> %i.ca, <4 x float> %i.ce, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bv, i64 3
  %i.ch = fadd <4 x float> %i.aj, %i.cg           ; 4 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %i.ci, ptr %i.a, align 8, !tbaa !36
  %i.cj = extractelement <4 x float> %i.ch, i64 0
  store float %i.cj, ptr %i.c, align 8, !tbaa !36
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !80

.preheader:                                       ; preds = %bb.f, %._crit_edge232
  %i.ck = phi float [ f0x7F7FFFFF, %._crit_edge232 ], [ %i.dg, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph246, label %._crit_edge247

.lr.ph246:                                        ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17
  %wide.trip.count286 = zext nneg i32 %i.cm to i64
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph237, %bb.f
  %indvars.iv278 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next279, %bb.f ] ; 2 uses
  %i.cq = phi float [ f0x7F7FFFFF, %.lr.ph237 ], [ %i.dg, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %indvars.iv278 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cv = load float, ptr %i.cs, align 4, !tbaa !36
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !36
  %i.cx = load float, ptr %i.cu, align 4, !tbaa !36
  %i.cy = fmul float %i.q, %i.cw
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.o, float %i.cv, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.cx, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.dc = load float, ptr %i.db, align 4, !tbaa !36
  %i.dd = fadd float %i.dc, %i.da
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.dd) ; 3 uses
  %i.df = fcmp olt float %i.de, %i.cq
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.de, ptr %i.t, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dg = phi float [ %i.de, %bb.e ], [ %i.cq, %bb.d ] ; 2 uses
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.preheader, label %bb.d, !llvm.loop !81

._crit_edge247:                                   ; preds = %bb.g, %.preheader
  %.097.lcssa = phi float [ f0x7F7FFFFF, %.preheader ], [ %.198, %bb.g ] ; 2 uses
  %.092.lcssa = phi float [ f0xFF7FFFFF, %.preheader ], [ %.1, %bb.g ] ; 2 uses
  %i.dh = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader ], [ %i.ev, %bb.g ] ; 2 uses
  %i.di = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader ], [ %i.ew, %bb.g ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dk = fadd <2 x float> %i.dh, %i.di
  %i.dl = fadd float %.097.lcssa, %.092.lcssa
  store <2 x float> %i.dk, ptr %i.dj, align 4, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.dl, ptr %i.dm, align 4, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float 0.000000e+00, ptr %i.dn, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.dp = fsub float %.092.lcssa, %.097.lcssa     ; 2 uses
  %1 = fsub <2 x float> %i.di, %i.dh              ; 3 uses
  store <2 x float> %1, ptr %i.do, align 4, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.dp, ptr %i.dq, align 4, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float 0.000000e+00, ptr %i.dr, align 8, !tbaa !36
  %2 = fdiv float %i.ck, f0x3FDDB3D7              ; 8 uses
  %3 = extractelement <2 x float> %1, i64 0       ; 2 uses
  %4 = extractelement <2 x float> %1, i64 1       ; 2 uses
  %i.ds = fcmp olt float %3, %4                   ; 2 uses
  %..i = select i1 %i.ds, float %4, float %3
  %.5.i = zext i1 %i.ds to i32
  %i.dt = fcmp olt float %..i, %i.dp
  %i.du = select i1 %i.dt, i32 2, i32 %.5.i       ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !36 ; 2 uses
  %i.dy = fneg float %2
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dx, float 5.000000e-01, float %i.dy)
  %i.ea = fmul float %i.dz, f0x3A800000
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store float %2, ptr %i.ec, align 8, !tbaa !36
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  store float %2, ptr %i.ed, align 4, !tbaa !36
  store float %2, ptr %i.eb, align 8, !tbaa !36
  %i.ee = fmul float %i.dx, 5.000000e-01          ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dv ; 2 uses
  store float %i.ee, ptr %i.ef, align 4, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %.not126.i = icmp sgt i32 %i.e, 0
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %.not126.i.1 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.1 = zext nneg i32 %i.e to i64
  %.not126.i.2 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.2 = zext nneg i32 %i.e to i64
  %.not126.i.3 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.3 = zext nneg i32 %i.e to i64
  %.not126.i.4 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.4 = zext nneg i32 %i.e to i64
  %.not126.i.5 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.5 = zext nneg i32 %i.e to i64
  %.not126.i.6 = icmp sgt i32 %i.e, 0
  %wide.trip.count.i.6 = zext nneg i32 %i.e to i64
  %wide.trip.count.i.7 = zext nneg i32 %i.e to i64 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.eg, align 8
  %i.ej = load ptr, ptr %i.eg, align 8
  %i.ek = load ptr, ptr %i.eg, align 8
  %i.el = load ptr, ptr %i.eg, align 8
  %i.em = load ptr, ptr %i.eg, align 8
  %i.en = load ptr, ptr %i.eg, align 8
  %i.eo = load ptr, ptr %i.eg, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph246, %bb.g
  %indvars.iv283 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next284, %bb.g ] ; 2 uses
  %.092244 = phi float [ f0xFF7FFFFF, %.lr.ph246 ], [ %.1, %bb.g ] ; 2 uses
  %.097241 = phi float [ f0x7F7FFFFF, %.lr.ph246 ], [ %.198, %bb.g ] ; 2 uses
  %i.ep = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph246 ], [ %i.ev, %bb.g ] ; 2 uses
  %i.eq = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph246 ], [ %i.ew, %bb.g ] ; 2 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv283 ; 2 uses
  %i.es = load <2 x float>, ptr %i.er, align 4, !tbaa !36 ; 4 uses
  %i.et = fcmp olt <2 x float> %i.es, %i.ep
  %i.eu = fcmp ogt <2 x float> %i.es, %i.eq
  %i.ev = select <2 x i1> %i.et, <2 x float> %i.es, <2 x float> %i.ep ; 2 uses
  %i.ew = select <2 x i1> %i.eu, <2 x float> %i.es, <2 x float> %i.eq ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !36 ; 4 uses
  %i.ez = fcmp olt float %i.ey, %.097241
  %.198 = select i1 %i.ez, float %i.ey, float %.097241 ; 2 uses
  %i.fa = fcmp ogt float %i.ey, %.092244
  %.1 = select i1 %i.fa, float %i.ey, float %.092244 ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge247, label %bb.g, !llvm.loop !82

bb.h:                                             ; preds = %._crit_edge247, %_ZNK18btConvexPolyhedron15testContainmentEv.exit
  %i.fb = phi float [ %i.ee, %._crit_edge247 ], [ %i.ke, %_ZNK18btConvexPolyhedron15testContainmentEv.exit ]
  %.089254 = phi i32 [ 0, %._crit_edge247 ], [ %i.kf, %_ZNK18btConvexPolyhedron15testContainmentEv.exit ]
  %i.fc = load float, ptr %i.eb, align 8          ; 2 uses
  %i.fd = load float, ptr %i.ed, align 4          ; 2 uses
  %i.fe = load float, ptr %i.ec, align 8          ; 2 uses
  %i.ff = fsub float %i.o, %i.fc                  ; 4 uses
  %i.fg = fsub float %i.q, %i.fd                  ; 4 uses
  %i.fh = fsub float %i.s, %i.fe                  ; 4 uses
  %i.fi = fadd float %i.fe, %i.s                  ; 4 uses
  %i.fj = fadd float %i.fd, %i.q                  ; 4 uses
  %i.fk = fadd float %i.o, %i.fc                  ; 4 uses
  br i1 %.not126.i, label %.lr.ph.i, label %._crit_edge.i.7.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [48 x i8], ptr %i.eh, i64 %indvars.iv.i ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 36
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fp = load float, ptr %i.fm, align 4, !tbaa !36
  %i.fq = load float, ptr %i.fn, align 4, !tbaa !36
  %i.fr = load float, ptr %i.fo, align 4, !tbaa !36
  %i.fs = fmul float %i.fj, %i.fq
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fp, float %i.fs)
  %i.fu = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.fr, float %i.ft)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 44
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !36
  %i.fx = fadd float %i.fw, %i.fu
  %i.fy = fcmp ule float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.i, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

._crit_edge.i:                                    ; preds = %bb.i
  br i1 %.not126.i.1, label %.lr.ph.i.1, label %._crit_edge.i.7.loopexit

.lr.ph.i.1:                                       ; preds = %._crit_edge.i, %bb.j
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %bb.j ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %indvars.iv.i.1 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 36
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gd = load float, ptr %i.ga, align 4, !tbaa !36
  %i.ge = load float, ptr %i.gb, align 4, !tbaa !36
  %i.gf = load float, ptr %i.gc, align 4, !tbaa !36
  %i.gg = fmul float %i.fj, %i.ge
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.gd, float %i.gg)
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.gf, float %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 44
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !36
  %i.gl = fadd float %i.gk, %i.gi
  %i.gm = fcmp ule float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.j, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.j:                                             ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !35

._crit_edge.i.1:                                  ; preds = %bb.j
  br i1 %.not126.i.2, label %.lr.ph.i.2, label %._crit_edge.i.7.loopexit

.lr.ph.i.2:                                       ; preds = %._crit_edge.i.1, %bb.k
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %bb.k ], [ 0, %._crit_edge.i.1 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [48 x i8], ptr %i.ej, i64 %indvars.iv.i.2 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 36
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gr = load float, ptr %i.go, align 4, !tbaa !36
  %i.gs = load float, ptr %i.gp, align 4, !tbaa !36
  %i.gt = load float, ptr %i.gq, align 4, !tbaa !36
  %i.gu = fmul float %i.fg, %i.gs
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.gr, float %i.gu)
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.gt, float %i.gv)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 44
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !36
  %i.gz = fadd float %i.gy, %i.gw
  %i.ha = fcmp ule float %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.k, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.k:                                             ; preds = %.lr.ph.i.2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %wide.trip.count.i.2
  br i1 %exitcond.not.i.2, label %._crit_edge.i.2, label %.lr.ph.i.2, !llvm.loop !35

._crit_edge.i.2:                                  ; preds = %bb.k
  br i1 %.not126.i.3, label %.lr.ph.i.3, label %._crit_edge.i.7.loopexit

.lr.ph.i.3:                                       ; preds = %._crit_edge.i.2, %bb.l
  %indvars.iv.i.3 = phi i64 [ %indvars.iv.next.i.3, %bb.l ], [ 0, %._crit_edge.i.2 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [48 x i8], ptr %i.ek, i64 %indvars.iv.i.3 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 36
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hf = load float, ptr %i.hc, align 4, !tbaa !36
  %i.hg = load float, ptr %i.hd, align 4, !tbaa !36
  %i.hh = load float, ptr %i.he, align 4, !tbaa !36
  %i.hi = fmul float %i.fg, %i.hg
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.hf, float %i.hi)
  %i.hk = tail call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.hh, float %i.hj)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 44
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !36
  %i.hn = fadd float %i.hm, %i.hk
  %i.ho = fcmp ule float %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.l, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.l:                                             ; preds = %.lr.ph.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i.3
  br i1 %exitcond.not.i.3, label %._crit_edge.i.3, label %.lr.ph.i.3, !llvm.loop !35

._crit_edge.i.3:                                  ; preds = %bb.l
  br i1 %.not126.i.4, label %.lr.ph.i.4, label %._crit_edge.i.7.loopexit

.lr.ph.i.4:                                       ; preds = %._crit_edge.i.3, %bb.m
  %indvars.iv.i.4 = phi i64 [ %indvars.iv.next.i.4, %bb.m ], [ 0, %._crit_edge.i.3 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %i.el, i64 %indvars.iv.i.4 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.ht = load float, ptr %i.hq, align 4, !tbaa !36
  %i.hu = load float, ptr %i.hr, align 4, !tbaa !36
  %i.hv = load float, ptr %i.hs, align 4, !tbaa !36
  %i.hw = fmul float %i.fj, %i.hu
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ht, float %i.hw)
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.hv, float %i.hx)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 44
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !36
  %i.ib = fadd float %i.ia, %i.hy
  %i.ic = fcmp ule float %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.m, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.m:                                             ; preds = %.lr.ph.i.4
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, %wide.trip.count.i.4
  br i1 %exitcond.not.i.4, label %._crit_edge.i.4, label %.lr.ph.i.4, !llvm.loop !35

._crit_edge.i.4:                                  ; preds = %bb.m
  br i1 %.not126.i.5, label %.lr.ph.i.5, label %._crit_edge.i.7.loopexit

.lr.ph.i.5:                                       ; preds = %._crit_edge.i.4, %bb.n
  %indvars.iv.i.5 = phi i64 [ %indvars.iv.next.i.5, %bb.n ], [ 0, %._crit_edge.i.4 ] ; 2 uses
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %i.em, i64 %indvars.iv.i.5 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 36
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.ih = load float, ptr %i.ie, align 4, !tbaa !36
  %i.ii = load float, ptr %i.if, align 4, !tbaa !36
  %i.ij = load float, ptr %i.ig, align 4, !tbaa !36
  %i.ik = fmul float %i.fj, %i.ii
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ih, float %i.ik)
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.ij, float %i.il)
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 44
  %i.io = load float, ptr %i.in, align 4, !tbaa !36
  %i.ip = fadd float %i.io, %i.im
  %i.iq = fcmp ule float %i.ip, 0.000000e+00
  br i1 %i.iq, label %bb.n, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.n:                                             ; preds = %.lr.ph.i.5
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, %wide.trip.count.i.5
  br i1 %exitcond.not.i.5, label %._crit_edge.i.5, label %.lr.ph.i.5, !llvm.loop !35

._crit_edge.i.5:                                  ; preds = %bb.n
  br i1 %.not126.i.6, label %.lr.ph.i.6, label %._crit_edge.i.7.loopexit

.lr.ph.i.6:                                       ; preds = %._crit_edge.i.5, %bb.o
  %indvars.iv.i.6 = phi i64 [ %indvars.iv.next.i.6, %bb.o ], [ 0, %._crit_edge.i.5 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [48 x i8], ptr %i.en, i64 %indvars.iv.i.6 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 36
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.iv = load float, ptr %i.is, align 4, !tbaa !36
  %i.iw = load float, ptr %i.it, align 4, !tbaa !36
  %i.ix = load float, ptr %i.iu, align 4, !tbaa !36
  %i.iy = fmul float %i.fg, %i.iw
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.iv, float %i.iy)
  %i.ja = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.ix, float %i.iz)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 44
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !36
  %i.jd = fadd float %i.jc, %i.ja
  %i.je = fcmp ule float %i.jd, 0.000000e+00
  br i1 %i.je, label %bb.o, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.o:                                             ; preds = %.lr.ph.i.6
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.next.i.6, %wide.trip.count.i.6
  br i1 %exitcond.not.i.6, label %._crit_edge.i.6, label %.lr.ph.i.6, !llvm.loop !35

._crit_edge.i.6:                                  ; preds = %bb.o
  br i1 %i.f, label %.lr.ph.i.7, label %._crit_edge.i.7.loopexit

.lr.ph.i.7:                                       ; preds = %._crit_edge.i.6, %bb.p
  %indvars.iv.i.7 = phi i64 [ %indvars.iv.next.i.7, %bb.p ], [ 0, %._crit_edge.i.6 ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [48 x i8], ptr %i.eo, i64 %indvars.iv.i.7 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 36
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jj = load float, ptr %i.jg, align 4, !tbaa !36
  %i.jk = load float, ptr %i.jh, align 4, !tbaa !36
  %i.jl = load float, ptr %i.ji, align 4, !tbaa !36
  %i.jm = fmul float %i.fg, %i.jk
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.jj, float %i.jm)
  %i.jo = tail call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.jl, float %i.jn)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 44
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !36
  %i.jr = fadd float %i.jq, %i.jo
  %i.js = fcmp ule float %i.jr, 0.000000e+00
  br i1 %i.js, label %bb.p, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit

bb.p:                                             ; preds = %.lr.ph.i.7
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i.7
  br i1 %exitcond.not.i.7, label %._crit_edge.i.7, label %.lr.ph.i.7, !llvm.loop !35

._crit_edge.i.7.loopexit:                         ; preds = %bb.h, %._crit_edge.i, %._crit_edge.i.1, %._crit_edge.i.2, %._crit_edge.i.3, %._crit_edge.i.4, %._crit_edge.i.5, %._crit_edge.i.6
  %.pre322 = zext nneg i32 %i.e to i64
  br label %._crit_edge.i.7

._crit_edge.i.7:                                  ; preds = %bb.p, %._crit_edge.i.7.loopexit
  %wide.trip.count.i168.pre-phi = phi i64 [ %.pre322, %._crit_edge.i.7.loopexit ], [ %wide.trip.count.i.7, %bb.p ] ; 8 uses
  %i.jt = fsub float %i.ck, %2
  %i.ju = fmul float %i.jt, f0x3A800000           ; 2 uses
  %i.jv = shl nuw nsw i32 1, %i.du
  %i.jw = and i32 %i.jv, 3                        ; 2 uses
  %i.jx = shl nuw nsw i32 1, %i.jw
  %i.jy = and i32 %i.jx, 3
  %i.jz = zext nneg i32 %i.jw to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.jz ; 3 uses
  %i.kb = zext nneg i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.kb ; 4 uses
  %.pre321 = load float, ptr %i.kc, align 4, !tbaa !36
  %i.kd = load ptr, ptr %i.eg, align 8            ; 8 uses
  br label %bb.q

_ZNK18btConvexPolyhedron15testContainmentEv.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7
  %i.ke = fsub float %i.fb, %i.ea                 ; 2 uses
  store float %i.ke, ptr %i.ef, align 4, !tbaa !36
  %i.kf = add nuw nsw i32 %.089254, 1             ; 2 uses
  %exitcond298.not = icmp eq i32 %i.kf, 1024
  br i1 %exitcond298.not, label %.critedge, label %bb.h, !llvm.loop !83

.critedge:                                        ; preds = %_ZNK18btConvexPolyhedron15testContainmentEv.exit
  store float %2, ptr %i.ec, align 8, !tbaa !36
  store float %2, ptr %i.ed, align 4, !tbaa !36
  store float %2, ptr %i.eb, align 8, !tbaa !36
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge.i.7, %.critedge109
  %i.kg = phi float [ %.pre321, %._crit_edge.i.7 ], [ %i.kk, %.critedge109 ]
  %.0260 = phi i32 [ 0, %._crit_edge.i.7 ], [ %i.pc, %.critedge109 ]
  %i.kh = load float, ptr %i.ka, align 4, !tbaa !36 ; 2 uses
  %i.ki = fadd float %i.ju, %i.kh
  store float %i.ki, ptr %i.ka, align 4, !tbaa !36
  %i.kj = load float, ptr %i.kc, align 4, !tbaa !36
  %i.kk = fadd float %i.ju, %i.kj                 ; 2 uses
  store float %i.kk, ptr %i.kc, align 4, !tbaa !36
  %i.kl = load float, ptr %i.eb, align 8          ; 2 uses
  %i.km = load float, ptr %i.ed, align 4          ; 2 uses
  %i.kn = load float, ptr %i.ec, align 8          ; 2 uses
  %i.ko = fsub float %i.o, %i.kl                  ; 4 uses
  %i.kp = fsub float %i.q, %i.km                  ; 4 uses
  %i.kq = fsub float %i.s, %i.kn                  ; 4 uses
  %i.kr = fadd float %i.s, %i.kn                  ; 4 uses
  %i.ks = fadd float %i.q, %i.km                  ; 4 uses
  %i.kt = fadd float %i.o, %i.kl                  ; 4 uses
  br i1 %i.f, label %.lr.ph.i164.us, label %.critedge109

.lr.ph.i164.us:                                   ; preds = %bb.q, %bb.r
  %indvars.iv.i169.us = phi i64 [ %indvars.iv.next.i170.us, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 36
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.ky = load float, ptr %i.kv, align 4, !tbaa !36
  %i.kz = load float, ptr %i.kw, align 4, !tbaa !36
  %i.la = load float, ptr %i.kx, align 4, !tbaa !36
  %i.lb = fmul float %i.ks, %i.kz
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.ky, float %i.lb)
  %i.ld = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.la, float %i.lc)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 44
  %i.lf = load float, ptr %i.le, align 4, !tbaa !36
  %i.lg = fadd float %i.lf, %i.ld
  %i.lh = fcmp ule float %i.lg, 0.000000e+00
  br i1 %i.lh, label %bb.r, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.r:                                             ; preds = %.lr.ph.i164.us
  %indvars.iv.next.i170.us = add nuw nsw i64 %indvars.iv.i169.us, 1 ; 2 uses
  %exitcond.not.i171.us = icmp eq i64 %indvars.iv.next.i170.us, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us, label %.lr.ph.i164.us.1, label %.lr.ph.i164.us, !llvm.loop !35

.lr.ph.i164.us.1:                                 ; preds = %bb.r, %bb.s
  %indvars.iv.i169.us.1 = phi i64 [ %indvars.iv.next.i170.us.1, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.li = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.1 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 36
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.lm = load float, ptr %i.lj, align 4, !tbaa !36
  %i.ln = load float, ptr %i.lk, align 4, !tbaa !36
  %i.lo = load float, ptr %i.ll, align 4, !tbaa !36
  %i.lp = fmul float %i.ks, %i.ln
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.lm, float %i.lp)
  %i.lr = tail call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.lo, float %i.lq)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 44
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !36
  %i.lu = fadd float %i.lt, %i.lr
  %i.lv = fcmp ule float %i.lu, 0.000000e+00
  br i1 %i.lv, label %bb.s, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.s:                                             ; preds = %.lr.ph.i164.us.1
  %indvars.iv.next.i170.us.1 = add nuw nsw i64 %indvars.iv.i169.us.1, 1 ; 2 uses
  %exitcond.not.i171.us.1 = icmp eq i64 %indvars.iv.next.i170.us.1, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.1, label %.lr.ph.i164.us.2, label %.lr.ph.i164.us.1, !llvm.loop !35

.lr.ph.i164.us.2:                                 ; preds = %bb.s, %bb.t
  %indvars.iv.i169.us.2 = phi i64 [ %indvars.iv.next.i170.us.2, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.2 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 36
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.ma = load float, ptr %i.lx, align 4, !tbaa !36
  %i.mb = load float, ptr %i.ly, align 4, !tbaa !36
  %i.mc = load float, ptr %i.lz, align 4, !tbaa !36
  %i.md = fmul float %i.kp, %i.mb
  %i.me = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.ma, float %i.md)
  %i.mf = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.mc, float %i.me)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lw, i64 44
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !36
  %i.mi = fadd float %i.mh, %i.mf
  %i.mj = fcmp ule float %i.mi, 0.000000e+00
  br i1 %i.mj, label %bb.t, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.t:                                             ; preds = %.lr.ph.i164.us.2
  %indvars.iv.next.i170.us.2 = add nuw nsw i64 %indvars.iv.i169.us.2, 1 ; 2 uses
  %exitcond.not.i171.us.2 = icmp eq i64 %indvars.iv.next.i170.us.2, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.2, label %.lr.ph.i164.us.3, label %.lr.ph.i164.us.2, !llvm.loop !35

.lr.ph.i164.us.3:                                 ; preds = %bb.t, %bb.u
  %indvars.iv.i169.us.3 = phi i64 [ %indvars.iv.next.i170.us.3, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.3 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 36
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.mo = load float, ptr %i.ml, align 4, !tbaa !36
  %i.mp = load float, ptr %i.mm, align 4, !tbaa !36
  %i.mq = load float, ptr %i.mn, align 4, !tbaa !36
  %i.mr = fmul float %i.kp, %i.mp
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.mo, float %i.mr)
  %i.mt = tail call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.mq, float %i.ms)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 44
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !36
  %i.mw = fadd float %i.mv, %i.mt
  %i.mx = fcmp ule float %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.u, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.u:                                             ; preds = %.lr.ph.i164.us.3
  %indvars.iv.next.i170.us.3 = add nuw nsw i64 %indvars.iv.i169.us.3, 1 ; 2 uses
  %exitcond.not.i171.us.3 = icmp eq i64 %indvars.iv.next.i170.us.3, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.3, label %.lr.ph.i164.us.4, label %.lr.ph.i164.us.3, !llvm.loop !35

.lr.ph.i164.us.4:                                 ; preds = %bb.u, %bb.v
  %indvars.iv.i169.us.4 = phi i64 [ %indvars.iv.next.i170.us.4, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.my = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.4 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 36
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %i.nc = load float, ptr %i.mz, align 4, !tbaa !36
  %i.nd = load float, ptr %i.na, align 4, !tbaa !36
  %i.ne = load float, ptr %i.nb, align 4, !tbaa !36
  %i.nf = fmul float %i.ks, %i.nd
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.nc, float %i.nf)
  %i.nh = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.ne, float %i.ng)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 44
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !36
  %i.nk = fadd float %i.nj, %i.nh
  %i.nl = fcmp ule float %i.nk, 0.000000e+00
  br i1 %i.nl, label %bb.v, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.v:                                             ; preds = %.lr.ph.i164.us.4
  %indvars.iv.next.i170.us.4 = add nuw nsw i64 %indvars.iv.i169.us.4, 1 ; 2 uses
  %exitcond.not.i171.us.4 = icmp eq i64 %indvars.iv.next.i170.us.4, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.4, label %.lr.ph.i164.us.5, label %.lr.ph.i164.us.4, !llvm.loop !35

.lr.ph.i164.us.5:                                 ; preds = %bb.v, %bb.w
  %indvars.iv.i169.us.5 = phi i64 [ %indvars.iv.next.i170.us.5, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.5 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 36
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  %i.nq = load float, ptr %i.nn, align 4, !tbaa !36
  %i.nr = load float, ptr %i.no, align 4, !tbaa !36
  %i.ns = load float, ptr %i.np, align 4, !tbaa !36
  %i.nt = fmul float %i.ks, %i.nr
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.nq, float %i.nt)
  %i.nv = tail call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.ns, float %i.nu)
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nm, i64 44
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !36
  %i.ny = fadd float %i.nx, %i.nv
  %i.nz = fcmp ule float %i.ny, 0.000000e+00
  br i1 %i.nz, label %bb.w, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.w:                                             ; preds = %.lr.ph.i164.us.5
  %indvars.iv.next.i170.us.5 = add nuw nsw i64 %indvars.iv.i169.us.5, 1 ; 2 uses
  %exitcond.not.i171.us.5 = icmp eq i64 %indvars.iv.next.i170.us.5, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.5, label %.lr.ph.i164.us.6, label %.lr.ph.i164.us.5, !llvm.loop !35

.lr.ph.i164.us.6:                                 ; preds = %bb.w, %bb.x
  %indvars.iv.i169.us.6 = phi i64 [ %indvars.iv.next.i170.us.6, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.6 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 36
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %i.oe = load float, ptr %i.ob, align 4, !tbaa !36
  %i.of = load float, ptr %i.oc, align 4, !tbaa !36
  %i.og = load float, ptr %i.od, align 4, !tbaa !36
  %i.oh = fmul float %i.kp, %i.of
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.oe, float %i.oh)
  %i.oj = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.og, float %i.oi)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oa, i64 44
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !36
  %i.om = fadd float %i.ol, %i.oj
  %i.on = fcmp ule float %i.om, 0.000000e+00
  br i1 %i.on, label %bb.x, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us

bb.x:                                             ; preds = %.lr.ph.i164.us.6
  %indvars.iv.next.i170.us.6 = add nuw nsw i64 %indvars.iv.i169.us.6, 1 ; 2 uses
  %exitcond.not.i171.us.6 = icmp eq i64 %indvars.iv.next.i170.us.6, %wide.trip.count.i168.pre-phi
  br i1 %exitcond.not.i171.us.6, label %.lr.ph.i164.us.7, label %.lr.ph.i164.us.6, !llvm.loop !35

.lr.ph.i164.us.7:                                 ; preds = %bb.x, %bb.y
  %indvars.iv.i169.us.7 = phi i64 [ %indvars.iv.next.i170.us.7, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.oo = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %indvars.iv.i169.us.7 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 36
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.os = load float, ptr %i.op, align 4, !tbaa !36
  %i.ot = load float, ptr %i.oq, align 4, !tbaa !36
  %i.ou = load float, ptr %i.or, align 4, !tbaa !36
  %i.ov = fmul float %i.kp, %i.ot
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.os, float %i.ov)
  %i.ox = tail call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.ou, float %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 44
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !36
  %i.pa = fadd float %i.oz, %i.ox
  %i.pb = fcmp ule float %i.pa, 0.000000e+00
  br i1 %i.pb, label %bb.y, label %_ZNK18btConvexPolyhedron15testContainmentEv.exit173.split.us
end_hunk_0
