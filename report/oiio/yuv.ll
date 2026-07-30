inline.NumInlined: 59
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@YuvToRgbRow:bb.a
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.dm = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 1
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 2
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 3
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 4
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 5
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 6
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 7
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 8
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 9
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 10
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 11
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 12
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 13
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 14
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 15
  %i.ec = zext <16 x i8> %i.eb to <16 x i32>
  %i.ed = mul nuw nsw <16 x i32> %i.ec, splat (i32 19077)
  %i.ee = lshr <16 x i32> %i.ed, splat (i32 8)    ; 3 uses
  %i.ef = add nuw nsw <16 x i32> %i.ee, %i.bq     ; 2 uses
  %i.eg = add nsw <16 x i32> %i.ef, splat (i32 -14234) ; 2 uses
  %i.eh = sub nsw <16 x i32> %i.ee, %i.by         ; 2 uses
  %i.ei = add nsw <16 x i32> %i.eh, splat (i32 8708) ; 2 uses
  %i.ej = icmp ult <16 x i32> %i.ei, splat (i32 16384)
  %i.ek = lshr <16 x i32> %i.ei, splat (i32 6)
  %i.el = icmp slt <16 x i32> %i.eh, splat (i32 -8708)
  %i.em = select <16 x i1> %i.el, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.en = select <16 x i1> %i.ej, <16 x i32> %i.ek, <16 x i32> %i.em
  %i.eo = trunc <16 x i32> %i.en to <16 x i8>
  %i.ep = add nuw nsw <16 x i32> %i.ee, %i.cd     ; 2 uses
  %i.eq = add nsw <16 x i32> %i.ep, splat (i32 -17685) ; 2 uses
  %i.er = icmp ult <16 x i32> %i.eq, splat (i32 16384)
  %i.es = lshr <16 x i32> %i.eq, splat (i32 6)
  %i.et = icmp samesign ult <16 x i32> %i.ep, splat (i32 17685)
  %i.eu = select <16 x i1> %i.et, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ev = select <16 x i1> %i.er, <16 x i32> %i.es, <16 x i32> %i.eu
  %i.ew = trunc <16 x i32> %i.ev to <16 x i8>
  %i.ex = shufflevector <16 x i32> %i.bs, <16 x i32> %i.ca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ey = shufflevector <16 x i1> %i.bt, <16 x i1> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ez = shufflevector <16 x i32> %i.cf, <16 x i32> %i.eg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fa = shufflevector <16 x i32> %i.ce, <16 x i32> %i.ef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fb = icmp samesign ult <32 x i32> %i.fa, <i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234>
  %i.fc = shufflevector <16 x i32> %i.bs, <16 x i32> %i.ca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fd = shufflevector <16 x i32> %i.cf, <16 x i32> %i.eg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fe = shufflevector <32 x i32> %i.fc, <32 x i32> %i.fd, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ff = icmp ult <64 x i32> %i.fe, splat (i32 16384)
  %i.fg = shufflevector <32 x i32> %i.ex, <32 x i32> %i.ez, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fh = lshr <64 x i32> %i.fg, splat (i32 6)
  %i.fi = shufflevector <32 x i1> %i.ey, <32 x i1> %i.fb, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fj = select <64 x i1> %i.fi, <64 x i32> zeroinitializer, <64 x i32> splat (i32 255)
  %i.fk = select <64 x i1> %i.ff, <64 x i32> %i.fh, <64 x i32> %i.fj
  %i.fl = trunc <64 x i32> %i.fk to <64 x i8>
  %i.fm = shufflevector <16 x i8> %i.eo, <16 x i8> %i.ew, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.fl, <64 x i8> %i.fm, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep58, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.g, 9223372036854775804    ; 6 uses
  %i.fo = shl nuw i64 %n.vec65, 1
  %i.fp = getelementptr i8, ptr %0, i64 %i.fo     ; 2 uses
  %i.fq = getelementptr i8, ptr %1, i64 %n.vec65  ; 2 uses
  %i.fr = mul i64 %n.vec65, 6
  %i.fs = getelementptr i8, ptr %3, i64 %i.fr
  %i.ft = getelementptr i8, ptr %2, i64 %n.vec65  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 5 uses
  %i.fu = shl i64 %index66, 1                     ; 4 uses
  %next.gep67 = getelementptr i8, ptr %0, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 %i.fu     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.fv, i64 2
  %i.fw = getelementptr i8, ptr %0, i64 %i.fu     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.fw, i64 4
  %i.fx = getelementptr i8, ptr %0, i64 %i.fu     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.fx, i64 6
  %next.gep71 = getelementptr i8, ptr %1, i64 %index66
  %i.fy = mul i64 %index66, 6
  %next.gep72 = getelementptr i8, ptr %3, i64 %i.fy
  %next.gep73 = getelementptr i8, ptr %2, i64 %index66
  %i.fz = load i8, ptr %next.gep67, align 1, !tbaa !12
  %i.ga = load i8, ptr %next.gep68, align 1, !tbaa !12
  %i.gb = load i8, ptr %next.gep69, align 1, !tbaa !12
  %i.gc = load i8, ptr %next.gep70, align 1, !tbaa !12
  %i.gd = insertelement <4 x i8> poison, i8 %i.fz, i64 0
  %i.ge = insertelement <4 x i8> %i.gd, i8 %i.ga, i64 1
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.gb, i64 2
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 3
  %i.gh = zext <4 x i8> %i.gg to <4 x i32>
  %wide.load74 = load <4 x i8>, ptr %next.gep71, align 1, !tbaa !12
  %i.gi = zext <4 x i8> %wide.load74 to <4 x i32> ; 2 uses
  %wide.load75 = load <4 x i8>, ptr %next.gep73, align 1, !tbaa !12
  %i.gj = zext <4 x i8> %wide.load75 to <4 x i32> ; 2 uses
  %i.gk = mul nuw nsw <4 x i32> %i.gh, splat (i32 19077)
  %i.gl = lshr <4 x i32> %i.gk, splat (i32 8)     ; 3 uses
  %i.gm = mul nuw nsw <4 x i32> %i.gj, splat (i32 26149)
  %i.gn = lshr <4 x i32> %i.gm, splat (i32 8)     ; 2 uses
  %i.go = add nuw nsw <4 x i32> %i.gn, %i.gl      ; 2 uses
  %i.gp = add nsw <4 x i32> %i.go, splat (i32 -14234) ; 2 uses
  %i.gq = icmp ult <4 x i32> %i.gp, splat (i32 16384)
  %i.gr = lshr <4 x i32> %i.gp, splat (i32 6)
  %i.gs = icmp samesign ult <4 x i32> %i.go, splat (i32 14234)
  %i.gt = select <4 x i1> %i.gs, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.gu = select <4 x i1> %i.gq, <4 x i32> %i.gr, <4 x i32> %i.gt
  %i.gv = mul nuw nsw <4 x i32> %i.gi, splat (i32 6419)
  %i.gw = lshr <4 x i32> %i.gv, splat (i32 8)
  %i.gx = mul nuw nsw <4 x i32> %i.gj, splat (i32 13320)
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 8)
  %i.gz = add nuw nsw <4 x i32> %i.gy, %i.gw      ; 2 uses
  %i.ha = sub nsw <4 x i32> %i.gl, %i.gz          ; 2 uses
  %i.hb = add nsw <4 x i32> %i.ha, splat (i32 8708) ; 2 uses
  %i.hc = icmp ult <4 x i32> %i.hb, splat (i32 16384)
  %i.hd = lshr <4 x i32> %i.hb, splat (i32 6)
  %i.he = icmp slt <4 x i32> %i.ha, splat (i32 -8708)
  %i.hf = select <4 x i1> %i.he, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hg = select <4 x i1> %i.hc, <4 x i32> %i.hd, <4 x i32> %i.hf
  %i.hh = mul nuw nsw <4 x i32> %i.gi, splat (i32 33050)
  %i.hi = lshr <4 x i32> %i.hh, splat (i32 8)     ; 2 uses
  %i.hj = add nuw nsw <4 x i32> %i.hi, %i.gl      ; 2 uses
  %i.hk = add nsw <4 x i32> %i.hj, splat (i32 -17685) ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %next.gep67, i64 1
  %i.hm = getelementptr i8, ptr %i.fv, i64 3
  %i.hn = getelementptr i8, ptr %i.fw, i64 5
  %i.ho = getelementptr i8, ptr %i.fx, i64 7
  %i.hp = load i8, ptr %i.hl, align 1, !tbaa !12
  %i.hq = load i8, ptr %i.hm, align 1, !tbaa !12
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !12
  %i.hs = load i8, ptr %i.ho, align 1, !tbaa !12
  %i.ht = insertelement <4 x i8> poison, i8 %i.hp, i64 0
  %i.hu = insertelement <4 x i8> %i.ht, i8 %i.hq, i64 1
  %i.hv = insertelement <4 x i8> %i.hu, i8 %i.hr, i64 2
  %i.hw = insertelement <4 x i8> %i.hv, i8 %i.hs, i64 3
  %i.hx = zext <4 x i8> %i.hw to <4 x i32>
  %i.hy = mul nuw nsw <4 x i32> %i.hx, splat (i32 19077)
  %i.hz = lshr <4 x i32> %i.hy, splat (i32 8)     ; 3 uses
  %i.ia = add nuw nsw <4 x i32> %i.hz, %i.gn      ; 2 uses
  %i.ib = add nsw <4 x i32> %i.ia, splat (i32 -14234) ; 2 uses
  %i.ic = sub nsw <4 x i32> %i.hz, %i.gz          ; 2 uses
  %i.id = add nsw <4 x i32> %i.ic, splat (i32 8708) ; 2 uses
  %i.ie = icmp ult <4 x i32> %i.id, splat (i32 16384)
  %i.if = lshr <4 x i32> %i.id, splat (i32 6)
  %i.ig = icmp slt <4 x i32> %i.ic, splat (i32 -8708)
  %i.ih = select <4 x i1> %i.ig, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ii = select <4 x i1> %i.ie, <4 x i32> %i.if, <4 x i32> %i.ih
  %i.ij = add nuw nsw <4 x i32> %i.hz, %i.hi      ; 2 uses
  %i.ik = add nsw <4 x i32> %i.ij, splat (i32 -17685) ; 2 uses
  %i.il = icmp ult <4 x i32> %i.ik, splat (i32 16384)
  %i.im = lshr <4 x i32> %i.ik, splat (i32 6)
  %i.in = icmp samesign ult <4 x i32> %i.ij, splat (i32 17685)
  %i.io = select <4 x i1> %i.in, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ip = select <4 x i1> %i.il, <4 x i32> %i.im, <4 x i32> %i.io
  %i.iq = shufflevector <4 x i32> %i.gu, <4 x i32> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ir = shufflevector <4 x i32> %i.hk, <4 x i32> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.is = icmp ult <8 x i32> %i.ir, splat (i32 16384)
  %i.it = shufflevector <4 x i32> %i.hk, <4 x i32> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iu = lshr <8 x i32> %i.it, splat (i32 6)
  %i.iv = shufflevector <4 x i32> %i.hj, <4 x i32> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iw = icmp samesign ult <8 x i32> %i.iv, <i32 17685, i32 17685, i32 17685, i32 17685, i32 14234, i32 14234, i32 14234, i32 14234>
  %i.ix = select <8 x i1> %i.iw, <8 x i32> zeroinitializer, <8 x i32> splat (i32 255)
  %i.iy = select <8 x i1> %i.is, <8 x i32> %i.iu, <8 x i32> %i.ix
  %i.iz = shufflevector <8 x i32> %i.iq, <8 x i32> %i.iy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ja = trunc <16 x i32> %i.iz to <16 x i8>
  %i.jb = shufflevector <4 x i32> %i.ii, <4 x i32> %i.ip, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = trunc <16 x i32> %i.jb to <16 x i8>
  %interleaved.vec76 = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jc, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x i8> %interleaved.vec76, ptr %next.gep72, align 1, !tbaa !12
  %index.next77 = add nuw i64 %index66, 4         ; 2 uses
  %i.jd = icmp eq i64 %index.next77, %n.vec65
  br i1 %i.jd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.g, %n.vec65
  br i1 %cmp.n78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.ph = phi ptr [ %0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.middle.block ]
  %.02029.ph = phi ptr [ %1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.fq, %vec.epilog.middle.block ]
  %.02128.ph = phi ptr [ %3, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.fs, %vec.epilog.middle.block ]
  %.02227.ph = phi ptr [ %2, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.ft, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.kh, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader ] ; 3 uses
  %.02029 = phi ptr [ %i.ki, %.lr.ph ], [ %.02029.ph, %.lr.ph.preheader ] ; 2 uses
  %.02128 = phi ptr [ %i.kk, %.lr.ph ], [ %.02128.ph, %.lr.ph.preheader ] ; 7 uses
  %.02227 = phi ptr [ %i.kj, %.lr.ph ], [ %.02227.ph, %.lr.ph.preheader ] ; 2 uses
  %i.je = load i8, ptr %.030, align 1, !tbaa !12
  %5 = zext i8 %i.je to i32
  %i.jf = load i8, ptr %.02029, align 1, !tbaa !12
  %6 = zext i8 %i.jf to i32                       ; 2 uses
  %i.jg = load i8, ptr %.02227, align 1, !tbaa !12
  %7 = zext i8 %i.jg to i32                       ; 2 uses
  %8 = mul nuw nsw i32 %5, 19077
  %9 = lshr i32 %8, 8                             ; 3 uses
  %10 = mul nuw nsw i32 %7, 26149
  %11 = lshr i32 %10, 8                           ; 2 uses
  %12 = add nuw nsw i32 %11, %9                   ; 2 uses
  %13 = add nsw i32 %12, -14234                   ; 2 uses
  %14 = icmp ult i32 %13, 16384
  %15 = lshr i32 %13, 6
  %16 = icmp samesign ult i32 %12, 14234
  %17 = select i1 %16, i32 0, i32 255
  %18 = select i1 %14, i32 %15, i32 %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %.02128, align 1, !tbaa !12
  %i.jh = mul nuw nsw i32 %6, 6419
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = mul nuw nsw i32 %7, 13320
  %i.jk = lshr i32 %i.jj, 8
  %20 = add nuw nsw i32 %i.jk, %i.ji              ; 2 uses
  %21 = sub nsw i32 %9, %20                       ; 2 uses
  %i.jl = add nsw i32 %21, 8708                   ; 2 uses
  %22 = icmp ult i32 %i.jl, 16384
  %23 = lshr i32 %i.jl, 6
  %24 = icmp slt i32 %21, -8708
  %25 = select i1 %24, i32 0, i32 255
  %26 = select i1 %22, i32 %23, i32 %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %.02128, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !12
  %i.jm = mul nuw nsw i32 %6, 33050
  %i.jn = lshr i32 %i.jm, 8                       ; 2 uses
  %29 = add nuw nsw i32 %i.jn, %9                 ; 2 uses
  %30 = add nsw i32 %29, -17685                   ; 2 uses
  %31 = icmp ult i32 %30, 16384
  %i.jo = lshr i32 %30, 6
  %32 = icmp samesign ult i32 %29, 17685
  %33 = select i1 %32, i32 0, i32 255
  %34 = select i1 %31, i32 %i.jo, i32 %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %.02128, i64 2
  store i8 %35, ptr %36, align 1, !tbaa !12
  %37 = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !12
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds nuw i8, ptr %.02128, i64 3
  %41 = mul nuw nsw i32 %39, 19077
  %42 = lshr i32 %41, 8                           ; 3 uses
  %43 = add nuw nsw i32 %42, %11                  ; 2 uses
  %44 = add nsw i32 %43, -14234                   ; 2 uses
  %45 = icmp ult i32 %44, 16384
  %46 = lshr i32 %44, 6
  %47 = icmp samesign ult i32 %43, 14234
  %48 = select i1 %47, i32 0, i32 255
  %49 = select i1 %45, i32 %46, i32 %48
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %40, align 1, !tbaa !12
  %i.jp = sub nsw i32 %42, %20                    ; 2 uses
  %i.jq = add nsw i32 %i.jp, 8708                 ; 2 uses
  %i.jr = icmp ult i32 %i.jq, 16384
  %i.js = lshr i32 %i.jq, 6
  %i.jt = icmp slt i32 %i.jp, -8708
  %i.ju = select i1 %i.jt, i32 0, i32 255
  %i.jv = select i1 %i.jr, i32 %i.js, i32 %i.ju
  %i.jw = trunc i32 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !12
  %i.jy = add nuw nsw i32 %42, %i.jn              ; 2 uses
  %i.jz = add nsw i32 %i.jy, -17685               ; 2 uses
  %i.ka = icmp ult i32 %i.jz, 16384
  %i.kb = lshr i32 %i.jz, 6
  %i.kc = icmp samesign ult i32 %i.jy, 17685
  %i.kd = select i1 %i.kc, i32 0, i32 255
  %i.ke = select i1 %i.ka, i32 %i.kb, i32 %i.kd
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.02128, i64 5
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %.030, i64 2 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.02029, i64 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.02227, i64 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.02128, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.kk, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.022.lcssa = phi ptr [ %2, %bb.a ], [ %i.ft, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %i.kj, %.lr.ph ]
  %.021.lcssa = phi ptr [ %3, %bb.a ], [ %i.d, %vec.epilog.middle.block ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph ] ; 3 uses
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.fq, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.ki, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.fp, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.kh, %.lr.ph ]
  %i.kl = and i32 %4, 1
  %.not23 = icmp eq i32 %i.kl, 0
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.km = load i8, ptr %.0.lcssa, align 1, !tbaa !12
  %i.kn = zext i8 %i.km to i32
  %i.ko = load i8, ptr %.020.lcssa, align 1, !tbaa !12
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = load i8, ptr %.022.lcssa, align 1, !tbaa !12
  %i.kr = zext i8 %i.kq to i32                    ; 2 uses
  %i.ks = mul nuw nsw i32 %i.kn, 19077
  %i.kt = lshr i32 %i.ks, 8                       ; 3 uses
  %i.ku = mul nuw nsw i32 %i.kr, 26149
  %i.kv = lshr i32 %i.ku, 8
  %i.kw = add nuw nsw i32 %i.kv, %i.kt            ; 2 uses
  %i.kx = add nsw i32 %i.kw, -14234               ; 2 uses
  %i.ky = icmp ult i32 %i.kx, 16384
  %i.kz = lshr i32 %i.kx, 6
  %i.la = icmp samesign ult i32 %i.kw, 14234
  %i.lb = select i1 %i.la, i32 0, i32 255
  %i.lc = select i1 %i.ky, i32 %i.kz, i32 %i.lb
  %i.ld = trunc i32 %i.lc to i8
  store i8 %i.ld, ptr %.021.lcssa, align 1, !tbaa !12
  %i.le = mul nuw nsw i32 %i.kp, 6419
  %i.lf = lshr i32 %i.le, 8
  %i.lg = mul nuw nsw i32 %i.kr, 13320
  %i.lh = lshr i32 %i.lg, 8
  %i.li = add nuw nsw i32 %i.lf, %i.lh
  %i.lj = sub nsw i32 %i.kt, %i.li                ; 2 uses
  %i.lk = add nsw i32 %i.lj, 8708                 ; 2 uses
  %i.ll = icmp ult i32 %i.lk, 16384
  %i.lm = lshr i32 %i.lk, 6
  %i.ln = icmp slt i32 %i.lj, -8708
  %i.lo = select i1 %i.ln, i32 0, i32 255
  %i.lp = select i1 %i.ll, i32 %i.lm, i32 %i.lo
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !12
  %i.ls = mul nuw nsw i32 %i.kp, 33050
  %i.lt = lshr i32 %i.ls, 8
  %i.lu = add nuw nsw i32 %i.lt, %i.kt            ; 2 uses
  %i.lv = add nsw i32 %i.lu, -17685               ; 2 uses
  %i.lw = icmp ult i32 %i.lv, 16384
  %i.lx = lshr i32 %i.lv, 6
  %i.ly = icmp samesign ult i32 %i.lu, 17685
  %i.lz = select i1 %i.ly, i32 0, i32 255
  %i.ma = select i1 %i.lw, i32 %i.lx, i32 %i.lz
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 2
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgbaRow(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(address) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 4 uses
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -8                     ; 3 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.e, 120
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
  %n.vec = and i64 %i.g, 4611686018427387888      ; 7 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  %i.i = getelementptr i8, ptr %0, i64 %i.h       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %3, i64 %i.k
  %i.m = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.n = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.o, i64 2
  %i.p = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.p, i64 4
  %i.q = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.q, i64 6
  %i.r = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.r, i64 8
  %i.s = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.s, i64 10
  %i.t = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.t, i64 12
  %i.u = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.u, i64 14
  %i.v = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.v, i64 16
  %i.w = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.w, i64 18
  %i.x = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.x, i64 20
  %i.y = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.y, i64 22
  %i.z = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.z, i64 24
  %i.aa = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.aa, i64 26
  %i.ab = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ab, i64 28
  %i.ac = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ac, i64 30
  %next.gep57 = getelementptr i8, ptr %1, i64 %index
  %i.ad = shl i64 %index, 3
  %next.gep58 = getelementptr i8, ptr %3, i64 %i.ad
  %next.gep59 = getelementptr i8, ptr %2, i64 %index
  %i.ae = load i8, ptr %next.gep, align 1, !tbaa !12
  %i.af = load i8, ptr %next.gep42, align 1, !tbaa !12
  %i.ag = load i8, ptr %next.gep43, align 1, !tbaa !12
  %i.ah = load i8, ptr %next.gep44, align 1, !tbaa !12
  %i.ai = load i8, ptr %next.gep45, align 1, !tbaa !12
  %i.aj = load i8, ptr %next.gep46, align 1, !tbaa !12
  %i.ak = load i8, ptr %next.gep47, align 1, !tbaa !12
  %i.al = load i8, ptr %next.gep48, align 1, !tbaa !12
  %i.am = load i8, ptr %next.gep49, align 1, !tbaa !12
  %i.an = load i8, ptr %next.gep50, align 1, !tbaa !12
  %i.ao = load i8, ptr %next.gep51, align 1, !tbaa !12
  %i.ap = load i8, ptr %next.gep52, align 1, !tbaa !12
  %i.aq = load i8, ptr %next.gep53, align 1, !tbaa !12
  %i.ar = load i8, ptr %next.gep54, align 1, !tbaa !12
  %i.as = load i8, ptr %next.gep55, align 1, !tbaa !12
  %i.at = load i8, ptr %next.gep56, align 1, !tbaa !12
  %i.au = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %i.av = insertelement <16 x i8> %i.au, i8 %i.af, i64 1
  %i.aw = insertelement <16 x i8> %i.av, i8 %i.ag, i64 2
  %i.ax = insertelement <16 x i8> %i.aw, i8 %i.ah, i64 3
  %i.ay = insertelement <16 x i8> %i.ax, i8 %i.ai, i64 4
  %i.az = insertelement <16 x i8> %i.ay, i8 %i.aj, i64 5
  %i.ba = insertelement <16 x i8> %i.az, i8 %i.ak, i64 6
  %i.bb = insertelement <16 x i8> %i.ba, i8 %i.al, i64 7
  %i.bc = insertelement <16 x i8> %i.bb, i8 %i.am, i64 8
  %i.bd = insertelement <16 x i8> %i.bc, i8 %i.an, i64 9
  %i.be = insertelement <16 x i8> %i.bd, i8 %i.ao, i64 10
  %i.bf = insertelement <16 x i8> %i.be, i8 %i.ap, i64 11
  %i.bg = insertelement <16 x i8> %i.bf, i8 %i.aq, i64 12
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.ar, i64 13
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 14
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep57, align 1, !tbaa !12
  %wide.load60 = load <16 x i8>, ptr %next.gep59, align 1, !tbaa !12
  %i.bk = zext <16 x i8> %i.bj to <16 x i32>
  %i.bl = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.bm = zext <16 x i8> %wide.load60 to <16 x i32> ; 2 uses
  %i.bn = mul nuw nsw <16 x i32> %i.bk, splat (i32 19077)
  %i.bo = lshr <16 x i32> %i.bn, splat (i32 8)    ; 3 uses
  %i.bp = mul nuw nsw <16 x i32> %i.bm, splat (i32 26149)
  %i.bq = lshr <16 x i32> %i.bp, splat (i32 8)    ; 2 uses
  %i.br = add nuw nsw <16 x i32> %i.bq, %i.bo     ; 2 uses
  %i.bs = add nsw <16 x i32> %i.br, splat (i32 -14234) ; 2 uses
  %i.bt = icmp samesign ult <16 x i32> %i.br, splat (i32 14234)
  %i.bu = mul nuw nsw <16 x i32> %i.bl, splat (i32 6419)
  %i.bv = lshr <16 x i32> %i.bu, splat (i32 8)
  %i.bw = mul nuw nsw <16 x i32> %i.bm, splat (i32 13320)
  %i.bx = lshr <16 x i32> %i.bw, splat (i32 8)
  %i.by = add nuw nsw <16 x i32> %i.bx, %i.bv     ; 2 uses
  %i.bz = sub nsw <16 x i32> %i.bo, %i.by         ; 2 uses
  %i.ca = add nsw <16 x i32> %i.bz, splat (i32 8708) ; 2 uses
  %i.cb = icmp slt <16 x i32> %i.bz, splat (i32 -8708)
end_hunk_0
begin_hunk_1_@YuvToBgrRow:bb.a
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !12
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !12
  %i.dm = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 1
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 2
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 3
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 4
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 5
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 6
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 7
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 8
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 9
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 10
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 11
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 12
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 13
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 14
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 15
  %i.ec = zext <16 x i8> %i.eb to <16 x i32>
  %i.ed = mul nuw nsw <16 x i32> %i.ec, splat (i32 19077)
  %i.ee = lshr <16 x i32> %i.ed, splat (i32 8)    ; 3 uses
  %i.ef = add nuw nsw <16 x i32> %i.ee, %i.bq     ; 2 uses
  %i.eg = add nsw <16 x i32> %i.ef, splat (i32 -17685) ; 2 uses
  %i.eh = sub nsw <16 x i32> %i.ee, %i.by         ; 2 uses
  %i.ei = add nsw <16 x i32> %i.eh, splat (i32 8708) ; 2 uses
  %i.ej = icmp ult <16 x i32> %i.ei, splat (i32 16384)
  %i.ek = lshr <16 x i32> %i.ei, splat (i32 6)
  %i.el = icmp slt <16 x i32> %i.eh, splat (i32 -8708)
  %i.em = select <16 x i1> %i.el, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.en = select <16 x i1> %i.ej, <16 x i32> %i.ek, <16 x i32> %i.em
  %i.eo = trunc <16 x i32> %i.en to <16 x i8>
  %i.ep = add nuw nsw <16 x i32> %i.ee, %i.cd     ; 2 uses
  %i.eq = add nsw <16 x i32> %i.ep, splat (i32 -14234) ; 2 uses
  %i.er = icmp ult <16 x i32> %i.eq, splat (i32 16384)
  %i.es = lshr <16 x i32> %i.eq, splat (i32 6)
  %i.et = icmp samesign ult <16 x i32> %i.ep, splat (i32 14234)
  %i.eu = select <16 x i1> %i.et, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ev = select <16 x i1> %i.er, <16 x i32> %i.es, <16 x i32> %i.eu
  %i.ew = trunc <16 x i32> %i.ev to <16 x i8>
  %i.ex = shufflevector <16 x i32> %i.bs, <16 x i32> %i.ca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ey = shufflevector <16 x i1> %i.bt, <16 x i1> %i.cb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ez = shufflevector <16 x i32> %i.cf, <16 x i32> %i.eg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fa = shufflevector <16 x i32> %i.ce, <16 x i32> %i.ef, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fb = icmp samesign ult <32 x i32> %i.fa, <i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685>
  %i.fc = shufflevector <16 x i32> %i.bs, <16 x i32> %i.ca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fd = shufflevector <16 x i32> %i.cf, <16 x i32> %i.eg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fe = shufflevector <32 x i32> %i.fc, <32 x i32> %i.fd, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ff = icmp ult <64 x i32> %i.fe, splat (i32 16384)
  %i.fg = shufflevector <32 x i32> %i.ex, <32 x i32> %i.ez, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fh = lshr <64 x i32> %i.fg, splat (i32 6)
  %i.fi = shufflevector <32 x i1> %i.ey, <32 x i1> %i.fb, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fj = select <64 x i1> %i.fi, <64 x i32> zeroinitializer, <64 x i32> splat (i32 255)
  %i.fk = select <64 x i1> %i.ff, <64 x i32> %i.fh, <64 x i32> %i.fj
  %i.fl = trunc <64 x i32> %i.fk to <64 x i8>
  %i.fm = shufflevector <16 x i8> %i.eo, <16 x i8> %i.ew, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.fl, <64 x i8> %i.fm, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep58, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.g, 9223372036854775804    ; 6 uses
  %i.fo = shl nuw i64 %n.vec65, 1
  %i.fp = getelementptr i8, ptr %0, i64 %i.fo     ; 2 uses
  %i.fq = getelementptr i8, ptr %1, i64 %n.vec65  ; 2 uses
  %i.fr = mul i64 %n.vec65, 6
  %i.fs = getelementptr i8, ptr %3, i64 %i.fr
  %i.ft = getelementptr i8, ptr %2, i64 %n.vec65  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 5 uses
  %i.fu = shl i64 %index66, 1                     ; 4 uses
  %next.gep67 = getelementptr i8, ptr %0, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 %i.fu     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.fv, i64 2
  %i.fw = getelementptr i8, ptr %0, i64 %i.fu     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.fw, i64 4
  %i.fx = getelementptr i8, ptr %0, i64 %i.fu     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.fx, i64 6
  %next.gep71 = getelementptr i8, ptr %1, i64 %index66
  %i.fy = mul i64 %index66, 6
  %next.gep72 = getelementptr i8, ptr %3, i64 %i.fy
  %next.gep73 = getelementptr i8, ptr %2, i64 %index66
  %i.fz = load i8, ptr %next.gep67, align 1, !tbaa !12
  %i.ga = load i8, ptr %next.gep68, align 1, !tbaa !12
  %i.gb = load i8, ptr %next.gep69, align 1, !tbaa !12
  %i.gc = load i8, ptr %next.gep70, align 1, !tbaa !12
  %i.gd = insertelement <4 x i8> poison, i8 %i.fz, i64 0
  %i.ge = insertelement <4 x i8> %i.gd, i8 %i.ga, i64 1
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.gb, i64 2
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 3
  %i.gh = zext <4 x i8> %i.gg to <4 x i32>
  %wide.load74 = load <4 x i8>, ptr %next.gep71, align 1, !tbaa !12
  %i.gi = zext <4 x i8> %wide.load74 to <4 x i32> ; 2 uses
  %wide.load75 = load <4 x i8>, ptr %next.gep73, align 1, !tbaa !12
  %i.gj = zext <4 x i8> %wide.load75 to <4 x i32> ; 2 uses
  %i.gk = mul nuw nsw <4 x i32> %i.gh, splat (i32 19077)
  %i.gl = lshr <4 x i32> %i.gk, splat (i32 8)     ; 3 uses
  %i.gm = mul nuw nsw <4 x i32> %i.gi, splat (i32 33050)
  %i.gn = lshr <4 x i32> %i.gm, splat (i32 8)     ; 2 uses
  %i.go = add nuw nsw <4 x i32> %i.gn, %i.gl      ; 2 uses
  %i.gp = add nsw <4 x i32> %i.go, splat (i32 -17685) ; 2 uses
  %i.gq = icmp ult <4 x i32> %i.gp, splat (i32 16384)
  %i.gr = lshr <4 x i32> %i.gp, splat (i32 6)
  %i.gs = icmp samesign ult <4 x i32> %i.go, splat (i32 17685)
  %i.gt = select <4 x i1> %i.gs, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.gu = select <4 x i1> %i.gq, <4 x i32> %i.gr, <4 x i32> %i.gt
  %i.gv = mul nuw nsw <4 x i32> %i.gi, splat (i32 6419)
  %i.gw = lshr <4 x i32> %i.gv, splat (i32 8)
  %i.gx = mul nuw nsw <4 x i32> %i.gj, splat (i32 13320)
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 8)
  %i.gz = add nuw nsw <4 x i32> %i.gy, %i.gw      ; 2 uses
  %i.ha = sub nsw <4 x i32> %i.gl, %i.gz          ; 2 uses
  %i.hb = add nsw <4 x i32> %i.ha, splat (i32 8708) ; 2 uses
  %i.hc = icmp ult <4 x i32> %i.hb, splat (i32 16384)
  %i.hd = lshr <4 x i32> %i.hb, splat (i32 6)
  %i.he = icmp slt <4 x i32> %i.ha, splat (i32 -8708)
  %i.hf = select <4 x i1> %i.he, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hg = select <4 x i1> %i.hc, <4 x i32> %i.hd, <4 x i32> %i.hf
  %i.hh = mul nuw nsw <4 x i32> %i.gj, splat (i32 26149)
  %i.hi = lshr <4 x i32> %i.hh, splat (i32 8)     ; 2 uses
  %i.hj = add nuw nsw <4 x i32> %i.hi, %i.gl      ; 2 uses
  %i.hk = add nsw <4 x i32> %i.hj, splat (i32 -14234) ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %next.gep67, i64 1
  %i.hm = getelementptr i8, ptr %i.fv, i64 3
  %i.hn = getelementptr i8, ptr %i.fw, i64 5
  %i.ho = getelementptr i8, ptr %i.fx, i64 7
  %i.hp = load i8, ptr %i.hl, align 1, !tbaa !12
  %i.hq = load i8, ptr %i.hm, align 1, !tbaa !12
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !12
  %i.hs = load i8, ptr %i.ho, align 1, !tbaa !12
  %i.ht = insertelement <4 x i8> poison, i8 %i.hp, i64 0
  %i.hu = insertelement <4 x i8> %i.ht, i8 %i.hq, i64 1
  %i.hv = insertelement <4 x i8> %i.hu, i8 %i.hr, i64 2
  %i.hw = insertelement <4 x i8> %i.hv, i8 %i.hs, i64 3
  %i.hx = zext <4 x i8> %i.hw to <4 x i32>
  %i.hy = mul nuw nsw <4 x i32> %i.hx, splat (i32 19077)
  %i.hz = lshr <4 x i32> %i.hy, splat (i32 8)     ; 3 uses
  %i.ia = add nuw nsw <4 x i32> %i.hz, %i.gn      ; 2 uses
  %i.ib = add nsw <4 x i32> %i.ia, splat (i32 -17685) ; 2 uses
  %i.ic = sub nsw <4 x i32> %i.hz, %i.gz          ; 2 uses
  %i.id = add nsw <4 x i32> %i.ic, splat (i32 8708) ; 2 uses
  %i.ie = icmp ult <4 x i32> %i.id, splat (i32 16384)
  %i.if = lshr <4 x i32> %i.id, splat (i32 6)
  %i.ig = icmp slt <4 x i32> %i.ic, splat (i32 -8708)
  %i.ih = select <4 x i1> %i.ig, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ii = select <4 x i1> %i.ie, <4 x i32> %i.if, <4 x i32> %i.ih
  %i.ij = add nuw nsw <4 x i32> %i.hz, %i.hi      ; 2 uses
  %i.ik = add nsw <4 x i32> %i.ij, splat (i32 -14234) ; 2 uses
  %i.il = icmp ult <4 x i32> %i.ik, splat (i32 16384)
  %i.im = lshr <4 x i32> %i.ik, splat (i32 6)
  %i.in = icmp samesign ult <4 x i32> %i.ij, splat (i32 14234)
  %i.io = select <4 x i1> %i.in, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ip = select <4 x i1> %i.il, <4 x i32> %i.im, <4 x i32> %i.io
  %i.iq = shufflevector <4 x i32> %i.gu, <4 x i32> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ir = shufflevector <4 x i32> %i.hk, <4 x i32> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.is = icmp ult <8 x i32> %i.ir, splat (i32 16384)
  %i.it = shufflevector <4 x i32> %i.hk, <4 x i32> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iu = lshr <8 x i32> %i.it, splat (i32 6)
  %i.iv = shufflevector <4 x i32> %i.hj, <4 x i32> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iw = icmp samesign ult <8 x i32> %i.iv, <i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685>
  %i.ix = select <8 x i1> %i.iw, <8 x i32> zeroinitializer, <8 x i32> splat (i32 255)
  %i.iy = select <8 x i1> %i.is, <8 x i32> %i.iu, <8 x i32> %i.ix
  %i.iz = shufflevector <8 x i32> %i.iq, <8 x i32> %i.iy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ja = trunc <16 x i32> %i.iz to <16 x i8>
  %i.jb = shufflevector <4 x i32> %i.ii, <4 x i32> %i.ip, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = trunc <16 x i32> %i.jb to <16 x i8>
  %interleaved.vec76 = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jc, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x i8> %interleaved.vec76, ptr %next.gep72, align 1, !tbaa !12
  %index.next77 = add nuw i64 %index66, 4         ; 2 uses
  %i.jd = icmp eq i64 %index.next77, %n.vec65
  br i1 %i.jd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.g, %n.vec65
  br i1 %cmp.n78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.ph = phi ptr [ %0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.middle.block ]
  %.02029.ph = phi ptr [ %1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.fq, %vec.epilog.middle.block ]
  %.02128.ph = phi ptr [ %3, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.fs, %vec.epilog.middle.block ]
  %.02227.ph = phi ptr [ %2, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.ft, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.kh, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader ] ; 3 uses
  %.02029 = phi ptr [ %i.ki, %.lr.ph ], [ %.02029.ph, %.lr.ph.preheader ] ; 2 uses
  %.02128 = phi ptr [ %i.kk, %.lr.ph ], [ %.02128.ph, %.lr.ph.preheader ] ; 7 uses
  %.02227 = phi ptr [ %i.kj, %.lr.ph ], [ %.02227.ph, %.lr.ph.preheader ] ; 2 uses
  %i.je = load i8, ptr %.030, align 1, !tbaa !12
  %5 = zext i8 %i.je to i32
  %i.jf = load i8, ptr %.02029, align 1, !tbaa !12
  %6 = zext i8 %i.jf to i32                       ; 2 uses
  %i.jg = load i8, ptr %.02227, align 1, !tbaa !12
  %7 = zext i8 %i.jg to i32                       ; 2 uses
  %8 = mul nuw nsw i32 %5, 19077
  %9 = lshr i32 %8, 8                             ; 3 uses
  %10 = mul nuw nsw i32 %6, 33050
  %11 = lshr i32 %10, 8                           ; 2 uses
  %12 = add nuw nsw i32 %11, %9                   ; 2 uses
  %13 = add nsw i32 %12, -17685                   ; 2 uses
  %14 = icmp ult i32 %13, 16384
  %15 = lshr i32 %13, 6
  %16 = icmp samesign ult i32 %12, 17685
  %17 = select i1 %16, i32 0, i32 255
  %18 = select i1 %14, i32 %15, i32 %17
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %.02128, align 1, !tbaa !12
  %i.jh = mul nuw nsw i32 %6, 6419
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = mul nuw nsw i32 %7, 13320
  %i.jk = lshr i32 %i.jj, 8
  %20 = add nuw nsw i32 %i.jk, %i.ji              ; 2 uses
  %21 = sub nsw i32 %9, %20                       ; 2 uses
  %i.jl = add nsw i32 %21, 8708                   ; 2 uses
  %22 = icmp ult i32 %i.jl, 16384
  %23 = lshr i32 %i.jl, 6
  %24 = icmp slt i32 %21, -8708
  %25 = select i1 %24, i32 0, i32 255
  %26 = select i1 %22, i32 %23, i32 %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw i8, ptr %.02128, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !12
  %i.jm = mul nuw nsw i32 %7, 26149
  %i.jn = lshr i32 %i.jm, 8                       ; 2 uses
  %29 = add nuw nsw i32 %i.jn, %9                 ; 2 uses
  %30 = add nsw i32 %29, -14234                   ; 2 uses
  %31 = icmp ult i32 %30, 16384
  %i.jo = lshr i32 %30, 6
  %32 = icmp samesign ult i32 %29, 14234
  %33 = select i1 %32, i32 0, i32 255
  %34 = select i1 %31, i32 %i.jo, i32 %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %.02128, i64 2
  store i8 %35, ptr %36, align 1, !tbaa !12
  %37 = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !12
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds nuw i8, ptr %.02128, i64 3
  %41 = mul nuw nsw i32 %39, 19077
  %42 = lshr i32 %41, 8                           ; 3 uses
  %43 = add nuw nsw i32 %42, %11                  ; 2 uses
  %44 = add nsw i32 %43, -17685                   ; 2 uses
  %45 = icmp ult i32 %44, 16384
  %46 = lshr i32 %44, 6
  %47 = icmp samesign ult i32 %43, 17685
  %48 = select i1 %47, i32 0, i32 255
  %49 = select i1 %45, i32 %46, i32 %48
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %40, align 1, !tbaa !12
  %i.jp = sub nsw i32 %42, %20                    ; 2 uses
  %i.jq = add nsw i32 %i.jp, 8708                 ; 2 uses
  %i.jr = icmp ult i32 %i.jq, 16384
  %i.js = lshr i32 %i.jq, 6
  %i.jt = icmp slt i32 %i.jp, -8708
  %i.ju = select i1 %i.jt, i32 0, i32 255
  %i.jv = select i1 %i.jr, i32 %i.js, i32 %i.ju
  %i.jw = trunc i32 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !12
  %i.jy = add nuw nsw i32 %42, %i.jn              ; 2 uses
  %i.jz = add nsw i32 %i.jy, -14234               ; 2 uses
  %i.ka = icmp ult i32 %i.jz, 16384
  %i.kb = lshr i32 %i.jz, 6
  %i.kc = icmp samesign ult i32 %i.jy, 14234
  %i.kd = select i1 %i.kc, i32 0, i32 255
  %i.ke = select i1 %i.ka, i32 %i.kb, i32 %i.kd
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.02128, i64 5
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %.030, i64 2 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.02029, i64 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.02227, i64 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.02128, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.kk, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.022.lcssa = phi ptr [ %2, %bb.a ], [ %i.ft, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %i.kj, %.lr.ph ]
  %.021.lcssa = phi ptr [ %3, %bb.a ], [ %i.d, %vec.epilog.middle.block ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph ] ; 3 uses
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.fq, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.ki, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.fp, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.kh, %.lr.ph ]
  %i.kl = and i32 %4, 1
  %.not23 = icmp eq i32 %i.kl, 0
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.km = load i8, ptr %.0.lcssa, align 1, !tbaa !12
  %i.kn = zext i8 %i.km to i32
  %i.ko = load i8, ptr %.020.lcssa, align 1, !tbaa !12
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = load i8, ptr %.022.lcssa, align 1, !tbaa !12
  %i.kr = zext i8 %i.kq to i32                    ; 2 uses
  %i.ks = mul nuw nsw i32 %i.kn, 19077
  %i.kt = lshr i32 %i.ks, 8                       ; 3 uses
  %i.ku = mul nuw nsw i32 %i.kp, 33050
  %i.kv = lshr i32 %i.ku, 8
  %i.kw = add nuw nsw i32 %i.kv, %i.kt            ; 2 uses
  %i.kx = add nsw i32 %i.kw, -17685               ; 2 uses
  %i.ky = icmp ult i32 %i.kx, 16384
  %i.kz = lshr i32 %i.kx, 6
  %i.la = icmp samesign ult i32 %i.kw, 17685
  %i.lb = select i1 %i.la, i32 0, i32 255
  %i.lc = select i1 %i.ky, i32 %i.kz, i32 %i.lb
  %i.ld = trunc i32 %i.lc to i8
  store i8 %i.ld, ptr %.021.lcssa, align 1, !tbaa !12
  %i.le = mul nuw nsw i32 %i.kp, 6419
  %i.lf = lshr i32 %i.le, 8
  %i.lg = mul nuw nsw i32 %i.kr, 13320
  %i.lh = lshr i32 %i.lg, 8
  %i.li = add nuw nsw i32 %i.lf, %i.lh
  %i.lj = sub nsw i32 %i.kt, %i.li                ; 2 uses
  %i.lk = add nsw i32 %i.lj, 8708                 ; 2 uses
  %i.ll = icmp ult i32 %i.lk, 16384
  %i.lm = lshr i32 %i.lk, 6
  %i.ln = icmp slt i32 %i.lj, -8708
  %i.lo = select i1 %i.ln, i32 0, i32 255
  %i.lp = select i1 %i.ll, i32 %i.lm, i32 %i.lo
  %i.lq = trunc i32 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !12
  %i.ls = mul nuw nsw i32 %i.kr, 26149
  %i.lt = lshr i32 %i.ls, 8
  %i.lu = add nuw nsw i32 %i.lt, %i.kt            ; 2 uses
  %i.lv = add nsw i32 %i.lu, -14234               ; 2 uses
  %i.lw = icmp ult i32 %i.lv, 16384
  %i.lx = lshr i32 %i.lv, 6
  %i.ly = icmp samesign ult i32 %i.lu, 14234
  %i.lz = select i1 %i.ly, i32 0, i32 255
  %i.ma = select i1 %i.lw, i32 %i.lx, i32 %i.lz
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 2
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgraRow(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(address) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 4 uses
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -8                     ; 3 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.e, 120
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
  %n.vec = and i64 %i.g, 4611686018427387888      ; 7 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  %i.i = getelementptr i8, ptr %0, i64 %i.h       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %3, i64 %i.k
  %i.m = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.n = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.o, i64 2
  %i.p = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.p, i64 4
  %i.q = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.q, i64 6
  %i.r = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.r, i64 8
  %i.s = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.s, i64 10
  %i.t = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.t, i64 12
  %i.u = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.u, i64 14
  %i.v = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.v, i64 16
  %i.w = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.w, i64 18
  %i.x = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.x, i64 20
  %i.y = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.y, i64 22
  %i.z = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.z, i64 24
  %i.aa = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.aa, i64 26
  %i.ab = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ab, i64 28
  %i.ac = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ac, i64 30
  %next.gep57 = getelementptr i8, ptr %1, i64 %index
  %i.ad = shl i64 %index, 3
  %next.gep58 = getelementptr i8, ptr %3, i64 %i.ad
  %next.gep59 = getelementptr i8, ptr %2, i64 %index
  %i.ae = load i8, ptr %next.gep, align 1, !tbaa !12
  %i.af = load i8, ptr %next.gep42, align 1, !tbaa !12
  %i.ag = load i8, ptr %next.gep43, align 1, !tbaa !12
  %i.ah = load i8, ptr %next.gep44, align 1, !tbaa !12
  %i.ai = load i8, ptr %next.gep45, align 1, !tbaa !12
  %i.aj = load i8, ptr %next.gep46, align 1, !tbaa !12
  %i.ak = load i8, ptr %next.gep47, align 1, !tbaa !12
  %i.al = load i8, ptr %next.gep48, align 1, !tbaa !12
  %i.am = load i8, ptr %next.gep49, align 1, !tbaa !12
  %i.an = load i8, ptr %next.gep50, align 1, !tbaa !12
  %i.ao = load i8, ptr %next.gep51, align 1, !tbaa !12
  %i.ap = load i8, ptr %next.gep52, align 1, !tbaa !12
  %i.aq = load i8, ptr %next.gep53, align 1, !tbaa !12
  %i.ar = load i8, ptr %next.gep54, align 1, !tbaa !12
  %i.as = load i8, ptr %next.gep55, align 1, !tbaa !12
  %i.at = load i8, ptr %next.gep56, align 1, !tbaa !12
  %i.au = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %i.av = insertelement <16 x i8> %i.au, i8 %i.af, i64 1
  %i.aw = insertelement <16 x i8> %i.av, i8 %i.ag, i64 2
  %i.ax = insertelement <16 x i8> %i.aw, i8 %i.ah, i64 3
  %i.ay = insertelement <16 x i8> %i.ax, i8 %i.ai, i64 4
  %i.az = insertelement <16 x i8> %i.ay, i8 %i.aj, i64 5
  %i.ba = insertelement <16 x i8> %i.az, i8 %i.ak, i64 6
  %i.bb = insertelement <16 x i8> %i.ba, i8 %i.al, i64 7
  %i.bc = insertelement <16 x i8> %i.bb, i8 %i.am, i64 8
  %i.bd = insertelement <16 x i8> %i.bc, i8 %i.an, i64 9
  %i.be = insertelement <16 x i8> %i.bd, i8 %i.ao, i64 10
  %i.bf = insertelement <16 x i8> %i.be, i8 %i.ap, i64 11
  %i.bg = insertelement <16 x i8> %i.bf, i8 %i.aq, i64 12
  %i.bh = insertelement <16 x i8> %i.bg, i8 %i.ar, i64 13
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 14
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep57, align 1, !tbaa !12
  %wide.load60 = load <16 x i8>, ptr %next.gep59, align 1, !tbaa !12
  %i.bk = zext <16 x i8> %i.bj to <16 x i32>
  %i.bl = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.bm = zext <16 x i8> %wide.load60 to <16 x i32> ; 2 uses
  %i.bn = mul nuw nsw <16 x i32> %i.bk, splat (i32 19077)
  %i.bo = lshr <16 x i32> %i.bn, splat (i32 8)    ; 3 uses
  %i.bp = mul nuw nsw <16 x i32> %i.bl, splat (i32 33050)
  %i.bq = lshr <16 x i32> %i.bp, splat (i32 8)    ; 2 uses
  %i.br = add nuw nsw <16 x i32> %i.bq, %i.bo     ; 2 uses
  %i.bs = add nsw <16 x i32> %i.br, splat (i32 -17685) ; 2 uses
  %i.bt = icmp samesign ult <16 x i32> %i.br, splat (i32 17685)
  %i.bu = mul nuw nsw <16 x i32> %i.bl, splat (i32 6419)
  %i.bv = lshr <16 x i32> %i.bu, splat (i32 8)
  %i.bw = mul nuw nsw <16 x i32> %i.bm, splat (i32 13320)
  %i.bx = lshr <16 x i32> %i.bw, splat (i32 8)
  %i.by = add nuw nsw <16 x i32> %i.bx, %i.bv     ; 2 uses
  %i.bz = sub nsw <16 x i32> %i.bo, %i.by         ; 2 uses
  %i.ca = add nsw <16 x i32> %i.bz, splat (i32 8708) ; 2 uses
  %i.cb = icmp slt <16 x i32> %i.bz, splat (i32 -8708)
end_hunk_1
