inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@YuvToRgbRow:bb.a
  %i.ey = icmp ult <16 x i32> %i.ex, splat (i32 16384)
  %i.ez = lshr <16 x i32> %i.ex, splat (i32 6)
  %i.fa = icmp samesign ult <16 x i32> %i.ew, splat (i32 17685)
  %i.fb = select <16 x i1> %i.fa, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.fc = select <16 x i1> %i.ey, <16 x i32> %i.ez, <16 x i32> %i.fb
  %i.fd = trunc <16 x i32> %i.fc to <16 x i8>
  %i.fe = shufflevector <16 x i32> %i.bz, <16 x i32> %i.ch, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ff = shufflevector <16 x i1> %i.ca, <16 x i1> %i.ci, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fg = shufflevector <16 x i32> %i.cm, <16 x i32> %i.en, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fh = shufflevector <16 x i32> %i.cl, <16 x i32> %i.em, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fi = icmp samesign ult <32 x i32> %i.fh, <i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234>
  %i.fj = shufflevector <16 x i32> %i.bz, <16 x i32> %i.ch, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fk = shufflevector <16 x i32> %i.cm, <16 x i32> %i.en, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fl = shufflevector <32 x i32> %i.fj, <32 x i32> %i.fk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fm = icmp ult <64 x i32> %i.fl, splat (i32 16384)
  %i.fn = shufflevector <32 x i32> %i.fe, <32 x i32> %i.fg, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fo = lshr <64 x i32> %i.fn, splat (i32 6)
  %i.fp = shufflevector <32 x i1> %i.ff, <32 x i1> %i.fi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fq = select <64 x i1> %i.fp, <64 x i32> zeroinitializer, <64 x i32> splat (i32 255)
  %i.fr = select <64 x i1> %i.fm, <64 x i32> %i.fo, <64 x i32> %i.fq
  %i.fs = trunc <64 x i32> %i.fr to <64 x i8>
  %i.ft = shufflevector <16 x i8> %i.ev, <16 x i8> %i.fd, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.fs, <64 x i8> %i.ft, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep68, align 1, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.g, 9223372036854775804    ; 6 uses
  %i.fv = shl nuw i64 %n.vec75, 1
  %i.fw = getelementptr i8, ptr %0, i64 %i.fv     ; 2 uses
  %i.fx = getelementptr i8, ptr %1, i64 %n.vec75  ; 2 uses
  %i.fy = mul i64 %n.vec75, 6
  %i.fz = getelementptr i8, ptr %3, i64 %i.fy
  %i.ga = getelementptr i8, ptr %2, i64 %n.vec75  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 5 uses
  %i.gb = shl i64 %index76, 1                     ; 4 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.gb ; 2 uses
  %i.gc = getelementptr i8, ptr %0, i64 %i.gb     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.gc, i64 2
  %i.gd = getelementptr i8, ptr %0, i64 %i.gb     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.gd, i64 4
  %i.ge = getelementptr i8, ptr %0, i64 %i.gb     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ge, i64 6
  %next.gep81 = getelementptr i8, ptr %1, i64 %index76
  %i.gf = mul i64 %index76, 6
  %next.gep82 = getelementptr i8, ptr %3, i64 %i.gf
  %next.gep83 = getelementptr i8, ptr %2, i64 %index76
  %i.gg = load i8, ptr %next.gep77, align 1, !tbaa !12, !alias.scope !24
  %i.gh = load i8, ptr %next.gep78, align 1, !tbaa !12, !alias.scope !24
  %i.gi = load i8, ptr %next.gep79, align 1, !tbaa !12, !alias.scope !24
  %i.gj = load i8, ptr %next.gep80, align 1, !tbaa !12, !alias.scope !24
  %i.gk = insertelement <4 x i8> poison, i8 %i.gg, i64 0
  %i.gl = insertelement <4 x i8> %i.gk, i8 %i.gh, i64 1
  %i.gm = insertelement <4 x i8> %i.gl, i8 %i.gi, i64 2
  %i.gn = insertelement <4 x i8> %i.gm, i8 %i.gj, i64 3
  %i.go = zext <4 x i8> %i.gn to <4 x i32>
  %wide.load84 = load <4 x i8>, ptr %next.gep81, align 1, !tbaa !12, !alias.scope !27
  %i.gp = zext <4 x i8> %wide.load84 to <4 x i32> ; 2 uses
  %wide.load85 = load <4 x i8>, ptr %next.gep83, align 1, !tbaa !12, !alias.scope !29
  %i.gq = zext <4 x i8> %wide.load85 to <4 x i32> ; 2 uses
  %i.gr = mul nuw nsw <4 x i32> %i.go, splat (i32 19077)
  %i.gs = lshr <4 x i32> %i.gr, splat (i32 8)     ; 3 uses
  %i.gt = mul nuw nsw <4 x i32> %i.gq, splat (i32 26149)
  %i.gu = lshr <4 x i32> %i.gt, splat (i32 8)     ; 2 uses
  %i.gv = add nuw nsw <4 x i32> %i.gu, %i.gs      ; 2 uses
  %i.gw = add nsw <4 x i32> %i.gv, splat (i32 -14234) ; 2 uses
  %i.gx = icmp ult <4 x i32> %i.gw, splat (i32 16384)
  %i.gy = lshr <4 x i32> %i.gw, splat (i32 6)
  %i.gz = icmp samesign ult <4 x i32> %i.gv, splat (i32 14234)
  %i.ha = select <4 x i1> %i.gz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hb = select <4 x i1> %i.gx, <4 x i32> %i.gy, <4 x i32> %i.ha
  %i.hc = mul nuw nsw <4 x i32> %i.gp, splat (i32 6419)
  %i.hd = lshr <4 x i32> %i.hc, splat (i32 8)
  %i.he = mul nuw nsw <4 x i32> %i.gq, splat (i32 13320)
  %i.hf = lshr <4 x i32> %i.he, splat (i32 8)
  %i.hg = add nuw nsw <4 x i32> %i.hf, %i.hd      ; 2 uses
  %i.hh = sub nsw <4 x i32> %i.gs, %i.hg          ; 2 uses
  %i.hi = add nsw <4 x i32> %i.hh, splat (i32 8708) ; 2 uses
  %i.hj = icmp ult <4 x i32> %i.hi, splat (i32 16384)
  %i.hk = lshr <4 x i32> %i.hi, splat (i32 6)
  %i.hl = icmp slt <4 x i32> %i.hh, splat (i32 -8708)
  %i.hm = select <4 x i1> %i.hl, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hn = select <4 x i1> %i.hj, <4 x i32> %i.hk, <4 x i32> %i.hm
  %i.ho = mul nuw nsw <4 x i32> %i.gp, splat (i32 33050)
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 8)     ; 2 uses
  %i.hq = add nuw nsw <4 x i32> %i.hp, %i.gs      ; 2 uses
  %i.hr = add nsw <4 x i32> %i.hq, splat (i32 -17685) ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %next.gep77, i64 1
  %i.ht = getelementptr i8, ptr %i.gc, i64 3
  %i.hu = getelementptr i8, ptr %i.gd, i64 5
  %i.hv = getelementptr i8, ptr %i.ge, i64 7
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !12, !alias.scope !24
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !12, !alias.scope !24
  %i.hy = load i8, ptr %i.hu, align 1, !tbaa !12, !alias.scope !24
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !12, !alias.scope !24
  %i.ia = insertelement <4 x i8> poison, i8 %i.hw, i64 0
  %i.ib = insertelement <4 x i8> %i.ia, i8 %i.hx, i64 1
  %i.ic = insertelement <4 x i8> %i.ib, i8 %i.hy, i64 2
  %i.id = insertelement <4 x i8> %i.ic, i8 %i.hz, i64 3
  %i.ie = zext <4 x i8> %i.id to <4 x i32>
  %i.if = mul nuw nsw <4 x i32> %i.ie, splat (i32 19077)
  %i.ig = lshr <4 x i32> %i.if, splat (i32 8)     ; 3 uses
  %i.ih = add nuw nsw <4 x i32> %i.ig, %i.gu      ; 2 uses
  %i.ii = add nsw <4 x i32> %i.ih, splat (i32 -14234) ; 2 uses
  %i.ij = sub nsw <4 x i32> %i.ig, %i.hg          ; 2 uses
  %i.ik = add nsw <4 x i32> %i.ij, splat (i32 8708) ; 2 uses
  %i.il = icmp ult <4 x i32> %i.ik, splat (i32 16384)
  %i.im = lshr <4 x i32> %i.ik, splat (i32 6)
  %i.in = icmp slt <4 x i32> %i.ij, splat (i32 -8708)
  %i.io = select <4 x i1> %i.in, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ip = select <4 x i1> %i.il, <4 x i32> %i.im, <4 x i32> %i.io
  %i.iq = add nuw nsw <4 x i32> %i.ig, %i.hp      ; 2 uses
  %i.ir = add nsw <4 x i32> %i.iq, splat (i32 -17685) ; 2 uses
  %i.is = icmp ult <4 x i32> %i.ir, splat (i32 16384)
  %i.it = lshr <4 x i32> %i.ir, splat (i32 6)
  %i.iu = icmp samesign ult <4 x i32> %i.iq, splat (i32 17685)
  %i.iv = select <4 x i1> %i.iu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.iw = select <4 x i1> %i.is, <4 x i32> %i.it, <4 x i32> %i.iv
  %i.ix = shufflevector <4 x i32> %i.hb, <4 x i32> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iy = shufflevector <4 x i32> %i.hr, <4 x i32> %i.ii, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iz = icmp ult <8 x i32> %i.iy, splat (i32 16384)
  %i.ja = shufflevector <4 x i32> %i.hr, <4 x i32> %i.ii, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jb = lshr <8 x i32> %i.ja, splat (i32 6)
  %i.jc = shufflevector <4 x i32> %i.hq, <4 x i32> %i.ih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jd = icmp samesign ult <8 x i32> %i.jc, <i32 17685, i32 17685, i32 17685, i32 17685, i32 14234, i32 14234, i32 14234, i32 14234>
  %i.je = select <8 x i1> %i.jd, <8 x i32> zeroinitializer, <8 x i32> splat (i32 255)
  %i.jf = select <8 x i1> %i.iz, <8 x i32> %i.jb, <8 x i32> %i.je
  %i.jg = shufflevector <8 x i32> %i.ix, <8 x i32> %i.jf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jh = trunc <16 x i32> %i.jg to <16 x i8>
  %i.ji = shufflevector <4 x i32> %i.ip, <4 x i32> %i.iw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jj = trunc <16 x i32> %i.ji to <16 x i8>
  %interleaved.vec86 = shufflevector <16 x i8> %i.jh, <16 x i8> %i.jj, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x i8> %interleaved.vec86, ptr %next.gep82, align 1, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next87 = add nuw i64 %index76, 4         ; 2 uses
  %i.jk = icmp eq i64 %index.next87, %n.vec75
  br i1 %i.jk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %i.g, %n.vec75
  br i1 %cmp.n88, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.fw, %vec.epilog.middle.block ]
  %.02029.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  %.02128.ph = phi ptr [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ]
  %.02227.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ga, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.lq, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader ] ; 3 uses
  %.02029 = phi ptr [ %i.lr, %.lr.ph ], [ %.02029.ph, %.lr.ph.preheader ] ; 2 uses
  %.02128 = phi ptr [ %i.lt, %.lr.ph ], [ %.02128.ph, %.lr.ph.preheader ] ; 4 uses
  %.02227 = phi ptr [ %i.ls, %.lr.ph ], [ %.02227.ph, %.lr.ph.preheader ] ; 2 uses
  %i.jl = load i8, ptr %.02029, align 1, !tbaa !12
  %i.jm = load i8, ptr %.02227, align 1, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !12
  %i.jp = load i8, ptr %.030, align 1, !tbaa !12
  %i.jq = zext i8 %i.jo to i32
  %i.jr = zext i8 %i.jl to i32                    ; 2 uses
  %i.js = zext i8 %i.jp to i32
  %i.jt = zext i8 %i.jm to i32                    ; 2 uses
  %i.ju = mul nuw nsw i32 %i.jr, 6419
  %i.jv = lshr i32 %i.ju, 8
  %i.jw = mul nuw nsw i32 %i.jt, 13320
  %i.jx = lshr i32 %i.jw, 8
  %i.jy = add nuw nsw i32 %i.jx, %i.jv            ; 2 uses
  %i.jz = mul nuw nsw i32 %i.jq, 19077
  %i.ka = mul nuw nsw i32 %i.jr, 33050
  %i.kb = mul nuw nsw i32 %i.js, 19077
  %i.kc = mul nuw nsw i32 %i.jt, 26149
  %i.kd = lshr i32 %i.jz, 8                       ; 3 uses
  %i.ke = lshr i32 %i.ka, 8                       ; 2 uses
  %i.kf = lshr i32 %i.kb, 8                       ; 3 uses
  %i.kg = lshr i32 %i.kc, 8                       ; 2 uses
  %i.kh = add nuw nsw i32 %i.kd, %i.kg
  %i.ki = add nuw nsw i32 %i.ke, %i.kf
  %i.kj = sub nsw i32 %i.kf, %i.jy
  %i.kk = add nuw nsw i32 %i.kg, %i.kf
  %i.kl = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.kj, i64 1
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.ki, i64 2
  %i.ko = insertelement <4 x i32> %i.kn, i32 %i.kh, i64 3 ; 3 uses
  %i.kp = add nsw <4 x i32> %i.ko, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %i.kq = icmp ult <4 x i32> %i.kp, splat (i32 16384)
  %i.kr = lshr <4 x i32> %i.kp, splat (i32 6)
  %i.ks = icmp ult <4 x i32> %i.ko, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.kt = icmp slt <4 x i32> %i.ko, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %i.ku = shufflevector <4 x i1> %i.ks, <4 x i1> %i.kt, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.kv = select <4 x i1> %i.ku, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.kw = select <4 x i1> %i.kq, <4 x i32> %i.kr, <4 x i32> %i.kv
  %i.kx = trunc <4 x i32> %i.kw to <4 x i8>
  store <4 x i8> %i.kx, ptr %.02128, align 1, !tbaa !12
  %i.ky = sub nsw i32 %i.kd, %i.jy                ; 2 uses
  %i.kz = add nsw i32 %i.ky, 8708                 ; 2 uses
  %i.la = icmp ult i32 %i.kz, 16384
  %i.lb = lshr i32 %i.kz, 6
  %i.lc = icmp slt i32 %i.ky, -8708
  %i.ld = select i1 %i.lc, i32 0, i32 255
  %i.le = select i1 %i.la, i32 %i.lb, i32 %i.ld
  %i.lf = trunc i32 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !12
  %i.lh = add nuw nsw i32 %i.kd, %i.ke            ; 2 uses
  %i.li = add nsw i32 %i.lh, -17685               ; 2 uses
  %i.lj = icmp ult i32 %i.li, 16384
  %i.lk = lshr i32 %i.li, 6
  %i.ll = icmp samesign ult i32 %i.lh, 17685
  %i.lm = select i1 %i.ll, i32 0, i32 255
  %i.ln = select i1 %i.lj, i32 %i.lk, i32 %i.lm
  %i.lo = trunc i32 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %.02128, i64 5
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.030, i64 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.02029, i64 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.02227, i64 1 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.02128, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.lt, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.022.lcssa = phi ptr [ %2, %bb.a ], [ %i.ga, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ls, %.lr.ph ]
  %.021.lcssa = phi ptr [ %3, %bb.a ], [ %i.d, %vec.epilog.middle.block ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph ] ; 3 uses
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.fx, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.lr, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.fw, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.lq, %.lr.ph ]
  %i.lu = and i32 %4, 1
  %.not23 = icmp eq i32 %i.lu, 0
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.lv = load i8, ptr %.0.lcssa, align 1, !tbaa !12
  %i.lw = zext i8 %i.lv to i32
  %i.lx = load i8, ptr %.020.lcssa, align 1, !tbaa !12
  %i.ly = zext i8 %i.lx to i32                    ; 2 uses
  %i.lz = load i8, ptr %.022.lcssa, align 1, !tbaa !12
  %i.ma = zext i8 %i.lz to i32                    ; 2 uses
  %i.mb = mul nuw nsw i32 %i.lw, 19077
  %i.mc = lshr i32 %i.mb, 8                       ; 3 uses
  %i.md = mul nuw nsw i32 %i.ma, 26149
  %i.me = lshr i32 %i.md, 8
  %i.mf = add nuw nsw i32 %i.me, %i.mc            ; 2 uses
  %i.mg = add nsw i32 %i.mf, -14234               ; 2 uses
  %i.mh = icmp ult i32 %i.mg, 16384
  %i.mi = lshr i32 %i.mg, 6
  %i.mj = icmp samesign ult i32 %i.mf, 14234
  %i.mk = select i1 %i.mj, i32 0, i32 255
  %i.ml = select i1 %i.mh, i32 %i.mi, i32 %i.mk
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %.021.lcssa, align 1, !tbaa !12
  %i.mn = mul nuw nsw i32 %i.ly, 6419
  %i.mo = lshr i32 %i.mn, 8
  %i.mp = mul nuw nsw i32 %i.ma, 13320
  %i.mq = lshr i32 %i.mp, 8
  %i.mr = add nuw nsw i32 %i.mo, %i.mq
  %i.ms = sub nsw i32 %i.mc, %i.mr                ; 2 uses
  %i.mt = add nsw i32 %i.ms, 8708                 ; 2 uses
  %i.mu = icmp ult i32 %i.mt, 16384
  %i.mv = lshr i32 %i.mt, 6
  %i.mw = icmp slt i32 %i.ms, -8708
  %i.mx = select i1 %i.mw, i32 0, i32 255
  %i.my = select i1 %i.mu, i32 %i.mv, i32 %i.mx
  %i.mz = trunc i32 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !12
  %i.nb = mul nuw nsw i32 %i.ly, 33050
  %i.nc = lshr i32 %i.nb, 8
  %i.nd = add nuw nsw i32 %i.nc, %i.mc            ; 2 uses
  %i.ne = add nsw i32 %i.nd, -17685               ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 16384
  %i.ng = lshr i32 %i.ne, 6
  %i.nh = icmp samesign ult i32 %i.nd, 17685
  %i.ni = select i1 %i.nh, i32 0, i32 255
  %i.nj = select i1 %i.nf, i32 %i.ng, i32 %i.ni
  %i.nk = trunc i32 %i.nj to i8
  %i.nl = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 2
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgbaRow(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef writeonly captures(address) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 %i.c       ; 7 uses
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -8                     ; 3 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add nsw i64 %i.c, -8                     ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 2
  %i.k = lshr exact i64 %i.h, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %scevgep41 = getelementptr i8, ptr %1, i64 %i.l
  %scevgep42 = getelementptr i8, ptr %2, i64 %i.l
  %bound0 = icmp ult ptr %3, %scevgep
  %bound1 = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %3, %scevgep41
  %bound144 = icmp ult ptr %1, %i.d
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %bound046 = icmp ult ptr %3, %scevgep42
  %bound147 = icmp ult ptr %2, %i.d
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.e, 120
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
  %n.vec = and i64 %i.g, 4611686018427387888      ; 7 uses
  %i.m = shl nuw nsw i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %3, i64 %i.p
  %i.r = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.s = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.s  ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.t, i64 2
  %i.u = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.u, i64 4
  %i.v = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.v, i64 6
  %i.w = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.w, i64 8
  %i.x = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.x, i64 10
  %i.y = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.y, i64 12
  %i.z = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.z, i64 14
  %i.aa = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.aa, i64 16
  %i.ab = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ab, i64 18
  %i.ac = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ac, i64 20
  %i.ad = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ad, i64 22
  %i.ae = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.ae, i64 24
  %i.af = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.af, i64 26
  %i.ag = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ag, i64 28
  %i.ah = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.ah, i64 30
  %next.gep66 = getelementptr i8, ptr %1, i64 %index
  %i.ai = shl i64 %index, 3
  %next.gep67 = getelementptr i8, ptr %3, i64 %i.ai
  %next.gep68 = getelementptr i8, ptr %2, i64 %index
  %i.aj = load i8, ptr %next.gep, align 1, !tbaa !12, !alias.scope !38
  %i.ak = load i8, ptr %next.gep51, align 1, !tbaa !12, !alias.scope !38
  %i.al = load i8, ptr %next.gep52, align 1, !tbaa !12, !alias.scope !38
  %i.am = load i8, ptr %next.gep53, align 1, !tbaa !12, !alias.scope !38
  %i.an = load i8, ptr %next.gep54, align 1, !tbaa !12, !alias.scope !38
  %i.ao = load i8, ptr %next.gep55, align 1, !tbaa !12, !alias.scope !38
  %i.ap = load i8, ptr %next.gep56, align 1, !tbaa !12, !alias.scope !38
  %i.aq = load i8, ptr %next.gep57, align 1, !tbaa !12, !alias.scope !38
  %i.ar = load i8, ptr %next.gep58, align 1, !tbaa !12, !alias.scope !38
  %i.as = load i8, ptr %next.gep59, align 1, !tbaa !12, !alias.scope !38
  %i.at = load i8, ptr %next.gep60, align 1, !tbaa !12, !alias.scope !38
  %i.au = load i8, ptr %next.gep61, align 1, !tbaa !12, !alias.scope !38
  %i.av = load i8, ptr %next.gep62, align 1, !tbaa !12, !alias.scope !38
end_hunk_0
begin_hunk_1_@YuvToBgrRow:bb.a
  %i.ey = icmp ult <16 x i32> %i.ex, splat (i32 16384)
  %i.ez = lshr <16 x i32> %i.ex, splat (i32 6)
  %i.fa = icmp samesign ult <16 x i32> %i.ew, splat (i32 14234)
  %i.fb = select <16 x i1> %i.fa, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.fc = select <16 x i1> %i.ey, <16 x i32> %i.ez, <16 x i32> %i.fb
  %i.fd = trunc <16 x i32> %i.fc to <16 x i8>
  %i.fe = shufflevector <16 x i32> %i.bz, <16 x i32> %i.ch, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ff = shufflevector <16 x i1> %i.ca, <16 x i1> %i.ci, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fg = shufflevector <16 x i32> %i.cm, <16 x i32> %i.en, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fh = shufflevector <16 x i32> %i.cl, <16 x i32> %i.em, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fi = icmp samesign ult <32 x i32> %i.fh, <i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685>
  %i.fj = shufflevector <16 x i32> %i.bz, <16 x i32> %i.ch, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fk = shufflevector <16 x i32> %i.cm, <16 x i32> %i.en, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fl = shufflevector <32 x i32> %i.fj, <32 x i32> %i.fk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fm = icmp ult <64 x i32> %i.fl, splat (i32 16384)
  %i.fn = shufflevector <32 x i32> %i.fe, <32 x i32> %i.fg, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fo = lshr <64 x i32> %i.fn, splat (i32 6)
  %i.fp = shufflevector <32 x i1> %i.ff, <32 x i1> %i.fi, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fq = select <64 x i1> %i.fp, <64 x i32> zeroinitializer, <64 x i32> splat (i32 255)
  %i.fr = select <64 x i1> %i.fm, <64 x i32> %i.fo, <64 x i32> %i.fq
  %i.fs = trunc <64 x i32> %i.fr to <64 x i8>
  %i.ft = shufflevector <16 x i8> %i.ev, <16 x i8> %i.fd, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <64 x i8> %i.fs, <64 x i8> %i.ft, <96 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95>
  store <96 x i8> %interleaved.vec, ptr %next.gep68, align 1, !tbaa !12, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.g, 9223372036854775804    ; 6 uses
  %i.fv = shl nuw i64 %n.vec75, 1
  %i.fw = getelementptr i8, ptr %0, i64 %i.fv     ; 2 uses
  %i.fx = getelementptr i8, ptr %1, i64 %n.vec75  ; 2 uses
  %i.fy = mul i64 %n.vec75, 6
  %i.fz = getelementptr i8, ptr %3, i64 %i.fy
  %i.ga = getelementptr i8, ptr %2, i64 %n.vec75  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 5 uses
  %i.gb = shl i64 %index76, 1                     ; 4 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.gb ; 2 uses
  %i.gc = getelementptr i8, ptr %0, i64 %i.gb     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.gc, i64 2
  %i.gd = getelementptr i8, ptr %0, i64 %i.gb     ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.gd, i64 4
  %i.ge = getelementptr i8, ptr %0, i64 %i.gb     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ge, i64 6
  %next.gep81 = getelementptr i8, ptr %1, i64 %index76
  %i.gf = mul i64 %index76, 6
  %next.gep82 = getelementptr i8, ptr %3, i64 %i.gf
  %next.gep83 = getelementptr i8, ptr %2, i64 %index76
  %i.gg = load i8, ptr %next.gep77, align 1, !tbaa !12, !alias.scope !51
  %i.gh = load i8, ptr %next.gep78, align 1, !tbaa !12, !alias.scope !51
  %i.gi = load i8, ptr %next.gep79, align 1, !tbaa !12, !alias.scope !51
  %i.gj = load i8, ptr %next.gep80, align 1, !tbaa !12, !alias.scope !51
  %i.gk = insertelement <4 x i8> poison, i8 %i.gg, i64 0
  %i.gl = insertelement <4 x i8> %i.gk, i8 %i.gh, i64 1
  %i.gm = insertelement <4 x i8> %i.gl, i8 %i.gi, i64 2
  %i.gn = insertelement <4 x i8> %i.gm, i8 %i.gj, i64 3
  %i.go = zext <4 x i8> %i.gn to <4 x i32>
  %wide.load84 = load <4 x i8>, ptr %next.gep81, align 1, !tbaa !12, !alias.scope !54
  %i.gp = zext <4 x i8> %wide.load84 to <4 x i32> ; 2 uses
  %wide.load85 = load <4 x i8>, ptr %next.gep83, align 1, !tbaa !12, !alias.scope !56
  %i.gq = zext <4 x i8> %wide.load85 to <4 x i32> ; 2 uses
  %i.gr = mul nuw nsw <4 x i32> %i.go, splat (i32 19077)
  %i.gs = lshr <4 x i32> %i.gr, splat (i32 8)     ; 3 uses
  %i.gt = mul nuw nsw <4 x i32> %i.gp, splat (i32 33050)
  %i.gu = lshr <4 x i32> %i.gt, splat (i32 8)     ; 2 uses
  %i.gv = add nuw nsw <4 x i32> %i.gu, %i.gs      ; 2 uses
  %i.gw = add nsw <4 x i32> %i.gv, splat (i32 -17685) ; 2 uses
  %i.gx = icmp ult <4 x i32> %i.gw, splat (i32 16384)
  %i.gy = lshr <4 x i32> %i.gw, splat (i32 6)
  %i.gz = icmp samesign ult <4 x i32> %i.gv, splat (i32 17685)
  %i.ha = select <4 x i1> %i.gz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hb = select <4 x i1> %i.gx, <4 x i32> %i.gy, <4 x i32> %i.ha
  %i.hc = mul nuw nsw <4 x i32> %i.gp, splat (i32 6419)
  %i.hd = lshr <4 x i32> %i.hc, splat (i32 8)
  %i.he = mul nuw nsw <4 x i32> %i.gq, splat (i32 13320)
  %i.hf = lshr <4 x i32> %i.he, splat (i32 8)
  %i.hg = add nuw nsw <4 x i32> %i.hf, %i.hd      ; 2 uses
  %i.hh = sub nsw <4 x i32> %i.gs, %i.hg          ; 2 uses
  %i.hi = add nsw <4 x i32> %i.hh, splat (i32 8708) ; 2 uses
  %i.hj = icmp ult <4 x i32> %i.hi, splat (i32 16384)
  %i.hk = lshr <4 x i32> %i.hi, splat (i32 6)
  %i.hl = icmp slt <4 x i32> %i.hh, splat (i32 -8708)
  %i.hm = select <4 x i1> %i.hl, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hn = select <4 x i1> %i.hj, <4 x i32> %i.hk, <4 x i32> %i.hm
  %i.ho = mul nuw nsw <4 x i32> %i.gq, splat (i32 26149)
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 8)     ; 2 uses
  %i.hq = add nuw nsw <4 x i32> %i.hp, %i.gs      ; 2 uses
  %i.hr = add nsw <4 x i32> %i.hq, splat (i32 -14234) ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %next.gep77, i64 1
  %i.ht = getelementptr i8, ptr %i.gc, i64 3
  %i.hu = getelementptr i8, ptr %i.gd, i64 5
  %i.hv = getelementptr i8, ptr %i.ge, i64 7
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !12, !alias.scope !51
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !12, !alias.scope !51
  %i.hy = load i8, ptr %i.hu, align 1, !tbaa !12, !alias.scope !51
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !12, !alias.scope !51
  %i.ia = insertelement <4 x i8> poison, i8 %i.hw, i64 0
  %i.ib = insertelement <4 x i8> %i.ia, i8 %i.hx, i64 1
  %i.ic = insertelement <4 x i8> %i.ib, i8 %i.hy, i64 2
  %i.id = insertelement <4 x i8> %i.ic, i8 %i.hz, i64 3
  %i.ie = zext <4 x i8> %i.id to <4 x i32>
  %i.if = mul nuw nsw <4 x i32> %i.ie, splat (i32 19077)
  %i.ig = lshr <4 x i32> %i.if, splat (i32 8)     ; 3 uses
  %i.ih = add nuw nsw <4 x i32> %i.ig, %i.gu      ; 2 uses
  %i.ii = add nsw <4 x i32> %i.ih, splat (i32 -17685) ; 2 uses
  %i.ij = sub nsw <4 x i32> %i.ig, %i.hg          ; 2 uses
  %i.ik = add nsw <4 x i32> %i.ij, splat (i32 8708) ; 2 uses
  %i.il = icmp ult <4 x i32> %i.ik, splat (i32 16384)
  %i.im = lshr <4 x i32> %i.ik, splat (i32 6)
  %i.in = icmp slt <4 x i32> %i.ij, splat (i32 -8708)
  %i.io = select <4 x i1> %i.in, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ip = select <4 x i1> %i.il, <4 x i32> %i.im, <4 x i32> %i.io
  %i.iq = add nuw nsw <4 x i32> %i.ig, %i.hp      ; 2 uses
  %i.ir = add nsw <4 x i32> %i.iq, splat (i32 -14234) ; 2 uses
  %i.is = icmp ult <4 x i32> %i.ir, splat (i32 16384)
  %i.it = lshr <4 x i32> %i.ir, splat (i32 6)
  %i.iu = icmp samesign ult <4 x i32> %i.iq, splat (i32 14234)
  %i.iv = select <4 x i1> %i.iu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.iw = select <4 x i1> %i.is, <4 x i32> %i.it, <4 x i32> %i.iv
  %i.ix = shufflevector <4 x i32> %i.hb, <4 x i32> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iy = shufflevector <4 x i32> %i.hr, <4 x i32> %i.ii, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iz = icmp ult <8 x i32> %i.iy, splat (i32 16384)
  %i.ja = shufflevector <4 x i32> %i.hr, <4 x i32> %i.ii, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jb = lshr <8 x i32> %i.ja, splat (i32 6)
  %i.jc = shufflevector <4 x i32> %i.hq, <4 x i32> %i.ih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jd = icmp samesign ult <8 x i32> %i.jc, <i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685>
  %i.je = select <8 x i1> %i.jd, <8 x i32> zeroinitializer, <8 x i32> splat (i32 255)
  %i.jf = select <8 x i1> %i.iz, <8 x i32> %i.jb, <8 x i32> %i.je
  %i.jg = shufflevector <8 x i32> %i.ix, <8 x i32> %i.jf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jh = trunc <16 x i32> %i.jg to <16 x i8>
  %i.ji = shufflevector <4 x i32> %i.ip, <4 x i32> %i.iw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jj = trunc <16 x i32> %i.ji to <16 x i8>
  %interleaved.vec86 = shufflevector <16 x i8> %i.jh, <16 x i8> %i.jj, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x i8> %interleaved.vec86, ptr %next.gep82, align 1, !tbaa !12, !alias.scope !58, !noalias !60
  %index.next87 = add nuw i64 %index76, 4         ; 2 uses
  %i.jk = icmp eq i64 %index.next87, %n.vec75
  br i1 %i.jk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %i.g, %n.vec75
  br i1 %cmp.n88, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.fw, %vec.epilog.middle.block ]
  %.02029.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.fx, %vec.epilog.middle.block ]
  %.02128.ph = phi ptr [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ]
  %.02227.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ga, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.lq, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader ] ; 3 uses
  %.02029 = phi ptr [ %i.lr, %.lr.ph ], [ %.02029.ph, %.lr.ph.preheader ] ; 2 uses
  %.02128 = phi ptr [ %i.lt, %.lr.ph ], [ %.02128.ph, %.lr.ph.preheader ] ; 4 uses
  %.02227 = phi ptr [ %i.ls, %.lr.ph ], [ %.02227.ph, %.lr.ph.preheader ] ; 2 uses
  %i.jl = load i8, ptr %.02029, align 1, !tbaa !12
  %i.jm = load i8, ptr %.02227, align 1, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !12
  %i.jp = load i8, ptr %.030, align 1, !tbaa !12
  %i.jq = zext i8 %i.jo to i32
  %i.jr = zext i8 %i.jm to i32                    ; 2 uses
  %i.js = zext i8 %i.jp to i32
  %i.jt = zext i8 %i.jl to i32                    ; 2 uses
  %i.ju = mul nuw nsw i32 %i.jt, 6419
  %i.jv = lshr i32 %i.ju, 8
  %i.jw = mul nuw nsw i32 %i.jr, 13320
  %i.jx = lshr i32 %i.jw, 8
  %i.jy = add nuw nsw i32 %i.jx, %i.jv            ; 2 uses
  %i.jz = mul nuw nsw i32 %i.jq, 19077
  %i.ka = mul nuw nsw i32 %i.jr, 26149
  %i.kb = mul nuw nsw i32 %i.js, 19077
  %i.kc = mul nuw nsw i32 %i.jt, 33050
  %i.kd = lshr i32 %i.jz, 8                       ; 3 uses
  %i.ke = lshr i32 %i.ka, 8                       ; 2 uses
  %i.kf = lshr i32 %i.kb, 8                       ; 3 uses
  %i.kg = lshr i32 %i.kc, 8                       ; 2 uses
  %i.kh = add nuw nsw i32 %i.kd, %i.kg
  %i.ki = add nuw nsw i32 %i.ke, %i.kf
  %i.kj = sub nsw i32 %i.kf, %i.jy
  %i.kk = add nuw nsw i32 %i.kg, %i.kf
  %i.kl = insertelement <4 x i32> poison, i32 %i.kk, i64 0
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.kj, i64 1
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.ki, i64 2
  %i.ko = insertelement <4 x i32> %i.kn, i32 %i.kh, i64 3 ; 3 uses
  %i.kp = add nsw <4 x i32> %i.ko, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %i.kq = icmp ult <4 x i32> %i.kp, splat (i32 16384)
  %i.kr = lshr <4 x i32> %i.kp, splat (i32 6)
  %i.ks = icmp ult <4 x i32> %i.ko, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.kt = icmp slt <4 x i32> %i.ko, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %i.ku = shufflevector <4 x i1> %i.ks, <4 x i1> %i.kt, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.kv = select <4 x i1> %i.ku, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.kw = select <4 x i1> %i.kq, <4 x i32> %i.kr, <4 x i32> %i.kv
  %i.kx = trunc <4 x i32> %i.kw to <4 x i8>
  store <4 x i8> %i.kx, ptr %.02128, align 1, !tbaa !12
  %i.ky = sub nsw i32 %i.kd, %i.jy                ; 2 uses
  %i.kz = add nsw i32 %i.ky, 8708                 ; 2 uses
  %i.la = icmp ult i32 %i.kz, 16384
  %i.lb = lshr i32 %i.kz, 6
  %i.lc = icmp slt i32 %i.ky, -8708
  %i.ld = select i1 %i.lc, i32 0, i32 255
  %i.le = select i1 %i.la, i32 %i.lb, i32 %i.ld
  %i.lf = trunc i32 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !12
  %i.lh = add nuw nsw i32 %i.kd, %i.ke            ; 2 uses
  %i.li = add nsw i32 %i.lh, -14234               ; 2 uses
  %i.lj = icmp ult i32 %i.li, 16384
  %i.lk = lshr i32 %i.li, 6
  %i.ll = icmp samesign ult i32 %i.lh, 14234
  %i.lm = select i1 %i.ll, i32 0, i32 255
  %i.ln = select i1 %i.lj, i32 %i.lk, i32 %i.lm
  %i.lo = trunc i32 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %.02128, i64 5
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.030, i64 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.02029, i64 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.02227, i64 1 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.02128, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.lt, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.022.lcssa = phi ptr [ %2, %bb.a ], [ %i.ga, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ls, %.lr.ph ]
  %.021.lcssa = phi ptr [ %3, %bb.a ], [ %i.d, %vec.epilog.middle.block ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph ] ; 3 uses
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.fx, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.lr, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.fw, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %i.lq, %.lr.ph ]
  %i.lu = and i32 %4, 1
  %.not23 = icmp eq i32 %i.lu, 0
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.lv = load i8, ptr %.0.lcssa, align 1, !tbaa !12
  %i.lw = zext i8 %i.lv to i32
  %i.lx = load i8, ptr %.020.lcssa, align 1, !tbaa !12
  %i.ly = zext i8 %i.lx to i32                    ; 2 uses
  %i.lz = load i8, ptr %.022.lcssa, align 1, !tbaa !12
  %i.ma = zext i8 %i.lz to i32                    ; 2 uses
  %i.mb = mul nuw nsw i32 %i.lw, 19077
  %i.mc = lshr i32 %i.mb, 8                       ; 3 uses
  %i.md = mul nuw nsw i32 %i.ly, 33050
  %i.me = lshr i32 %i.md, 8
  %i.mf = add nuw nsw i32 %i.me, %i.mc            ; 2 uses
  %i.mg = add nsw i32 %i.mf, -17685               ; 2 uses
  %i.mh = icmp ult i32 %i.mg, 16384
  %i.mi = lshr i32 %i.mg, 6
  %i.mj = icmp samesign ult i32 %i.mf, 17685
  %i.mk = select i1 %i.mj, i32 0, i32 255
  %i.ml = select i1 %i.mh, i32 %i.mi, i32 %i.mk
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %.021.lcssa, align 1, !tbaa !12
  %i.mn = mul nuw nsw i32 %i.ly, 6419
  %i.mo = lshr i32 %i.mn, 8
  %i.mp = mul nuw nsw i32 %i.ma, 13320
  %i.mq = lshr i32 %i.mp, 8
  %i.mr = add nuw nsw i32 %i.mo, %i.mq
  %i.ms = sub nsw i32 %i.mc, %i.mr                ; 2 uses
  %i.mt = add nsw i32 %i.ms, 8708                 ; 2 uses
  %i.mu = icmp ult i32 %i.mt, 16384
  %i.mv = lshr i32 %i.mt, 6
  %i.mw = icmp slt i32 %i.ms, -8708
  %i.mx = select i1 %i.mw, i32 0, i32 255
  %i.my = select i1 %i.mu, i32 %i.mv, i32 %i.mx
  %i.mz = trunc i32 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !12
  %i.nb = mul nuw nsw i32 %i.ma, 26149
  %i.nc = lshr i32 %i.nb, 8
  %i.nd = add nuw nsw i32 %i.nc, %i.mc            ; 2 uses
  %i.ne = add nsw i32 %i.nd, -14234               ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 16384
  %i.ng = lshr i32 %i.ne, 6
  %i.nh = icmp samesign ult i32 %i.nd, 14234
  %i.ni = select i1 %i.nh, i32 0, i32 255
  %i.nj = select i1 %i.nf, i32 %i.ng, i32 %i.ni
  %i.nk = trunc i32 %i.nj to i8
  %i.nl = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 2
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgraRow(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef writeonly captures(address) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr i8, ptr %3, i64 %i.c       ; 7 uses
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -8                     ; 3 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add nsw i64 %i.c, -8                     ; 2 uses
  %i.i = lshr exact i64 %i.h, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.j, i64 2
  %i.k = lshr exact i64 %i.h, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %scevgep41 = getelementptr i8, ptr %1, i64 %i.l
  %scevgep42 = getelementptr i8, ptr %2, i64 %i.l
  %bound0 = icmp ult ptr %3, %scevgep
  %bound1 = icmp ult ptr %0, %i.d
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %3, %scevgep41
  %bound144 = icmp ult ptr %1, %i.d
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %bound046 = icmp ult ptr %3, %scevgep42
  %bound147 = icmp ult ptr %2, %i.d
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.e, 120
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
  %n.vec = and i64 %i.g, 4611686018427387888      ; 7 uses
  %i.m = shl nuw nsw i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %3, i64 %i.p
  %i.r = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.s = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.s  ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.t, i64 2
  %i.u = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.u, i64 4
  %i.v = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.v, i64 6
  %i.w = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.w, i64 8
  %i.x = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.x, i64 10
  %i.y = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.y, i64 12
  %i.z = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.z, i64 14
  %i.aa = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.aa, i64 16
  %i.ab = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ab, i64 18
  %i.ac = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ac, i64 20
  %i.ad = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ad, i64 22
  %i.ae = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.ae, i64 24
  %i.af = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.af, i64 26
  %i.ag = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ag, i64 28
  %i.ah = getelementptr i8, ptr %0, i64 %i.s      ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.ah, i64 30
  %next.gep66 = getelementptr i8, ptr %1, i64 %index
  %i.ai = shl i64 %index, 3
  %next.gep67 = getelementptr i8, ptr %3, i64 %i.ai
  %next.gep68 = getelementptr i8, ptr %2, i64 %index
  %i.aj = load i8, ptr %next.gep, align 1, !tbaa !12, !alias.scope !64
  %i.ak = load i8, ptr %next.gep51, align 1, !tbaa !12, !alias.scope !64
  %i.al = load i8, ptr %next.gep52, align 1, !tbaa !12, !alias.scope !64
  %i.am = load i8, ptr %next.gep53, align 1, !tbaa !12, !alias.scope !64
  %i.an = load i8, ptr %next.gep54, align 1, !tbaa !12, !alias.scope !64
  %i.ao = load i8, ptr %next.gep55, align 1, !tbaa !12, !alias.scope !64
  %i.ap = load i8, ptr %next.gep56, align 1, !tbaa !12, !alias.scope !64
  %i.aq = load i8, ptr %next.gep57, align 1, !tbaa !12, !alias.scope !64
  %i.ar = load i8, ptr %next.gep58, align 1, !tbaa !12, !alias.scope !64
  %i.as = load i8, ptr %next.gep59, align 1, !tbaa !12, !alias.scope !64
  %i.at = load i8, ptr %next.gep60, align 1, !tbaa !12, !alias.scope !64
  %i.au = load i8, ptr %next.gep61, align 1, !tbaa !12, !alias.scope !64
  %i.av = load i8, ptr %next.gep62, align 1, !tbaa !12, !alias.scope !64
end_hunk_1
