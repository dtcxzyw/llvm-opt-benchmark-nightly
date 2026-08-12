inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_blend_chromaticity:bb.a
  br i1 %i.gm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %dt_HSL_2_RGB.exit
  %i.gn = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ab ], [ %.sink54.i.i, %bb.ac ], [ 0.000000e+00, %dt_HSL_2_RGB.exit ]
  store float %i.gn, ptr %i.fw, align 4, !tbaa !39, !alias.scope !414
  %i.go = fcmp reassoc nsz arcp contract afn ult float %.sink53.i.i, 0.000000e+00
  br i1 %i.go, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = fcmp reassoc nsz arcp contract afn ugt float %.sink53.i.i, 1.000000e+00
  br i1 %i.gp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gq = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ae ], [ %.sink53.i.i, %bb.af ], [ 0.000000e+00, %bb.ad ]
  store float %i.gq, ptr %i.gk, align 4, !tbaa !39, !alias.scope !414
  %i.gr = fcmp reassoc nsz arcp contract afn ult float %.sink.i.i, 0.000000e+00
  br i1 %i.gr, label %_CLAMP_XYZ.exit28, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gs = fcmp reassoc nsz arcp contract afn ugt float %.sink.i.i, 1.000000e+00
  br i1 %i.gs, label %_CLAMP_XYZ.exit28, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br label %_CLAMP_XYZ.exit28

_CLAMP_XYZ.exit28:                                ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.gt = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ah ], [ %.sink.i.i, %bb.ai ], [ 0.000000e+00, %bb.ag ]
  store float %i.gt, ptr %i.gj, align 4, !tbaa !39, !alias.scope !414
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store float %i.dm, ptr %i.gu, align 4, !tbaa !39
  %i.gv = add nuw i64 %.046, 1                    ; 2 uses
  %i.gw = add i64 %.01845, 4
  %exitcond.not = icmp eq i64 %i.gv, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !417
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_hue(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader106, label %vector.memcheck

.lr.ph.preheader106:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.053.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02352.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep61 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep62 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep61
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound063 = icmp ult ptr %2, %scevgep62
  %bound164 = icmp ult ptr %1, %scevgep
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx = or i1 %found.conflict, %found.conflict65
  br i1 %conflict.rdx, label %.lr.ph.preheader106, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !39 ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !418 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec66 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec67 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec68 = load <32 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !422 ; 3 uses
  %strided.vec69 = shufflevector <32 x float> %wide.vec68, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec70 = shufflevector <32 x float> %wide.vec68, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec71 = shufflevector <32 x float> %wide.vec68, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec, zeroinitializer ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.m = and <8 x i1> %i.k, %i.l
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.m, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec
  %predphi72 = select reassoc nsz arcp contract afn <8 x i1> %i.k, <8 x float> %predphi, <8 x float> zeroinitializer ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec66, zeroinitializer ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec66, splat (float 1.000000e+00)
  %i.p = and <8 x i1> %i.n, %i.o
  %predphi73 = select reassoc nsz arcp contract afn <8 x i1> %i.p, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec66
  %predphi74 = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %predphi73, <8 x float> zeroinitializer ; 5 uses
  %i.q = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec67, zeroinitializer ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec67, splat (float 1.000000e+00)
  %i.s = and <8 x i1> %i.q, %i.r
  %predphi75 = select reassoc nsz arcp contract afn <8 x i1> %i.s, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec67
  %predphi76 = select reassoc nsz arcp contract afn <8 x i1> %i.q, <8 x float> %predphi75, <8 x float> zeroinitializer ; 4 uses
  %i.t = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec69, zeroinitializer ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec69, splat (float 1.000000e+00)
  %i.v = and <8 x i1> %i.t, %i.u
  %predphi77 = select reassoc nsz arcp contract afn <8 x i1> %i.v, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec69
  %predphi78 = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %predphi77, <8 x float> zeroinitializer ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec70, zeroinitializer ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec70, splat (float 1.000000e+00)
  %i.y = and <8 x i1> %i.w, %i.x
  %predphi79 = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec70
  %predphi80 = select reassoc nsz arcp contract afn <8 x i1> %i.w, <8 x float> %predphi79, <8 x float> zeroinitializer ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec71, zeroinitializer ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec71, splat (float 1.000000e+00)
  %i.ab = and <8 x i1> %i.z, %i.aa
  %predphi81 = select reassoc nsz arcp contract afn <8 x i1> %i.ab, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec71
  %predphi82 = select reassoc nsz arcp contract afn <8 x i1> %i.z, <8 x float> %predphi81, <8 x float> zeroinitializer ; 4 uses
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %predphi72, <8 x float> %predphi74)
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ac, <8 x float> %predphi76) ; 2 uses
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi72, <8 x float> %predphi74)
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> %predphi76) ; 5 uses
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.ad ; 5 uses
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.ad ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, splat (float 5.000000e-01) ; 4 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.af, splat (float f0x358637BD)
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ag)
  %i.al = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ak, splat (float f0x358637BD)
  %i.am = select <8 x i1> %i.aj, <8 x i1> %i.al, <8 x i1> zeroinitializer ; 4 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ai, splat (float 5.000000e-01) ; 2 uses
  %i.ao = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ah
  %i.ap = select <8 x i1> %i.an, <8 x float> %i.ah, <8 x float> %i.ao
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ap
  %i.ar = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi72, %i.af ; 2 uses
  %i.as = xor <8 x i1> %i.ar, splat (i1 true)
  %i.at = select <8 x i1> %i.am, <8 x i1> %i.as, <8 x i1> zeroinitializer
  %i.au = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi74, %i.af
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> %predphi72, %predphi74
  %i.aw = fdiv reassoc nsz arcp contract afn <8 x float> %i.av, %i.ag
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, splat (float 4.000000e+00)
  %i.ay = select <8 x i1> %i.at, <8 x i1> %i.au, <8 x i1> zeroinitializer
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %predphi76, %predphi72
  %i.ba = fdiv reassoc nsz arcp contract afn <8 x float> %i.az, %i.ag
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = select <8 x i1> %i.am, <8 x i1> %i.ar, <8 x i1> zeroinitializer
  %i.bd = fsub reassoc nsz arcp contract afn <8 x float> %predphi74, %predphi76
  %i.be = fdiv reassoc nsz arcp contract afn <8 x float> %i.bd, %i.ag
  %predphi83 = select nsz <8 x i1> %i.ay, <8 x float> %i.bb, <8 x float> %i.ax
  %predphi84 = select nsz <8 x i1> %i.bc, <8 x float> %i.be, <8 x float> %predphi83
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %predphi84, splat (float f0x3E2AAAAB) ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bf)
  %i.bh = fsub reassoc nsz arcp contract afn <8 x float> %i.bf, %i.bg
  %predphi85 = select nsz <8 x i1> %i.am, <8 x float> %i.bh, <8 x float> zeroinitializer ; 3 uses
  %predphi86 = select nsz <8 x i1> %i.am, <8 x float> %i.aq, <8 x float> zeroinitializer
  %i.bi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %predphi78, <8 x float> %predphi80)
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bi, <8 x float> %predphi82)
  %i.bk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi78, <8 x float> %predphi80)
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> %predphi82) ; 4 uses
  %i.bm = fsub reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bj ; 4 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bl, splat (float f0x358637BD)
  %i.bo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bm)
  %i.bp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bo, splat (float f0x358637BD)
  %i.bq = select <8 x i1> %i.bn, <8 x i1> %i.bp, <8 x i1> zeroinitializer ; 3 uses
  %i.br = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi78, %i.bl ; 2 uses
  %i.bs = xor <8 x i1> %i.br, splat (i1 true)
  %i.bt = select <8 x i1> %i.bq, <8 x i1> %i.bs, <8 x i1> zeroinitializer
  %i.bu = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi80, %i.bl
  %i.bv = fsub reassoc nsz arcp contract afn <8 x float> %predphi78, %predphi80
  %i.bw = fdiv reassoc nsz arcp contract afn <8 x float> %i.bv, %i.bm
  %i.bx = fadd reassoc nsz arcp contract afn <8 x float> %i.bw, splat (float 4.000000e+00)
  %i.by = select <8 x i1> %i.bt, <8 x i1> %i.bu, <8 x i1> zeroinitializer
  %i.bz = fsub reassoc nsz arcp contract afn <8 x float> %predphi82, %predphi78
  %i.ca = fdiv reassoc nsz arcp contract afn <8 x float> %i.bz, %i.bm
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.000000e+00)
  %i.cc = select <8 x i1> %i.bq, <8 x i1> %i.br, <8 x i1> zeroinitializer
  %i.cd = fsub reassoc nsz arcp contract afn <8 x float> %predphi80, %predphi82
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> %i.cd, %i.bm
  %predphi87 = select nsz <8 x i1> %i.by, <8 x float> %i.cb, <8 x float> %i.bx
  %predphi88 = select nsz <8 x i1> %i.cc, <8 x float> %i.ce, <8 x float> %predphi87
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %predphi88, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.cf)
  %i.ch = fsub reassoc nsz arcp contract afn <8 x float> %i.cf, %i.cg
  %predphi89 = select nsz <8 x i1> %i.bq, <8 x float> %i.ch, <8 x float> zeroinitializer ; 2 uses
  %i.ci = fsub reassoc nsz arcp contract afn <8 x float> %predphi85, %predphi89
  %i.cj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ci) ; 3 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = fneg reassoc nsz arcp contract afn <8 x float> %wide.load
  %i.cm = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.cj
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, %i.cl
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.cn, %i.cj
  %i.cp = select reassoc nsz arcp contract afn <8 x i1> %i.ck, <8 x float> %i.co, <8 x float> %wide.load
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %predphi89, %predphi85
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, %i.cq
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %predphi85, splat (float 1.000000e+00)
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cr
  %i.cu = frem reassoc nsz arcp contract afn <8 x float> %i.ct, splat (float 1.000000e+00)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.cw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ai
  %i.cx = select <8 x i1> %i.an, <8 x float> %i.ai, <8 x float> %i.cw
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %predphi86, %i.cx ; 2 uses
  %i.cz = fsub reassoc nsz arcp contract afn <8 x float> %i.ai, %i.cy ; 5 uses
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cy, splat (float 2.000000e+00) ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn <8 x float> %i.cu, splat (float 6.000000e+00) ; 2 uses
  %i.dc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.db) ; 2 uses
  %i.dd = fsub reassoc nsz arcp contract afn <8 x float> %i.db, %i.dc
  %i.de = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.da ; 2 uses
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %i.cz, %i.da ; 4 uses
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.de, %i.cz ; 3 uses
  %i.dh = fsub reassoc nsz arcp contract afn <8 x float> %i.df, %i.de ; 3 uses
  %i.di = fptoui <8 x float> %i.dc to <8 x i64>   ; 9 uses
  %i.dj = icmp eq <8 x i64> %i.di, zeroinitializer
  %i.dk = icmp eq <8 x i64> %i.di, splat (i64 1)
  %i.dl = icmp eq <8 x i64> %i.di, splat (i64 2)
  %i.dm = icmp eq <8 x i64> %i.di, splat (i64 3)
  %i.dn = icmp eq <8 x i64> %i.di, splat (i64 4)
  %i.do = icmp ugt <8 x i64> %i.di, splat (i64 4)
  %i.dp = and <8 x i64> %i.di, splat (i64 -2)
  %i.dq = icmp eq <8 x i64> %i.dp, splat (i64 2)
  %predphi90 = select <8 x i1> %i.dk, <8 x float> %i.dh, <8 x float> %i.df
  %predphi91 = select <8 x i1> %i.dq, <8 x float> %i.cz, <8 x float> %predphi90
  %predphi92 = select <8 x i1> %i.dn, <8 x float> %i.dg, <8 x float> %predphi91 ; 3 uses
  %i.dr = icmp ugt <8 x i64> %i.di, splat (i64 3)
  %predphi93 = select <8 x i1> %i.dj, <8 x float> %i.dg, <8 x float> %i.df
  %predphi94 = select <8 x i1> %i.dm, <8 x float> %i.dh, <8 x float> %predphi93
  %predphi95 = select <8 x i1> %i.dr, <8 x float> %i.cz, <8 x float> %predphi94 ; 3 uses
  %i.ds = add <8 x i64> %i.di, splat (i64 -3)
  %i.dt = icmp ult <8 x i64> %i.ds, splat (i64 2)
  %predphi96 = select <8 x i1> %i.dl, <8 x float> %i.dg, <8 x float> %i.cz
  %predphi97 = select <8 x i1> %i.dt, <8 x float> %i.df, <8 x float> %predphi96
  %predphi98 = select <8 x i1> %i.do, <8 x float> %i.dh, <8 x float> %predphi97 ; 3 uses
  %i.du = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi92, zeroinitializer ; 2 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi92, splat (float 1.000000e+00)
  %i.dw = and <8 x i1> %i.du, %i.dv
  %predphi99 = select reassoc nsz arcp contract afn <8 x i1> %i.dw, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi92
  %predphi100 = select reassoc nsz arcp contract afn <8 x i1> %i.du, <8 x float> %predphi99, <8 x float> zeroinitializer
  %i.dx = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi95, zeroinitializer ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi95, splat (float 1.000000e+00)
  %i.dz = and <8 x i1> %i.dx, %i.dy
  %predphi101 = select reassoc nsz arcp contract afn <8 x i1> %i.dz, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi95
  %predphi102 = select reassoc nsz arcp contract afn <8 x i1> %i.dx, <8 x float> %predphi101, <8 x float> zeroinitializer
  %i.ea = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi98, zeroinitializer ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi98, splat (float 1.000000e+00)
  %i.ec = and <8 x i1> %i.ea, %i.eb
  %predphi103 = select reassoc nsz arcp contract afn <8 x i1> %i.ec, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi98
  %predphi104 = select reassoc nsz arcp contract afn <8 x i1> %i.ea, <8 x float> %predphi103, <8 x float> zeroinitializer
  %i.ed = shufflevector <8 x float> %predphi100, <8 x float> %predphi102, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ee = shufflevector <8 x float> %predphi104, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ed, <16 x float> %i.ee, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cv, align 4, !tbaa !39, !noalias !426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %.lr.ph.preheader106, label %vector.body, !llvm.loop !430

._crit_edge:                                      ; preds = %_CLAMP_XYZ.exit34, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader106, %_CLAMP_XYZ.exit34
  %.053 = phi i64 [ %i.ij, %_CLAMP_XYZ.exit34 ], [ %.053.ph, %.lr.ph.preheader106 ] ; 2 uses
  %.02352 = phi i64 [ %i.ik, %_CLAMP_XYZ.exit34 ], [ %.02352.ph, %.lr.ph.preheader106 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.053
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !39 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02352 ; 3 uses
  %.sroa.045.0.copyload = load float, ptr %i.ei, align 4, !tbaa !39, !alias.scope !418 ; 3 uses
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.sroa.647.0.copyload = load float, ptr %.sroa.647.0..sroa_idx, align 4, !tbaa !39, !alias.scope !418 ; 3 uses
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.949.0.copyload = load float, ptr %.sroa.949.0..sroa_idx, align 4, !tbaa !39, !alias.scope !418 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02352 ; 3 uses
  %.sroa.040.0.copyload = load float, ptr %i.ej, align 4, !tbaa !39, !alias.scope !422 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !39, !alias.scope !422 ; 3 uses
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.943.0.copyload = load float, ptr %.sroa.943.0..sroa_idx, align 4, !tbaa !39, !alias.scope !422 ; 3 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ult float %.sroa.045.0.copyload, 0.000000e+00
  br i1 %i.ek, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.el = fcmp reassoc nsz arcp contract afn ugt float %.sroa.045.0.copyload, 1.000000e+00
  br i1 %i.el, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.em = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %.sroa.045.0.copyload, %bb.c ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %i.en = fcmp reassoc nsz arcp contract afn ult float %.sroa.647.0.copyload, 0.000000e+00
  br i1 %i.en, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eo = fcmp reassoc nsz arcp contract afn ugt float %.sroa.647.0.copyload, 1.000000e+00
  br i1 %i.eo, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ep = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.e ], [ %.sroa.647.0.copyload, %bb.f ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %i.eq = fcmp reassoc nsz arcp contract afn ult float %.sroa.949.0.copyload, 0.000000e+00
  br i1 %i.eq, label %_CLAMP_XYZ.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.er = fcmp reassoc nsz arcp contract afn ugt float %.sroa.949.0.copyload, 1.000000e+00
  br i1 %i.er, label %_CLAMP_XYZ.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %_CLAMP_XYZ.exit

_CLAMP_XYZ.exit:                                  ; preds = %bb.i, %bb.h, %bb.g
  %i.es = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.h ], [ %.sroa.949.0.copyload, %bb.i ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %i.et = fcmp reassoc nsz arcp contract afn ult float %.sroa.040.0.copyload, 0.000000e+00
  br i1 %i.et, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_CLAMP_XYZ.exit
  %i.eu = fcmp reassoc nsz arcp contract afn ugt float %.sroa.040.0.copyload, 1.000000e+00
  br i1 %i.eu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_CLAMP_XYZ.exit
  %i.ev = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.j ], [ %.sroa.040.0.copyload, %bb.k ], [ 0.000000e+00, %_CLAMP_XYZ.exit ] ; 5 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %.sroa.6.0.copyload, 0.000000e+00
  br i1 %i.ew, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ex = fcmp reassoc nsz arcp contract afn ugt float %.sroa.6.0.copyload, 1.000000e+00
  br i1 %i.ex, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ey = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %.sroa.6.0.copyload, %bb.n ], [ 0.000000e+00, %bb.l ] ; 5 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ult float %.sroa.943.0.copyload, 0.000000e+00
  br i1 %i.ez, label %_CLAMP_XYZ.exit25, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = fcmp reassoc nsz arcp contract afn ugt float %.sroa.943.0.copyload, 1.000000e+00
  br i1 %i.fa, label %_CLAMP_XYZ.exit25, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_CLAMP_XYZ.exit25

_CLAMP_XYZ.exit25:                                ; preds = %bb.q, %bb.p, %bb.o
  %i.fb = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.p ], [ %.sroa.943.0.copyload, %bb.q ], [ 0.000000e+00, %bb.o ] ; 4 uses
  %i.fc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.em, float %i.ep)
  %i.fd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fc, float %i.es) ; 2 uses
  %i.fe = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.em, float %i.ep)
  %i.ff = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fe, float %i.es) ; 5 uses
  %i.fg = fsub reassoc nsz arcp contract afn float %i.ff, %i.fd ; 5 uses
  %i.fh = fadd reassoc nsz arcp contract afn float %i.ff, %i.fd ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, 5.000000e-01 ; 5 uses
  %i.fj = fcmp reassoc nsz arcp contract afn ogt float %i.ff, f0x358637BD
  %i.fk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fg)
  %i.fl = fcmp reassoc nsz arcp contract afn ogt float %i.fk, f0x358637BD
  %or.cond.i = select i1 %i.fj, i1 %i.fl, i1 false
  br i1 %or.cond.i, label %bb.r, label %dt_RGB_2_HSL.exit

bb.r:                                             ; preds = %_CLAMP_XYZ.exit25
  %i.fm = fcmp reassoc nsz arcp contract afn olt float %i.fi, 5.000000e-01
  %i.fn = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.fh
  %.pn.i = select i1 %i.fm, float %i.fh, float %i.fn
  %.0.i = fdiv reassoc nsz arcp contract afn float %i.fg, %.pn.i
  %i.fo = fcmp reassoc nsz arcp contract afn oeq float %i.em, %i.ff
  br i1 %i.fo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fp = fsub reassoc nsz arcp contract afn float %i.ep, %i.es
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fp, %i.fg
  br label %_dt_RGB_2_Hue.exit.i

bb.t:                                             ; preds = %bb.r
  %i.fr = fcmp reassoc nsz arcp contract afn oeq float %i.ep, %i.ff
  br i1 %i.fr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fs = fsub reassoc nsz arcp contract afn float %i.es, %i.em
  %i.ft = fdiv reassoc nsz arcp contract afn float %i.fs, %i.fg
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

bb.v:                                             ; preds = %bb.t
  %i.fv = fsub reassoc nsz arcp contract afn float %i.em, %i.ep
  %i.fw = fdiv reassoc nsz arcp contract afn float %i.fv, %i.fg
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fw, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

_dt_RGB_2_Hue.exit.i:                             ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i = phi nsz float [ %i.fq, %bb.s ], [ %i.fu, %bb.u ], [ %i.fx, %bb.v ]
  %i.fy = fmul reassoc nsz arcp contract afn float %.0.i.i, f0x3E2AAAAB ; 2 uses
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fy)
  %i.ga = fsub reassoc nsz arcp contract afn float %i.fy, %i.fz
  br label %dt_RGB_2_HSL.exit

dt_RGB_2_HSL.exit:                                ; preds = %_CLAMP_XYZ.exit25, %_dt_RGB_2_Hue.exit.i
  %.024.i = phi nsz float [ %i.ga, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_CLAMP_XYZ.exit25 ] ; 3 uses
  %.1.i = phi nsz float [ %.0.i, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_CLAMP_XYZ.exit25 ]
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ev, float %i.ey)
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gb, float %i.fb)
  %i.gd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ev, float %i.ey)
  %i.ge = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gd, float %i.fb) ; 4 uses
  %i.gf = fsub reassoc nsz arcp contract afn float %i.ge, %i.gc ; 4 uses
  %i.gg = fcmp reassoc nsz arcp contract afn ogt float %i.ge, f0x358637BD
  %i.gh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gf)
  %i.gi = fcmp reassoc nsz arcp contract afn ogt float %i.gh, f0x358637BD
  %or.cond.i26 = select i1 %i.gg, i1 %i.gi, i1 false
  br i1 %or.cond.i26, label %bb.w, label %dt_RGB_2_HSL.exit33

bb.w:                                             ; preds = %dt_RGB_2_HSL.exit
  %i.gj = fcmp reassoc nsz arcp contract afn oeq float %i.ev, %i.ge
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gk = fsub reassoc nsz arcp contract afn float %i.ey, %i.fb
  %i.gl = fdiv reassoc nsz arcp contract afn float %i.gk, %i.gf
  br label %_dt_RGB_2_Hue.exit.i31

bb.y:                                             ; preds = %bb.w
  %i.gm = fcmp reassoc nsz arcp contract afn oeq float %i.ey, %i.ge
  br i1 %i.gm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gn = fsub reassoc nsz arcp contract afn float %i.fb, %i.ev
  %i.go = fdiv reassoc nsz arcp contract afn float %i.gn, %i.gf
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i31

bb.aa:                                            ; preds = %bb.y
  %i.gq = fsub reassoc nsz arcp contract afn float %i.ev, %i.ey
  %i.gr = fdiv reassoc nsz arcp contract afn float %i.gq, %i.gf
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i31

_dt_RGB_2_Hue.exit.i31:                           ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i32 = phi nsz float [ %i.gl, %bb.x ], [ %i.gp, %bb.z ], [ %i.gs, %bb.aa ]
  %i.gt = fmul reassoc nsz arcp contract afn float %.0.i.i32, f0x3E2AAAAB ; 2 uses
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.gt)
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gt, %i.gu
  br label %dt_RGB_2_HSL.exit33

dt_RGB_2_HSL.exit33:                              ; preds = %dt_RGB_2_HSL.exit, %_dt_RGB_2_Hue.exit.i31
  %.024.i27 = phi nsz float [ %i.gv, %_dt_RGB_2_Hue.exit.i31 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ] ; 2 uses
  %i.gw = fsub reassoc nsz arcp contract afn float %.024.i, %.024.i27
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gw) ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gx, 5.000000e-01
  %i.gz = fneg reassoc nsz arcp contract afn float %i.eh
  %i.ha = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.gx
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.gz
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.hb, %i.gx
  %i.hd = select reassoc nsz arcp contract afn i1 %i.gy, float %i.hc, float %i.eh
  %i.he = fsub reassoc nsz arcp contract afn float %.024.i27, %.024.i
  %i.hf = fmul reassoc nsz arcp contract afn float %i.hd, %i.he
  %i.hg = fadd reassoc nsz arcp contract afn float %.024.i, 1.000000e+00
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hg, %i.hf
  %i.hi = frem reassoc nsz arcp contract afn float %i.hh, 1.000000e+00
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02352 ; 4 uses
  %i.hk = fcmp reassoc nsz arcp contract afn olt float %i.fi, 5.000000e-01
  %i.hl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fi
  %.sink14.i = select i1 %i.hk, float %i.fi, float %i.hl
  %i.hm = fmul reassoc nsz arcp contract afn float %.1.i, %.sink14.i ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn float %i.fi, %i.hm ; 8 uses
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hm, 2.000000e+00 ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hi, 6.000000e+00 ; 2 uses
  %i.hq = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hp) ; 2 uses
  %i.hr = fsub reassoc nsz arcp contract afn float %i.hp, %i.hq
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %i.ho ; 2 uses
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hn, %i.ho ; 7 uses
  %i.hu = fadd reassoc nsz arcp contract afn float %i.hs, %i.hn ; 3 uses
  %i.hv = fsub reassoc nsz arcp contract afn float %i.ht, %i.hs ; 3 uses
  %i.hw = fptoui float %i.hq to i64
  switch i64 %i.hw, label %bb.af [
    i64 0, label %dt_HSL_2_RGB.exit
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
  ]

bb.ab:                                            ; preds = %dt_RGB_2_HSL.exit33
  br label %dt_HSL_2_RGB.exit

bb.ac:                                            ; preds = %dt_RGB_2_HSL.exit33
  br label %dt_HSL_2_RGB.exit

bb.ad:                                            ; preds = %dt_RGB_2_HSL.exit33
  br label %dt_HSL_2_RGB.exit

bb.ae:                                            ; preds = %dt_RGB_2_HSL.exit33
  br label %dt_HSL_2_RGB.exit

bb.af:                                            ; preds = %dt_RGB_2_HSL.exit33
  br label %dt_HSL_2_RGB.exit

dt_HSL_2_RGB.exit:                                ; preds = %dt_RGB_2_HSL.exit33, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sink54.i.i = phi float [ %i.hv, %bb.ab ], [ %i.hn, %bb.ad ], [ %i.ht, %bb.af ], [ %i.hu, %bb.ae ], [ %i.hn, %bb.ac ], [ %i.ht, %dt_RGB_2_HSL.exit33 ] ; 3 uses
  %.sink53.i.i = phi float [ %i.ht, %bb.ab ], [ %i.hv, %bb.ad ], [ %i.hn, %bb.af ], [ %i.hn, %bb.ae ], [ %i.ht, %bb.ac ], [ %i.hu, %dt_RGB_2_HSL.exit33 ] ; 3 uses
  %.sink.i.i = phi float [ %i.hn, %bb.ab ], [ %i.ht, %bb.ad ], [ %i.hv, %bb.af ], [ %i.ht, %bb.ae ], [ %i.hu, %bb.ac ], [ %i.hn, %dt_RGB_2_HSL.exit33 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hz = fcmp reassoc nsz arcp contract afn ult float %.sink54.i.i, 0.000000e+00
  br i1 %i.hz, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %dt_HSL_2_RGB.exit
  %i.ia = fcmp reassoc nsz arcp contract afn ugt float %.sink54.i.i, 1.000000e+00
  br i1 %i.ia, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %dt_HSL_2_RGB.exit
  %i.ib = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ag ], [ %.sink54.i.i, %bb.ah ], [ 0.000000e+00, %dt_HSL_2_RGB.exit ]
  store float %i.ib, ptr %i.hj, align 4, !tbaa !39, !alias.scope !431
  %i.ic = fcmp reassoc nsz arcp contract afn ult float %.sink53.i.i, 0.000000e+00
  br i1 %i.ic, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = fcmp reassoc nsz arcp contract afn ugt float %.sink53.i.i, 1.000000e+00
  br i1 %i.id, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ie = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.aj ], [ %.sink53.i.i, %bb.ak ], [ 0.000000e+00, %bb.ai ]
  store float %i.ie, ptr %i.hy, align 4, !tbaa !39, !alias.scope !431
  %i.if = fcmp reassoc nsz arcp contract afn ult float %.sink.i.i, 0.000000e+00
  br i1 %i.if, label %_CLAMP_XYZ.exit34, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ig = fcmp reassoc nsz arcp contract afn ugt float %.sink.i.i, 1.000000e+00
  br i1 %i.ig, label %_CLAMP_XYZ.exit34, label %bb.an

bb.an:                                            ; preds = %bb.am
  br label %_CLAMP_XYZ.exit34

_CLAMP_XYZ.exit34:                                ; preds = %bb.an, %bb.am, %bb.al
  %i.ih = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.am ], [ %.sink.i.i, %bb.an ], [ 0.000000e+00, %bb.al ]
  store float %i.ih, ptr %i.hx, align 4, !tbaa !39, !alias.scope !431
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store float %i.eh, ptr %i.ii, align 4, !tbaa !39
  %i.ij = add nuw i64 %.053, 1                    ; 2 uses
  %i.ik = add i64 %.02352, 4
  %exitcond.not = icmp eq i64 %i.ij, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !434
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_color(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

.lr.ph.preheader110:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.056.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02555.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep64 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep65 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep64
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound066 = icmp ult ptr %2, %scevgep65
  %bound167 = icmp ult ptr %1, %scevgep
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx = or i1 %found.conflict, %found.conflict68
  br i1 %conflict.rdx, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !39 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !435 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec69 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec70 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec71 = load <32 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !439 ; 3 uses
  %strided.vec72 = shufflevector <32 x float> %wide.vec71, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec73 = shufflevector <32 x float> %wide.vec71, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec74 = shufflevector <32 x float> %wide.vec71, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec, zeroinitializer ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.m = and <8 x i1> %i.k, %i.l
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.m, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec
  %predphi75 = select reassoc nsz arcp contract afn <8 x i1> %i.k, <8 x float> %predphi, <8 x float> zeroinitializer ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec69, zeroinitializer ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec69, splat (float 1.000000e+00)
  %i.p = and <8 x i1> %i.n, %i.o
  %predphi76 = select reassoc nsz arcp contract afn <8 x i1> %i.p, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec69
  %predphi77 = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %predphi76, <8 x float> zeroinitializer ; 5 uses
  %i.q = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec70, zeroinitializer ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec70, splat (float 1.000000e+00)
  %i.s = and <8 x i1> %i.q, %i.r
  %predphi78 = select reassoc nsz arcp contract afn <8 x i1> %i.s, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec70
  %predphi79 = select reassoc nsz arcp contract afn <8 x i1> %i.q, <8 x float> %predphi78, <8 x float> zeroinitializer ; 4 uses
  %i.t = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec72, zeroinitializer ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec72, splat (float 1.000000e+00)
  %i.v = and <8 x i1> %i.t, %i.u
  %predphi80 = select reassoc nsz arcp contract afn <8 x i1> %i.v, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec72
  %predphi81 = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %predphi80, <8 x float> zeroinitializer ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec73, zeroinitializer ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec73, splat (float 1.000000e+00)
  %i.y = and <8 x i1> %i.w, %i.x
  %predphi82 = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec73
  %predphi83 = select reassoc nsz arcp contract afn <8 x i1> %i.w, <8 x float> %predphi82, <8 x float> zeroinitializer ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec74, zeroinitializer ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec74, splat (float 1.000000e+00)
  %i.ab = and <8 x i1> %i.z, %i.aa
  %predphi84 = select reassoc nsz arcp contract afn <8 x i1> %i.ab, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec74
  %predphi85 = select reassoc nsz arcp contract afn <8 x i1> %i.z, <8 x float> %predphi84, <8 x float> zeroinitializer ; 4 uses
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %predphi75, <8 x float> %predphi77)
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ac, <8 x float> %predphi79) ; 2 uses
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi75, <8 x float> %predphi77)
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> %predphi79) ; 5 uses
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.ad ; 5 uses
  %i.ah = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.ad ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.ah, splat (float 5.000000e-01) ; 4 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.af, splat (float f0x358637BD)
  %i.ak = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ag)
  %i.al = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ak, splat (float f0x358637BD)
  %i.am = select <8 x i1> %i.aj, <8 x i1> %i.al, <8 x i1> zeroinitializer ; 4 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ai, splat (float 5.000000e-01) ; 2 uses
  %i.ao = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ah
  %i.ap = select <8 x i1> %i.an, <8 x float> %i.ah, <8 x float> %i.ao
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ap
  %i.ar = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi75, %i.af ; 2 uses
  %i.as = xor <8 x i1> %i.ar, splat (i1 true)
  %i.at = select <8 x i1> %i.am, <8 x i1> %i.as, <8 x i1> zeroinitializer
  %i.au = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi77, %i.af
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> %predphi75, %predphi77
  %i.aw = fdiv reassoc nsz arcp contract afn <8 x float> %i.av, %i.ag
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, splat (float 4.000000e+00)
  %i.ay = select <8 x i1> %i.at, <8 x i1> %i.au, <8 x i1> zeroinitializer
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %predphi79, %predphi75
  %i.ba = fdiv reassoc nsz arcp contract afn <8 x float> %i.az, %i.ag
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = select <8 x i1> %i.am, <8 x i1> %i.ar, <8 x i1> zeroinitializer
  %i.bd = fsub reassoc nsz arcp contract afn <8 x float> %predphi77, %predphi79
  %i.be = fdiv reassoc nsz arcp contract afn <8 x float> %i.bd, %i.ag
  %predphi86 = select nsz <8 x i1> %i.ay, <8 x float> %i.bb, <8 x float> %i.ax
  %predphi87 = select nsz <8 x i1> %i.bc, <8 x float> %i.be, <8 x float> %predphi86
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %predphi87, splat (float f0x3E2AAAAB) ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bf)
  %i.bh = fsub reassoc nsz arcp contract afn <8 x float> %i.bf, %i.bg
  %predphi88 = select nsz <8 x i1> %i.am, <8 x float> %i.bh, <8 x float> zeroinitializer ; 3 uses
  %predphi89 = select nsz <8 x i1> %i.am, <8 x float> %i.aq, <8 x float> zeroinitializer ; 2 uses
  %i.bi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %predphi81, <8 x float> %predphi83)
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bi, <8 x float> %predphi85) ; 2 uses
  %i.bk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi81, <8 x float> %predphi83)
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> %predphi85) ; 5 uses
  %i.bm = fsub reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bj ; 5 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bl, splat (float f0x358637BD)
  %i.bo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bm)
  %i.bp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bo, splat (float f0x358637BD)
  %i.bq = select <8 x i1> %i.bn, <8 x i1> %i.bp, <8 x i1> zeroinitializer ; 4 uses
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bj ; 3 uses
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bs, splat (float 5.000000e-01)
  %i.bu = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.br
  %i.bv = select <8 x i1> %i.bt, <8 x float> %i.br, <8 x float> %i.bu
  %i.bw = fdiv reassoc nsz arcp contract afn <8 x float> %i.bm, %i.bv
  %i.bx = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi81, %i.bl ; 2 uses
  %i.by = xor <8 x i1> %i.bx, splat (i1 true)
  %i.bz = select <8 x i1> %i.bq, <8 x i1> %i.by, <8 x i1> zeroinitializer
  %i.ca = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi83, %i.bl
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %predphi81, %predphi83
  %i.cc = fdiv reassoc nsz arcp contract afn <8 x float> %i.cb, %i.bm
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, splat (float 4.000000e+00)
  %i.ce = select <8 x i1> %i.bz, <8 x i1> %i.ca, <8 x i1> zeroinitializer
  %i.cf = fsub reassoc nsz arcp contract afn <8 x float> %predphi85, %predphi81
  %i.cg = fdiv reassoc nsz arcp contract afn <8 x float> %i.cf, %i.bm
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, splat (float 2.000000e+00)
  %i.ci = select <8 x i1> %i.bq, <8 x i1> %i.bx, <8 x i1> zeroinitializer
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> %predphi83, %predphi85
  %i.ck = fdiv reassoc nsz arcp contract afn <8 x float> %i.cj, %i.bm
  %predphi90 = select nsz <8 x i1> %i.ce, <8 x float> %i.ch, <8 x float> %i.cd
  %predphi91 = select nsz <8 x i1> %i.ci, <8 x float> %i.ck, <8 x float> %predphi90
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %predphi91, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.cl)
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cm
  %predphi92 = select nsz <8 x i1> %i.bq, <8 x float> %i.cn, <8 x float> zeroinitializer ; 2 uses
  %predphi93 = select nsz <8 x i1> %i.bq, <8 x float> %i.bw, <8 x float> zeroinitializer
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %predphi88, %predphi92
  %i.cp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.co) ; 3 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cp, splat (float 5.000000e-01)
  %i.cr = fneg reassoc nsz arcp contract afn <8 x float> %wide.load
  %i.cs = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.cp
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cr
  %i.cu = fdiv reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cp
  %i.cv = select reassoc nsz arcp contract afn <8 x i1> %i.cq, <8 x float> %i.cu, <8 x float> %wide.load
  %i.cw = fsub reassoc nsz arcp contract afn <8 x float> %predphi92, %predphi88
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %i.cv, %i.cw
  %i.cy = fadd reassoc nsz arcp contract afn <8 x float> %predphi88, splat (float 1.000000e+00)
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cx
  %i.da = frem reassoc nsz arcp contract afn <8 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = fsub reassoc nsz arcp contract afn <8 x float> %predphi93, %predphi89
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %wide.load
  %i.dd = fadd reassoc nsz arcp contract afn <8 x float> %i.dc, %predphi89
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.df = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ai
  %i.dg = select <8 x i1> %i.an, <8 x float> %i.ai, <8 x float> %i.df
  %i.dh = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dg ; 2 uses
  %i.di = fsub reassoc nsz arcp contract afn <8 x float> %i.ai, %i.dh ; 5 uses
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.dh, splat (float 2.000000e+00) ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.da, splat (float 6.000000e+00) ; 2 uses
  %i.dl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.dk) ; 2 uses
  %i.dm = fsub reassoc nsz arcp contract afn <8 x float> %i.dk, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, %i.dj ; 2 uses
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %i.di, %i.dj ; 4 uses
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, %i.di ; 3 uses
  %i.dq = fsub reassoc nsz arcp contract afn <8 x float> %i.do, %i.dn ; 3 uses
  %i.dr = fptoui <8 x float> %i.dl to <8 x i64>   ; 9 uses
  %i.ds = icmp eq <8 x i64> %i.dr, zeroinitializer
  %i.dt = icmp eq <8 x i64> %i.dr, splat (i64 1)
  %i.du = icmp eq <8 x i64> %i.dr, splat (i64 2)
  %i.dv = icmp eq <8 x i64> %i.dr, splat (i64 3)
  %i.dw = icmp eq <8 x i64> %i.dr, splat (i64 4)
  %i.dx = icmp ugt <8 x i64> %i.dr, splat (i64 4)
  %i.dy = and <8 x i64> %i.dr, splat (i64 -2)
  %i.dz = icmp eq <8 x i64> %i.dy, splat (i64 2)
  %predphi94 = select <8 x i1> %i.dt, <8 x float> %i.dq, <8 x float> %i.do
  %predphi95 = select <8 x i1> %i.dz, <8 x float> %i.di, <8 x float> %predphi94
  %predphi96 = select <8 x i1> %i.dw, <8 x float> %i.dp, <8 x float> %predphi95 ; 3 uses
  %i.ea = icmp ugt <8 x i64> %i.dr, splat (i64 3)
  %predphi97 = select <8 x i1> %i.ds, <8 x float> %i.dp, <8 x float> %i.do
  %predphi98 = select <8 x i1> %i.dv, <8 x float> %i.dq, <8 x float> %predphi97
  %predphi99 = select <8 x i1> %i.ea, <8 x float> %i.di, <8 x float> %predphi98 ; 3 uses
  %i.eb = add <8 x i64> %i.dr, splat (i64 -3)
  %i.ec = icmp ult <8 x i64> %i.eb, splat (i64 2)
  %predphi100 = select <8 x i1> %i.du, <8 x float> %i.dp, <8 x float> %i.di
  %predphi101 = select <8 x i1> %i.ec, <8 x float> %i.do, <8 x float> %predphi100
  %predphi102 = select <8 x i1> %i.dx, <8 x float> %i.dq, <8 x float> %predphi101 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi96, zeroinitializer ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi96, splat (float 1.000000e+00)
  %i.ef = and <8 x i1> %i.ed, %i.ee
  %predphi103 = select reassoc nsz arcp contract afn <8 x i1> %i.ef, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi96
  %predphi104 = select reassoc nsz arcp contract afn <8 x i1> %i.ed, <8 x float> %predphi103, <8 x float> zeroinitializer
  %i.eg = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi99, zeroinitializer ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi99, splat (float 1.000000e+00)
  %i.ei = and <8 x i1> %i.eg, %i.eh
  %predphi105 = select reassoc nsz arcp contract afn <8 x i1> %i.ei, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi99
  %predphi106 = select reassoc nsz arcp contract afn <8 x i1> %i.eg, <8 x float> %predphi105, <8 x float> zeroinitializer
  %i.ej = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi102, zeroinitializer ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi102, splat (float 1.000000e+00)
  %i.el = and <8 x i1> %i.ej, %i.ek
  %predphi107 = select reassoc nsz arcp contract afn <8 x i1> %i.el, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi102
  %predphi108 = select reassoc nsz arcp contract afn <8 x i1> %i.ej, <8 x float> %predphi107, <8 x float> zeroinitializer
  %i.em = shufflevector <8 x float> %predphi104, <8 x float> %predphi106, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = shufflevector <8 x float> %predphi108, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.em, <16 x float> %i.en, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.de, align 4, !tbaa !39, !noalias !443
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %.lr.ph.preheader110, label %vector.body, !llvm.loop !447

._crit_edge:                                      ; preds = %_CLAMP_XYZ.exit36, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %_CLAMP_XYZ.exit36
  %.056 = phi i64 [ %i.iz, %_CLAMP_XYZ.exit36 ], [ %.056.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.02555 = phi i64 [ %i.ja, %_CLAMP_XYZ.exit36 ], [ %.02555.ph, %.lr.ph.preheader110 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.056
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !39 ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02555 ; 3 uses
  %.sroa.048.0.copyload = load float, ptr %i.er, align 4, !tbaa !39, !alias.scope !435 ; 3 uses
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.650.0.copyload = load float, ptr %.sroa.650.0..sroa_idx, align 4, !tbaa !39, !alias.scope !435 ; 3 uses
  %.sroa.952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.952.0.copyload = load float, ptr %.sroa.952.0..sroa_idx, align 4, !tbaa !39, !alias.scope !435 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02555 ; 3 uses
  %.sroa.043.0.copyload = load float, ptr %i.es, align 4, !tbaa !39, !alias.scope !439 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !39, !alias.scope !439 ; 3 uses
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.946.0.copyload = load float, ptr %.sroa.946.0..sroa_idx, align 4, !tbaa !39, !alias.scope !439 ; 3 uses
  %i.et = fcmp reassoc nsz arcp contract afn ult float %.sroa.048.0.copyload, 0.000000e+00
  br i1 %i.et, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.eu = fcmp reassoc nsz arcp contract afn ugt float %.sroa.048.0.copyload, 1.000000e+00
  br i1 %i.eu, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.ev = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %.sroa.048.0.copyload, %bb.c ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %.sroa.650.0.copyload, 0.000000e+00
  br i1 %i.ew, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ex = fcmp reassoc nsz arcp contract afn ugt float %.sroa.650.0.copyload, 1.000000e+00
  br i1 %i.ex, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ey = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.e ], [ %.sroa.650.0.copyload, %bb.f ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ult float %.sroa.952.0.copyload, 0.000000e+00
  br i1 %i.ez, label %_CLAMP_XYZ.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = fcmp reassoc nsz arcp contract afn ugt float %.sroa.952.0.copyload, 1.000000e+00
  br i1 %i.fa, label %_CLAMP_XYZ.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %_CLAMP_XYZ.exit

_CLAMP_XYZ.exit:                                  ; preds = %bb.i, %bb.h, %bb.g
  %i.fb = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.h ], [ %.sroa.952.0.copyload, %bb.i ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %i.fc = fcmp reassoc nsz arcp contract afn ult float %.sroa.043.0.copyload, 0.000000e+00
  br i1 %i.fc, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_CLAMP_XYZ.exit
  %i.fd = fcmp reassoc nsz arcp contract afn ugt float %.sroa.043.0.copyload, 1.000000e+00
  br i1 %i.fd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_CLAMP_XYZ.exit
  %i.fe = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.j ], [ %.sroa.043.0.copyload, %bb.k ], [ 0.000000e+00, %_CLAMP_XYZ.exit ] ; 5 uses
  %i.ff = fcmp reassoc nsz arcp contract afn ult float %.sroa.6.0.copyload, 0.000000e+00
  br i1 %i.ff, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fg = fcmp reassoc nsz arcp contract afn ugt float %.sroa.6.0.copyload, 1.000000e+00
  br i1 %i.fg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.fh = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %.sroa.6.0.copyload, %bb.n ], [ 0.000000e+00, %bb.l ] ; 5 uses
  %i.fi = fcmp reassoc nsz arcp contract afn ult float %.sroa.946.0.copyload, 0.000000e+00
  br i1 %i.fi, label %_CLAMP_XYZ.exit27, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = fcmp reassoc nsz arcp contract afn ugt float %.sroa.946.0.copyload, 1.000000e+00
  br i1 %i.fj, label %_CLAMP_XYZ.exit27, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_CLAMP_XYZ.exit27

_CLAMP_XYZ.exit27:                                ; preds = %bb.q, %bb.p, %bb.o
  %i.fk = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.p ], [ %.sroa.946.0.copyload, %bb.q ], [ 0.000000e+00, %bb.o ] ; 4 uses
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ev, float %i.ey)
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fl, float %i.fb) ; 2 uses
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ev, float %i.ey)
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fn, float %i.fb) ; 5 uses
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fo, %i.fm ; 5 uses
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fo, %i.fm ; 3 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, 5.000000e-01 ; 5 uses
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %i.fo, f0x358637BD
  %i.ft = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fp)
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.ft, f0x358637BD
  %or.cond.i = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %or.cond.i, label %bb.r, label %dt_RGB_2_HSL.exit

bb.r:                                             ; preds = %_CLAMP_XYZ.exit27
  %i.fv = fcmp reassoc nsz arcp contract afn olt float %i.fr, 5.000000e-01
  %i.fw = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.fq
  %.pn.i = select i1 %i.fv, float %i.fq, float %i.fw
  %.0.i = fdiv reassoc nsz arcp contract afn float %i.fp, %.pn.i
  %i.fx = fcmp reassoc nsz arcp contract afn oeq float %i.ev, %i.fo
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fy = fsub reassoc nsz arcp contract afn float %i.ey, %i.fb
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fy, %i.fp
  br label %_dt_RGB_2_Hue.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ga = fcmp reassoc nsz arcp contract afn oeq float %i.ey, %i.fo
  br i1 %i.ga, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fb, %i.ev
  %i.gc = fdiv reassoc nsz arcp contract afn float %i.gb, %i.fp
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ge = fsub reassoc nsz arcp contract afn float %i.ev, %i.ey
  %i.gf = fdiv reassoc nsz arcp contract afn float %i.ge, %i.fp
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

_dt_RGB_2_Hue.exit.i:                             ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i = phi nsz float [ %i.fz, %bb.s ], [ %i.gd, %bb.u ], [ %i.gg, %bb.v ]
  %i.gh = fmul reassoc nsz arcp contract afn float %.0.i.i, f0x3E2AAAAB ; 2 uses
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.gh)
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gh, %i.gi
  br label %dt_RGB_2_HSL.exit

dt_RGB_2_HSL.exit:                                ; preds = %_CLAMP_XYZ.exit27, %_dt_RGB_2_Hue.exit.i
  %.024.i = phi nsz float [ %i.gj, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_CLAMP_XYZ.exit27 ] ; 3 uses
  %.1.i = phi nsz float [ %.0.i, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_CLAMP_XYZ.exit27 ] ; 2 uses
  %i.gk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fe, float %i.fh)
  %i.gl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gk, float %i.fk) ; 2 uses
  %i.gm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fe, float %i.fh)
  %i.gn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gm, float %i.fk) ; 5 uses
  %i.go = fsub reassoc nsz arcp contract afn float %i.gn, %i.gl ; 5 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ogt float %i.gn, f0x358637BD
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.go)
  %i.gr = fcmp reassoc nsz arcp contract afn ogt float %i.gq, f0x358637BD
  %or.cond.i28 = select i1 %i.gp, i1 %i.gr, i1 false
  br i1 %or.cond.i28, label %bb.w, label %dt_RGB_2_HSL.exit35

bb.w:                                             ; preds = %dt_RGB_2_HSL.exit
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gn, %i.gl ; 3 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, 5.000000e-01
  %i.gu = fcmp reassoc nsz arcp contract afn olt float %i.gt, 5.000000e-01
  %i.gv = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.gs
  %.pn.i31 = select i1 %i.gu, float %i.gs, float %i.gv
  %.0.i32 = fdiv reassoc nsz arcp contract afn float %i.go, %.pn.i31
  %i.gw = fcmp reassoc nsz arcp contract afn oeq float %i.fe, %i.gn
  br i1 %i.gw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gx = fsub reassoc nsz arcp contract afn float %i.fh, %i.fk
  %i.gy = fdiv reassoc nsz arcp contract afn float %i.gx, %i.go
  br label %_dt_RGB_2_Hue.exit.i33

bb.y:                                             ; preds = %bb.w
  %i.gz = fcmp reassoc nsz arcp contract afn oeq float %i.fh, %i.gn
  br i1 %i.gz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ha = fsub reassoc nsz arcp contract afn float %i.fk, %i.fe
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.ha, %i.go
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i33

bb.aa:                                            ; preds = %bb.y
  %i.hd = fsub reassoc nsz arcp contract afn float %i.fe, %i.fh
  %i.he = fdiv reassoc nsz arcp contract afn float %i.hd, %i.go
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i33

_dt_RGB_2_Hue.exit.i33:                           ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i34 = phi nsz float [ %i.gy, %bb.x ], [ %i.hc, %bb.z ], [ %i.hf, %bb.aa ]
  %i.hg = fmul reassoc nsz arcp contract afn float %.0.i.i34, f0x3E2AAAAB ; 2 uses
  %i.hh = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hg)
  %i.hi = fsub reassoc nsz arcp contract afn float %i.hg, %i.hh
  br label %dt_RGB_2_HSL.exit35

dt_RGB_2_HSL.exit35:                              ; preds = %dt_RGB_2_HSL.exit, %_dt_RGB_2_Hue.exit.i33
  %.024.i29 = phi nsz float [ %i.hi, %_dt_RGB_2_Hue.exit.i33 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ] ; 2 uses
  %.1.i30 = phi nsz float [ %.0.i32, %_dt_RGB_2_Hue.exit.i33 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ]
  %i.hj = fsub reassoc nsz arcp contract afn float %.024.i, %.024.i29
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hj) ; 3 uses
  %i.hl = fcmp reassoc nsz arcp contract afn ogt float %i.hk, 5.000000e-01
  %i.hm = fneg reassoc nsz arcp contract afn float %i.eq
  %i.hn = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.hk
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %i.hm
  %i.hp = fdiv reassoc nsz arcp contract afn float %i.ho, %i.hk
  %i.hq = select reassoc nsz arcp contract afn i1 %i.hl, float %i.hp, float %i.eq
  %i.hr = fsub reassoc nsz arcp contract afn float %.024.i29, %.024.i
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.ht = fadd reassoc nsz arcp contract afn float %.024.i, 1.000000e+00
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.hs
  %i.hv = frem reassoc nsz arcp contract afn float %i.hu, 1.000000e+00
  %i.hw = fsub reassoc nsz arcp contract afn float %.1.i30, %.1.i
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.eq
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %.1.i
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02555 ; 4 uses
  %i.ia = fcmp reassoc nsz arcp contract afn olt float %i.fr, 5.000000e-01
  %i.ib = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fr
  %.sink14.i = select i1 %i.ia, float %i.fr, float %i.ib
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hy, %.sink14.i ; 2 uses
  %i.id = fsub reassoc nsz arcp contract afn float %i.fr, %i.ic ; 8 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ic, 2.000000e+00 ; 2 uses
  %i.if = fmul reassoc nsz arcp contract afn float %i.hv, 6.000000e+00 ; 2 uses
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.if) ; 2 uses
  %i.ih = fsub reassoc nsz arcp contract afn float %i.if, %i.ig
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.ie ; 2 uses
  %i.ij = fadd reassoc nsz arcp contract afn float %i.id, %i.ie ; 7 uses
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ii, %i.id ; 3 uses
  %i.il = fsub reassoc nsz arcp contract afn float %i.ij, %i.ii ; 3 uses
  %i.im = fptoui float %i.ig to i64
  switch i64 %i.im, label %bb.af [
    i64 0, label %dt_HSL_2_RGB.exit
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
  ]

bb.ab:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.ac:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.ad:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.ae:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.af:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

dt_HSL_2_RGB.exit:                                ; preds = %dt_RGB_2_HSL.exit35, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sink54.i.i = phi float [ %i.il, %bb.ab ], [ %i.id, %bb.ad ], [ %i.ij, %bb.af ], [ %i.ik, %bb.ae ], [ %i.id, %bb.ac ], [ %i.ij, %dt_RGB_2_HSL.exit35 ] ; 3 uses
  %.sink53.i.i = phi float [ %i.ij, %bb.ab ], [ %i.il, %bb.ad ], [ %i.id, %bb.af ], [ %i.id, %bb.ae ], [ %i.ij, %bb.ac ], [ %i.ik, %dt_RGB_2_HSL.exit35 ] ; 3 uses
  %.sink.i.i = phi float [ %i.id, %bb.ab ], [ %i.ij, %bb.ad ], [ %i.il, %bb.af ], [ %i.ij, %bb.ae ], [ %i.ik, %bb.ac ], [ %i.id, %dt_RGB_2_HSL.exit35 ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ip = fcmp reassoc nsz arcp contract afn ult float %.sink54.i.i, 0.000000e+00
  br i1 %i.ip, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %dt_HSL_2_RGB.exit
  %i.iq = fcmp reassoc nsz arcp contract afn ugt float %.sink54.i.i, 1.000000e+00
  br i1 %i.iq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %dt_HSL_2_RGB.exit
  %i.ir = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ag ], [ %.sink54.i.i, %bb.ah ], [ 0.000000e+00, %dt_HSL_2_RGB.exit ]
  store float %i.ir, ptr %i.hz, align 4, !tbaa !39, !alias.scope !448
  %i.is = fcmp reassoc nsz arcp contract afn ult float %.sink53.i.i, 0.000000e+00
  br i1 %i.is, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = fcmp reassoc nsz arcp contract afn ugt float %.sink53.i.i, 1.000000e+00
  br i1 %i.it, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.iu = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.aj ], [ %.sink53.i.i, %bb.ak ], [ 0.000000e+00, %bb.ai ]
  store float %i.iu, ptr %i.io, align 4, !tbaa !39, !alias.scope !448
  %i.iv = fcmp reassoc nsz arcp contract afn ult float %.sink.i.i, 0.000000e+00
  br i1 %i.iv, label %_CLAMP_XYZ.exit36, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iw = fcmp reassoc nsz arcp contract afn ugt float %.sink.i.i, 1.000000e+00
  br i1 %i.iw, label %_CLAMP_XYZ.exit36, label %bb.an

bb.an:                                            ; preds = %bb.am
  br label %_CLAMP_XYZ.exit36

_CLAMP_XYZ.exit36:                                ; preds = %bb.an, %bb.am, %bb.al
  %i.ix = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.am ], [ %.sink.i.i, %bb.an ], [ 0.000000e+00, %bb.al ]
  store float %i.ix, ptr %i.in, align 4, !tbaa !39, !alias.scope !448
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store float %i.eq, ptr %i.iy, align 4, !tbaa !39
  %i.iz = add nuw i64 %.056, 1                    ; 2 uses
  %i.ja = add i64 %.02555, 4
  %exitcond.not = icmp eq i64 %i.iz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !451
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_bounded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 5
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

.lr.ph.preheader39:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02224.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep27 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep28 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep27
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %2, %scevgep28
  %bound130 = icmp ult ptr %1, %scevgep
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 3                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 4, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.h, align 4, !tbaa !39 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <16 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !452 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec32 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec33 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec34 = load <16 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !455 ; 3 uses
  %strided.vec35 = shufflevector <16 x float> %wide.vec34, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec36 = shufflevector <16 x float> %wide.vec34, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec37 = shufflevector <16 x float> %wide.vec34, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.k = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec35, %strided.vec
  %i.l = fmul reassoc nsz arcp contract afn <4 x float> %i.k, %wide.load
  %i.m = fadd reassoc nsz arcp contract afn <4 x float> %i.l, %strided.vec
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.o = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec36, %strided.vec32
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %wide.load
  %i.q = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %strided.vec32
  %i.r = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec37, %strided.vec33
  %i.s = fmul reassoc nsz arcp contract afn <4 x float> %i.r, %wide.load
  %i.t = fadd reassoc nsz arcp contract afn <4 x float> %i.s, %strided.vec33
  %i.u = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.t, <4 x float> zeroinitializer)
  %i.v = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.u, <4 x float> splat (float 1.000000e+00))
  %i.w = shufflevector <4 x float> %i.m, <4 x float> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.w, <8 x float> zeroinitializer)
  %i.y = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.x, <8 x float> splat (float 1.000000e+00))
  %i.z = shufflevector <4 x float> %i.v, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.y, <8 x float> %i.z, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.n, align 4, !tbaa !39, !alias.scope !457, !noalias !459
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %.lr.ph.preheader39, label %vector.body, !llvm.loop !460

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.02125 = phi i64 [ %i.bk, %.lr.ph ], [ %.02125.ph, %.lr.ph.preheader39 ] ; 2 uses
  %.02224 = phi i64 [ %i.bl, %.lr.ph ], [ %.02224.ph, %.lr.ph.preheader39 ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02125
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !39 ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02224
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !39 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02224
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %i.ae
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ac
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ae
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 0.000000e+00)
  %i.al = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ak, float 1.000000e+00)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02224 ; 2 uses
  store float %i.al, ptr %i.am, align 4, !tbaa !39
  %i.an = or disjoint i64 %.02224, 1              ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !39 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39
  %i.as = fsub reassoc nsz arcp contract afn float %i.ar, %i.ap
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.ac
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.ap
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.au, float 0.000000e+00)
  %i.aw = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.av, float 1.000000e+00)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.an
  store float %i.aw, ptr %i.ax, align 4, !tbaa !39
  %i.ay = or disjoint i64 %.02224, 2              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !39 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ac
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ba
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bf, float 0.000000e+00)
  %i.bh = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.bg, float 1.000000e+00)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  store float %i.bh, ptr %i.bi, align 4, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store float %i.ac, ptr %i.bj, align 4, !tbaa !39
  %i.bk = add nuw i64 %.02125, 1                  ; 2 uses
  %i.bl = add i64 %.02224, 4
  %exitcond.not = icmp eq i64 %i.bk, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !461
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_coloradjust(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader109, label %vector.memcheck

.lr.ph.preheader109:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.055.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.02554.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep63 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep64 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep63
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound065 = icmp ult ptr %2, %scevgep64
  %bound166 = icmp ult ptr %1, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx = or i1 %found.conflict, %found.conflict67
  br i1 %conflict.rdx, label %.lr.ph.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !39 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !462 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec68 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec69 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec70 = load <32 x float>, ptr %i.j, align 4, !tbaa !39, !alias.scope !466 ; 3 uses
  %strided.vec71 = shufflevector <32 x float> %wide.vec70, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec72 = shufflevector <32 x float> %wide.vec70, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec73 = shufflevector <32 x float> %wide.vec70, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec, zeroinitializer ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.m = and <8 x i1> %i.k, %i.l
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.m, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec
  %predphi74 = select reassoc nsz arcp contract afn <8 x i1> %i.k, <8 x float> %predphi, <8 x float> zeroinitializer ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec68, zeroinitializer ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec68, splat (float 1.000000e+00)
  %i.p = and <8 x i1> %i.n, %i.o
  %predphi75 = select reassoc nsz arcp contract afn <8 x i1> %i.p, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec68
  %predphi76 = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %predphi75, <8 x float> zeroinitializer ; 5 uses
  %i.q = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec69, zeroinitializer ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec69, splat (float 1.000000e+00)
  %i.s = and <8 x i1> %i.q, %i.r
  %predphi77 = select reassoc nsz arcp contract afn <8 x i1> %i.s, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec69
  %predphi78 = select reassoc nsz arcp contract afn <8 x i1> %i.q, <8 x float> %predphi77, <8 x float> zeroinitializer ; 4 uses
  %i.t = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec71, zeroinitializer ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec71, splat (float 1.000000e+00)
  %i.v = and <8 x i1> %i.t, %i.u
  %predphi79 = select reassoc nsz arcp contract afn <8 x i1> %i.v, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec71
  %predphi80 = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %predphi79, <8 x float> zeroinitializer ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec72, zeroinitializer ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec72, splat (float 1.000000e+00)
  %i.y = and <8 x i1> %i.w, %i.x
  %predphi81 = select reassoc nsz arcp contract afn <8 x i1> %i.y, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec72
  %predphi82 = select reassoc nsz arcp contract afn <8 x i1> %i.w, <8 x float> %predphi81, <8 x float> zeroinitializer ; 5 uses
  %i.z = fcmp reassoc nsz arcp contract afn oge <8 x float> %strided.vec73, zeroinitializer ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec73, splat (float 1.000000e+00)
  %i.ab = and <8 x i1> %i.z, %i.aa
  %predphi83 = select reassoc nsz arcp contract afn <8 x i1> %i.ab, <8 x float> splat (float 1.000000e+00), <8 x float> %strided.vec73
  %predphi84 = select reassoc nsz arcp contract afn <8 x i1> %i.z, <8 x float> %predphi83, <8 x float> zeroinitializer ; 4 uses
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %predphi74, <8 x float> %predphi76)
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ac, <8 x float> %predphi78) ; 2 uses
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi74, <8 x float> %predphi76)
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ae, <8 x float> %predphi78) ; 5 uses
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.ad ; 5 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.af, splat (float f0x358637BD)
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ag)
  %i.aj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ai, splat (float f0x358637BD)
  %i.ak = select <8 x i1> %i.ah, <8 x i1> %i.aj, <8 x i1> zeroinitializer ; 4 uses
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.af, %i.ad ; 3 uses
  %i.am = fmul reassoc nsz arcp contract afn <8 x float> %i.al, splat (float 5.000000e-01)
  %i.an = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.al
  %i.ap = select <8 x i1> %i.an, <8 x float> %i.al, <8 x float> %i.ao
  %i.aq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ap
  %i.ar = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi74, %i.af ; 2 uses
  %i.as = xor <8 x i1> %i.ar, splat (i1 true)
  %i.at = select <8 x i1> %i.ak, <8 x i1> %i.as, <8 x i1> zeroinitializer
  %i.au = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi76, %i.af
  %i.av = fsub reassoc nsz arcp contract afn <8 x float> %predphi74, %predphi76
  %i.aw = fdiv reassoc nsz arcp contract afn <8 x float> %i.av, %i.ag
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, splat (float 4.000000e+00)
  %i.ay = select <8 x i1> %i.at, <8 x i1> %i.au, <8 x i1> zeroinitializer
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %predphi78, %predphi74
  %i.ba = fdiv reassoc nsz arcp contract afn <8 x float> %i.az, %i.ag
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = select <8 x i1> %i.ak, <8 x i1> %i.ar, <8 x i1> zeroinitializer
  %i.bd = fsub reassoc nsz arcp contract afn <8 x float> %predphi76, %predphi78
  %i.be = fdiv reassoc nsz arcp contract afn <8 x float> %i.bd, %i.ag
  %predphi85 = select nsz <8 x i1> %i.ay, <8 x float> %i.bb, <8 x float> %i.ax
  %predphi86 = select nsz <8 x i1> %i.bc, <8 x float> %i.be, <8 x float> %predphi85
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %predphi86, splat (float f0x3E2AAAAB) ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bf)
  %i.bh = fsub reassoc nsz arcp contract afn <8 x float> %i.bf, %i.bg
  %predphi87 = select nsz <8 x i1> %i.ak, <8 x float> %i.bh, <8 x float> zeroinitializer ; 3 uses
  %predphi88 = select nsz <8 x i1> %i.ak, <8 x float> %i.aq, <8 x float> zeroinitializer ; 2 uses
  %i.bi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %predphi80, <8 x float> %predphi82)
  %i.bj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bi, <8 x float> %predphi84) ; 2 uses
  %i.bk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %predphi80, <8 x float> %predphi82)
  %i.bl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> %predphi84) ; 5 uses
  %i.bm = fsub reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bj ; 5 uses
  %i.bn = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bj ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, splat (float 5.000000e-01) ; 4 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bl, splat (float f0x358637BD)
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bm)
  %i.br = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bq, splat (float f0x358637BD)
  %i.bs = select <8 x i1> %i.bp, <8 x i1> %i.br, <8 x i1> zeroinitializer ; 4 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bo, splat (float 5.000000e-01) ; 2 uses
  %i.bu = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.bn
  %i.bv = select <8 x i1> %i.bt, <8 x float> %i.bn, <8 x float> %i.bu
  %i.bw = fdiv reassoc nsz arcp contract afn <8 x float> %i.bm, %i.bv
  %i.bx = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi80, %i.bl ; 2 uses
  %i.by = xor <8 x i1> %i.bx, splat (i1 true)
  %i.bz = select <8 x i1> %i.bs, <8 x i1> %i.by, <8 x i1> zeroinitializer
  %i.ca = fcmp reassoc nsz arcp contract afn oeq <8 x float> %predphi82, %i.bl
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %predphi80, %predphi82
  %i.cc = fdiv reassoc nsz arcp contract afn <8 x float> %i.cb, %i.bm
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, splat (float 4.000000e+00)
  %i.ce = select <8 x i1> %i.bz, <8 x i1> %i.ca, <8 x i1> zeroinitializer
  %i.cf = fsub reassoc nsz arcp contract afn <8 x float> %predphi84, %predphi80
  %i.cg = fdiv reassoc nsz arcp contract afn <8 x float> %i.cf, %i.bm
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, splat (float 2.000000e+00)
  %i.ci = select <8 x i1> %i.bs, <8 x i1> %i.bx, <8 x i1> zeroinitializer
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> %predphi82, %predphi84
  %i.ck = fdiv reassoc nsz arcp contract afn <8 x float> %i.cj, %i.bm
  %predphi89 = select nsz <8 x i1> %i.ce, <8 x float> %i.ch, <8 x float> %i.cd
  %predphi90 = select nsz <8 x i1> %i.ci, <8 x float> %i.ck, <8 x float> %predphi89
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %predphi90, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.cl)
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cm
  %predphi91 = select nsz <8 x i1> %i.bs, <8 x float> %i.cn, <8 x float> zeroinitializer ; 2 uses
  %predphi92 = select nsz <8 x i1> %i.bs, <8 x float> %i.bw, <8 x float> zeroinitializer
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %predphi87, %predphi91
  %i.cp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.co) ; 3 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cp, splat (float 5.000000e-01)
  %i.cr = fneg reassoc nsz arcp contract afn <8 x float> %wide.load
  %i.cs = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.cp
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cr
  %i.cu = fdiv reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cp
  %i.cv = select reassoc nsz arcp contract afn <8 x i1> %i.cq, <8 x float> %i.cu, <8 x float> %wide.load
  %i.cw = fsub reassoc nsz arcp contract afn <8 x float> %predphi91, %predphi87
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %i.cv, %i.cw
  %i.cy = fadd reassoc nsz arcp contract afn <8 x float> %predphi87, splat (float 1.000000e+00)
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cx
  %i.da = frem reassoc nsz arcp contract afn <8 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = fsub reassoc nsz arcp contract afn <8 x float> %predphi92, %predphi88
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %wide.load
  %i.dd = fadd reassoc nsz arcp contract afn <8 x float> %i.dc, %predphi88
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.df = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.bo
  %i.dg = select <8 x i1> %i.bt, <8 x float> %i.bo, <8 x float> %i.df
  %i.dh = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dg ; 2 uses
  %i.di = fsub reassoc nsz arcp contract afn <8 x float> %i.bo, %i.dh ; 5 uses
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.dh, splat (float 2.000000e+00) ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.da, splat (float 6.000000e+00) ; 2 uses
  %i.dl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.dk) ; 2 uses
  %i.dm = fsub reassoc nsz arcp contract afn <8 x float> %i.dk, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, %i.dj ; 2 uses
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %i.di, %i.dj ; 4 uses
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, %i.di ; 3 uses
  %i.dq = fsub reassoc nsz arcp contract afn <8 x float> %i.do, %i.dn ; 3 uses
  %i.dr = fptoui <8 x float> %i.dl to <8 x i64>   ; 9 uses
  %i.ds = icmp eq <8 x i64> %i.dr, zeroinitializer
  %i.dt = icmp eq <8 x i64> %i.dr, splat (i64 1)
  %i.du = icmp eq <8 x i64> %i.dr, splat (i64 2)
  %i.dv = icmp eq <8 x i64> %i.dr, splat (i64 3)
  %i.dw = icmp eq <8 x i64> %i.dr, splat (i64 4)
  %i.dx = icmp ugt <8 x i64> %i.dr, splat (i64 4)
  %i.dy = and <8 x i64> %i.dr, splat (i64 -2)
  %i.dz = icmp eq <8 x i64> %i.dy, splat (i64 2)
  %predphi93 = select <8 x i1> %i.dt, <8 x float> %i.dq, <8 x float> %i.do
  %predphi94 = select <8 x i1> %i.dz, <8 x float> %i.di, <8 x float> %predphi93
  %predphi95 = select <8 x i1> %i.dw, <8 x float> %i.dp, <8 x float> %predphi94 ; 3 uses
  %i.ea = icmp ugt <8 x i64> %i.dr, splat (i64 3)
  %predphi96 = select <8 x i1> %i.ds, <8 x float> %i.dp, <8 x float> %i.do
  %predphi97 = select <8 x i1> %i.dv, <8 x float> %i.dq, <8 x float> %predphi96
  %predphi98 = select <8 x i1> %i.ea, <8 x float> %i.di, <8 x float> %predphi97 ; 3 uses
  %i.eb = add <8 x i64> %i.dr, splat (i64 -3)
  %i.ec = icmp ult <8 x i64> %i.eb, splat (i64 2)
  %predphi99 = select <8 x i1> %i.du, <8 x float> %i.dp, <8 x float> %i.di
  %predphi100 = select <8 x i1> %i.ec, <8 x float> %i.do, <8 x float> %predphi99
  %predphi101 = select <8 x i1> %i.dx, <8 x float> %i.dq, <8 x float> %predphi100 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi95, zeroinitializer ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi95, splat (float 1.000000e+00)
  %i.ef = and <8 x i1> %i.ed, %i.ee
  %predphi102 = select reassoc nsz arcp contract afn <8 x i1> %i.ef, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi95
  %predphi103 = select reassoc nsz arcp contract afn <8 x i1> %i.ed, <8 x float> %predphi102, <8 x float> zeroinitializer
  %i.eg = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi98, zeroinitializer ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi98, splat (float 1.000000e+00)
  %i.ei = and <8 x i1> %i.eg, %i.eh
  %predphi104 = select reassoc nsz arcp contract afn <8 x i1> %i.ei, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi98
  %predphi105 = select reassoc nsz arcp contract afn <8 x i1> %i.eg, <8 x float> %predphi104, <8 x float> zeroinitializer
  %i.ej = fcmp reassoc nsz arcp contract afn oge <8 x float> %predphi101, zeroinitializer ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ugt <8 x float> %predphi101, splat (float 1.000000e+00)
  %i.el = and <8 x i1> %i.ej, %i.ek
  %predphi106 = select reassoc nsz arcp contract afn <8 x i1> %i.el, <8 x float> splat (float 1.000000e+00), <8 x float> %predphi101
  %predphi107 = select reassoc nsz arcp contract afn <8 x i1> %i.ej, <8 x float> %predphi106, <8 x float> zeroinitializer
  %i.em = shufflevector <8 x float> %predphi103, <8 x float> %predphi105, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = shufflevector <8 x float> %predphi107, <8 x float> %wide.load, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.em, <16 x float> %i.en, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.de, align 4, !tbaa !39, !noalias !470
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %.lr.ph.preheader109, label %vector.body, !llvm.loop !474

._crit_edge:                                      ; preds = %_CLAMP_XYZ.exit36, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %_CLAMP_XYZ.exit36
  %.055 = phi i64 [ %i.iz, %_CLAMP_XYZ.exit36 ], [ %.055.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.02554 = phi i64 [ %i.ja, %_CLAMP_XYZ.exit36 ], [ %.02554.ph, %.lr.ph.preheader109 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.055
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !39 ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02554 ; 3 uses
  %.sroa.047.0.copyload = load float, ptr %i.er, align 4, !tbaa !39, !alias.scope !462 ; 3 uses
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.649.0.copyload = load float, ptr %.sroa.649.0..sroa_idx, align 4, !tbaa !39, !alias.scope !462 ; 3 uses
  %.sroa.951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.951.0.copyload = load float, ptr %.sroa.951.0..sroa_idx, align 4, !tbaa !39, !alias.scope !462 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02554 ; 3 uses
  %.sroa.043.0.copyload = load float, ptr %i.es, align 4, !tbaa !39, !alias.scope !466 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !39, !alias.scope !466 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !39, !alias.scope !466 ; 3 uses
  %i.et = fcmp reassoc nsz arcp contract afn ult float %.sroa.047.0.copyload, 0.000000e+00
  br i1 %i.et, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.eu = fcmp reassoc nsz arcp contract afn ugt float %.sroa.047.0.copyload, 1.000000e+00
  br i1 %i.eu, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.ev = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.b ], [ %.sroa.047.0.copyload, %bb.c ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %.sroa.649.0.copyload, 0.000000e+00
  br i1 %i.ew, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ex = fcmp reassoc nsz arcp contract afn ugt float %.sroa.649.0.copyload, 1.000000e+00
  br i1 %i.ex, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ey = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.e ], [ %.sroa.649.0.copyload, %bb.f ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ult float %.sroa.951.0.copyload, 0.000000e+00
  br i1 %i.ez, label %_CLAMP_XYZ.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = fcmp reassoc nsz arcp contract afn ugt float %.sroa.951.0.copyload, 1.000000e+00
  br i1 %i.fa, label %_CLAMP_XYZ.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %_CLAMP_XYZ.exit

_CLAMP_XYZ.exit:                                  ; preds = %bb.i, %bb.h, %bb.g
  %i.fb = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.h ], [ %.sroa.951.0.copyload, %bb.i ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %i.fc = fcmp reassoc nsz arcp contract afn ult float %.sroa.043.0.copyload, 0.000000e+00
  br i1 %i.fc, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_CLAMP_XYZ.exit
  %i.fd = fcmp reassoc nsz arcp contract afn ugt float %.sroa.043.0.copyload, 1.000000e+00
  br i1 %i.fd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %_CLAMP_XYZ.exit
  %i.fe = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.j ], [ %.sroa.043.0.copyload, %bb.k ], [ 0.000000e+00, %_CLAMP_XYZ.exit ] ; 5 uses
  %i.ff = fcmp reassoc nsz arcp contract afn ult float %.sroa.6.0.copyload, 0.000000e+00
  br i1 %i.ff, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fg = fcmp reassoc nsz arcp contract afn ugt float %.sroa.6.0.copyload, 1.000000e+00
  br i1 %i.fg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.fh = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %.sroa.6.0.copyload, %bb.n ], [ 0.000000e+00, %bb.l ] ; 5 uses
  %i.fi = fcmp reassoc nsz arcp contract afn ult float %.sroa.9.0.copyload, 0.000000e+00
  br i1 %i.fi, label %_CLAMP_XYZ.exit27, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = fcmp reassoc nsz arcp contract afn ugt float %.sroa.9.0.copyload, 1.000000e+00
  br i1 %i.fj, label %_CLAMP_XYZ.exit27, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %_CLAMP_XYZ.exit27

_CLAMP_XYZ.exit27:                                ; preds = %bb.q, %bb.p, %bb.o
  %i.fk = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.p ], [ %.sroa.9.0.copyload, %bb.q ], [ 0.000000e+00, %bb.o ] ; 4 uses
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ev, float %i.ey)
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fl, float %i.fb) ; 2 uses
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ev, float %i.ey)
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fn, float %i.fb) ; 5 uses
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fo, %i.fm ; 5 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %i.fo, f0x358637BD
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fp)
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %i.fr, f0x358637BD
  %or.cond.i = select i1 %i.fq, i1 %i.fs, i1 false
  br i1 %or.cond.i, label %bb.r, label %dt_RGB_2_HSL.exit

bb.r:                                             ; preds = %_CLAMP_XYZ.exit27
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fo, %i.fm ; 3 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, 5.000000e-01
  %i.fv = fcmp reassoc nsz arcp contract afn olt float %i.fu, 5.000000e-01
  %i.fw = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.ft
  %.pn.i = select i1 %i.fv, float %i.ft, float %i.fw
  %.0.i = fdiv reassoc nsz arcp contract afn float %i.fp, %.pn.i
  %i.fx = fcmp reassoc nsz arcp contract afn oeq float %i.ev, %i.fo
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fy = fsub reassoc nsz arcp contract afn float %i.ey, %i.fb
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fy, %i.fp
  br label %_dt_RGB_2_Hue.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ga = fcmp reassoc nsz arcp contract afn oeq float %i.ey, %i.fo
  br i1 %i.ga, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fb, %i.ev
  %i.gc = fdiv reassoc nsz arcp contract afn float %i.gb, %i.fp
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ge = fsub reassoc nsz arcp contract afn float %i.ev, %i.ey
  %i.gf = fdiv reassoc nsz arcp contract afn float %i.ge, %i.fp
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

_dt_RGB_2_Hue.exit.i:                             ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i = phi nsz float [ %i.fz, %bb.s ], [ %i.gd, %bb.u ], [ %i.gg, %bb.v ]
  %i.gh = fmul reassoc nsz arcp contract afn float %.0.i.i, f0x3E2AAAAB ; 2 uses
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.gh)
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gh, %i.gi
  br label %dt_RGB_2_HSL.exit

dt_RGB_2_HSL.exit:                                ; preds = %_CLAMP_XYZ.exit27, %_dt_RGB_2_Hue.exit.i
  %.024.i = phi nsz float [ %i.gj, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_CLAMP_XYZ.exit27 ] ; 3 uses
  %.1.i = phi nsz float [ %.0.i, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_CLAMP_XYZ.exit27 ] ; 2 uses
  %i.gk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fe, float %i.fh)
  %i.gl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gk, float %i.fk) ; 2 uses
  %i.gm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fe, float %i.fh)
  %i.gn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gm, float %i.fk) ; 5 uses
  %i.go = fsub reassoc nsz arcp contract afn float %i.gn, %i.gl ; 5 uses
  %i.gp = fadd reassoc nsz arcp contract afn float %i.gn, %i.gl ; 3 uses
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, 5.000000e-01 ; 5 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt float %i.gn, f0x358637BD
  %i.gs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.go)
  %i.gt = fcmp reassoc nsz arcp contract afn ogt float %i.gs, f0x358637BD
  %or.cond.i28 = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %or.cond.i28, label %bb.w, label %dt_RGB_2_HSL.exit35

bb.w:                                             ; preds = %dt_RGB_2_HSL.exit
  %i.gu = fcmp reassoc nsz arcp contract afn olt float %i.gq, 5.000000e-01
  %i.gv = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.gp
  %.pn.i31 = select i1 %i.gu, float %i.gp, float %i.gv
  %.0.i32 = fdiv reassoc nsz arcp contract afn float %i.go, %.pn.i31
  %i.gw = fcmp reassoc nsz arcp contract afn oeq float %i.fe, %i.gn
  br i1 %i.gw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gx = fsub reassoc nsz arcp contract afn float %i.fh, %i.fk
  %i.gy = fdiv reassoc nsz arcp contract afn float %i.gx, %i.go
  br label %_dt_RGB_2_Hue.exit.i33

bb.y:                                             ; preds = %bb.w
  %i.gz = fcmp reassoc nsz arcp contract afn oeq float %i.fh, %i.gn
  br i1 %i.gz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ha = fsub reassoc nsz arcp contract afn float %i.fk, %i.fe
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.ha, %i.go
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i33

bb.aa:                                            ; preds = %bb.y
  %i.hd = fsub reassoc nsz arcp contract afn float %i.fe, %i.fh
  %i.he = fdiv reassoc nsz arcp contract afn float %i.hd, %i.go
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i33

_dt_RGB_2_Hue.exit.i33:                           ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i34 = phi nsz float [ %i.gy, %bb.x ], [ %i.hc, %bb.z ], [ %i.hf, %bb.aa ]
  %i.hg = fmul reassoc nsz arcp contract afn float %.0.i.i34, f0x3E2AAAAB ; 2 uses
  %i.hh = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hg)
  %i.hi = fsub reassoc nsz arcp contract afn float %i.hg, %i.hh
  br label %dt_RGB_2_HSL.exit35

dt_RGB_2_HSL.exit35:                              ; preds = %dt_RGB_2_HSL.exit, %_dt_RGB_2_Hue.exit.i33
  %.024.i29 = phi nsz float [ %i.hi, %_dt_RGB_2_Hue.exit.i33 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ] ; 2 uses
  %.1.i30 = phi nsz float [ %.0.i32, %_dt_RGB_2_Hue.exit.i33 ], [ 0.000000e+00, %dt_RGB_2_HSL.exit ]
  %i.hj = fsub reassoc nsz arcp contract afn float %.024.i, %.024.i29
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hj) ; 3 uses
  %i.hl = fcmp reassoc nsz arcp contract afn ogt float %i.hk, 5.000000e-01
  %i.hm = fneg reassoc nsz arcp contract afn float %i.eq
  %i.hn = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.hk
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %i.hm
  %i.hp = fdiv reassoc nsz arcp contract afn float %i.ho, %i.hk
  %i.hq = select reassoc nsz arcp contract afn i1 %i.hl, float %i.hp, float %i.eq
  %i.hr = fsub reassoc nsz arcp contract afn float %.024.i29, %.024.i
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.ht = fadd reassoc nsz arcp contract afn float %.024.i, 1.000000e+00
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.hs
  %i.hv = frem reassoc nsz arcp contract afn float %i.hu, 1.000000e+00
  %i.hw = fsub reassoc nsz arcp contract afn float %.1.i30, %.1.i
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.eq
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %.1.i
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02554 ; 4 uses
  %i.ia = fcmp reassoc nsz arcp contract afn olt float %i.gq, 5.000000e-01
  %i.ib = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gq
  %.sink14.i = select i1 %i.ia, float %i.gq, float %i.ib
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hy, %.sink14.i ; 2 uses
  %i.id = fsub reassoc nsz arcp contract afn float %i.gq, %i.ic ; 8 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ic, 2.000000e+00 ; 2 uses
  %i.if = fmul reassoc nsz arcp contract afn float %i.hv, 6.000000e+00 ; 2 uses
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.if) ; 2 uses
  %i.ih = fsub reassoc nsz arcp contract afn float %i.if, %i.ig
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.ie ; 2 uses
  %i.ij = fadd reassoc nsz arcp contract afn float %i.id, %i.ie ; 7 uses
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ii, %i.id ; 3 uses
  %i.il = fsub reassoc nsz arcp contract afn float %i.ij, %i.ii ; 3 uses
  %i.im = fptoui float %i.ig to i64
  switch i64 %i.im, label %bb.af [
    i64 0, label %dt_HSL_2_RGB.exit
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
  ]

bb.ab:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.ac:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.ad:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.ae:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

bb.af:                                            ; preds = %dt_RGB_2_HSL.exit35
  br label %dt_HSL_2_RGB.exit

dt_HSL_2_RGB.exit:                                ; preds = %dt_RGB_2_HSL.exit35, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sink54.i.i = phi float [ %i.il, %bb.ab ], [ %i.id, %bb.ad ], [ %i.ij, %bb.af ], [ %i.ik, %bb.ae ], [ %i.id, %bb.ac ], [ %i.ij, %dt_RGB_2_HSL.exit35 ] ; 3 uses
  %.sink53.i.i = phi float [ %i.ij, %bb.ab ], [ %i.il, %bb.ad ], [ %i.id, %bb.af ], [ %i.id, %bb.ae ], [ %i.ij, %bb.ac ], [ %i.ik, %dt_RGB_2_HSL.exit35 ] ; 3 uses
  %.sink.i.i = phi float [ %i.id, %bb.ab ], [ %i.ij, %bb.ad ], [ %i.il, %bb.af ], [ %i.ij, %bb.ae ], [ %i.ik, %bb.ac ], [ %i.id, %dt_RGB_2_HSL.exit35 ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ip = fcmp reassoc nsz arcp contract afn ult float %.sink54.i.i, 0.000000e+00
  br i1 %i.ip, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %dt_HSL_2_RGB.exit
  %i.iq = fcmp reassoc nsz arcp contract afn ugt float %.sink54.i.i, 1.000000e+00
  br i1 %i.iq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %dt_HSL_2_RGB.exit
  %i.ir = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ag ], [ %.sink54.i.i, %bb.ah ], [ 0.000000e+00, %dt_HSL_2_RGB.exit ]
  store float %i.ir, ptr %i.hz, align 4, !tbaa !39, !alias.scope !475
  %i.is = fcmp reassoc nsz arcp contract afn ult float %.sink53.i.i, 0.000000e+00
  br i1 %i.is, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.it = fcmp reassoc nsz arcp contract afn ugt float %.sink53.i.i, 1.000000e+00
  br i1 %i.it, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.iu = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.aj ], [ %.sink53.i.i, %bb.ak ], [ 0.000000e+00, %bb.ai ]
  store float %i.iu, ptr %i.io, align 4, !tbaa !39, !alias.scope !475
  %i.iv = fcmp reassoc nsz arcp contract afn ult float %.sink.i.i, 0.000000e+00
  br i1 %i.iv, label %_CLAMP_XYZ.exit36, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iw = fcmp reassoc nsz arcp contract afn ugt float %.sink.i.i, 1.000000e+00
  br i1 %i.iw, label %_CLAMP_XYZ.exit36, label %bb.an

bb.an:                                            ; preds = %bb.am
  br label %_CLAMP_XYZ.exit36

_CLAMP_XYZ.exit36:                                ; preds = %bb.an, %bb.am, %bb.al
  %i.ix = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.am ], [ %.sink.i.i, %bb.an ], [ 0.000000e+00, %bb.al ]
  store float %i.ix, ptr %i.in, align 4, !tbaa !39, !alias.scope !475
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store float %i.eq, ptr %i.iy, align 4, !tbaa !39
  %i.iz = add nuw i64 %.055, 1                    ; 2 uses
  %i.ja = add i64 %.02554, 4
  %exitcond.not = icmp eq i64 %i.iz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !478
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_HSV_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader56, label %vector.memcheck

.lr.ph.preheader56:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.027.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.01626.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.f, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.a   ; 2 uses
  %i.b = add i64 %i.a, -4                         ; 2 uses
  %scevgep32 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep32
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound034 = icmp ult ptr %2, %scevgep33
  %bound135 = icmp ult ptr %1, %scevgep
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx = or i1 %found.conflict, %found.conflict36
  br i1 %conflict.rdx, label %.lr.ph.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.c = and i64 %4, 7                            ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = select i1 %i.d, i64 8, i64 %i.c
  %n.vec = sub i64 %4, %i.e                       ; 3 uses
  %i.f = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 2                        ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <8 x float>, ptr %i.h, align 4, !tbaa !39 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %wide.vec = load <32 x float>, ptr %i.i, align 4, !tbaa !39, !alias.scope !479 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec37 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec38 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  %i.j = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec37)
  %i.k = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.j, <8 x float> %strided.vec38)
  %i.l = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec37)
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.l, <8 x float> %strided.vec38) ; 7 uses
  %i.n = fsub reassoc nsz arcp contract afn <8 x float> %i.m, %i.k ; 5 uses
  %i.o = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.m)
  %i.p = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.o, splat (float f0x358637BD)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.n)
  %i.r = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.q, splat (float f0x358637BD)
  %i.s = select <8 x i1> %i.p, <8 x i1> %i.r, <8 x i1> zeroinitializer ; 4 uses
  %i.t = fdiv reassoc nsz arcp contract afn <8 x float> %i.n, %i.m
  %i.u = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec, %i.m ; 2 uses
  %i.v = xor <8 x i1> %i.u, splat (i1 true)
  %i.w = select <8 x i1> %i.s, <8 x i1> %i.v, <8 x i1> zeroinitializer
  %i.x = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec37, %i.m
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec37
  %i.z = fdiv reassoc nsz arcp contract afn <8 x float> %i.y, %i.n
  %i.aa = fadd reassoc nsz arcp contract afn <8 x float> %i.z, splat (float 4.000000e+00)
  %i.ab = select <8 x i1> %i.w, <8 x i1> %i.x, <8 x i1> zeroinitializer
  %i.ac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec38, %strided.vec
  %i.ad = fdiv reassoc nsz arcp contract afn <8 x float> %i.ac, %i.n
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, splat (float 2.000000e+00)
  %i.af = select <8 x i1> %i.s, <8 x i1> %i.u, <8 x i1> zeroinitializer
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec37, %strided.vec38
  %i.ah = fdiv reassoc nsz arcp contract afn <8 x float> %i.ag, %i.n
  %predphi = select nsz <8 x i1> %i.ab, <8 x float> %i.ae, <8 x float> %i.aa
  %predphi39 = select nsz <8 x i1> %i.af, <8 x float> %i.ah, <8 x float> %predphi
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %predphi39, splat (float f0x3E2AAAAB) ; 2 uses
  %i.aj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ai)
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, splat (float 6.000000e+00)
  %predphi40 = select nsz <8 x i1> %i.s, <8 x float> %i.t, <8 x float> zeroinitializer
  %predphi41 = select <8 x i1> %i.s, <8 x float> %i.al, <8 x float> zeroinitializer ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %wide.vec42 = load <32 x float>, ptr %i.am, align 4, !tbaa !39, !alias.scope !482 ; 3 uses
  %strided.vec43 = shufflevector <32 x float> %wide.vec42, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec44 = shufflevector <32 x float> %wide.vec42, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec45 = shufflevector <32 x float> %wide.vec42, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec43, <8 x float> %strided.vec44)
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.an, <8 x float> %strided.vec45)
  %i.ap = fsub reassoc nsz arcp contract afn <8 x float> %i.ao, %i.m
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.ap, %wide.load
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %i.m ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %i.ar, %predphi40 ; 2 uses
  %i.au = fsub reassoc nsz arcp contract afn <8 x float> %i.ar, %i.at ; 4 uses
  %i.av = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %predphi41) ; 2 uses
  %i.aw = fsub reassoc nsz arcp contract afn <8 x float> %predphi41, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.at, %i.aw ; 2 uses
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %i.ax, %i.au ; 3 uses
  %i.az = fsub reassoc nsz arcp contract afn <8 x float> %i.ar, %i.ax ; 3 uses
  %i.ba = fptoui <8 x float> %i.av to <8 x i64>   ; 9 uses
  %i.bb = icmp eq <8 x i64> %i.ba, zeroinitializer
  %i.bc = icmp eq <8 x i64> %i.ba, splat (i64 1)
  %i.bd = icmp eq <8 x i64> %i.ba, splat (i64 2)
  %i.be = icmp eq <8 x i64> %i.ba, splat (i64 3)
  %i.bf = icmp eq <8 x i64> %i.ba, splat (i64 4)
end_hunk_0
