Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_row_q5_K_ref:bb.a
.loopexit:                                        ; preds = %vector.body, %get_scale_min_k4.exit
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, 8
  br i1 %exitcond209.not, label %.preheader, label %bb.l, !llvm.loop !325

.preheader.1:                                     ; preds = %bb.ai
  %i.qy = getelementptr inbounds nuw i8, ptr %i.jx, i64 80
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.preheader.1
  %indvars.iv210.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next211.1, %bb.s ] ; 5 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv210.1 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !34  ; 3 uses
  %i.rc = icmp ugt i8 %i.rb, 15
  br i1 %i.rc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.rd = add i8 %i.rb, -16
  %i.re = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210.1 ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !34
  %i.rg = or i8 %i.rf, 4
  store i8 %i.rg, ptr %i.re, align 1, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0132.1 = phi i8 [ %i.rd, %bb.p ], [ %i.rb, %bb.o ]
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qz, i64 96
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !34  ; 3 uses
  %i.rj = icmp ugt i8 %i.ri, 15
  br i1 %i.rj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.rk = add i8 %i.ri, -16
  %i.rl = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210.1 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !34
  %i.rn = or i8 %i.rm, 8
  store i8 %i.rn, ptr %i.rl, align 1, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.1 = phi i8 [ %i.rk, %bb.r ], [ %i.ri, %bb.q ]
  %i.ro = shl i8 %.0.1, 4
  %i.rp = or i8 %i.ro, %.0132.1
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 %indvars.iv210.1
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !34
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210.1, 1 ; 2 uses
  %exitcond213.1.not = icmp eq i64 %indvars.iv.next211.1, 32
  br i1 %exitcond213.1.not, label %.preheader.2, label %bb.o, !llvm.loop !326

.preheader.2:                                     ; preds = %bb.s
  %i.rr = getelementptr inbounds nuw i8, ptr %i.jx, i64 112
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader.2
  %indvars.iv210.2 = phi i64 [ 0, %.preheader.2 ], [ %indvars.iv.next211.2, %bb.x ] ; 5 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv210.2 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 128
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !34  ; 3 uses
  %i.rv = icmp ugt i8 %i.ru, 15
  br i1 %i.rv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.rw = add i8 %i.ru, -16
  %i.rx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210.2 ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !34
  %i.rz = or i8 %i.ry, 16
  store i8 %i.rz, ptr %i.rx, align 1, !tbaa !34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0132.2 = phi i8 [ %i.rw, %bb.u ], [ %i.ru, %bb.t ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rs, i64 160
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !34  ; 3 uses
  %i.sc = icmp ugt i8 %i.sb, 15
  br i1 %i.sc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.sd = add i8 %i.sb, -16
  %i.se = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210.2 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !34
  %i.sg = or i8 %i.sf, 32
  store i8 %i.sg, ptr %i.se, align 1, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.2 = phi i8 [ %i.sd, %bb.w ], [ %i.sb, %bb.v ]
  %i.sh = shl i8 %.0.2, 4
  %i.si = or i8 %i.sh, %.0132.2
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rr, i64 %indvars.iv210.2
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !34
  %indvars.iv.next211.2 = add nuw nsw i64 %indvars.iv210.2, 1 ; 2 uses
  %exitcond213.2.not = icmp eq i64 %indvars.iv.next211.2, 32
  br i1 %exitcond213.2.not, label %.preheader.3, label %bb.t, !llvm.loop !326

.preheader.3:                                     ; preds = %bb.x
  %i.sk = getelementptr inbounds nuw i8, ptr %i.jx, i64 144
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.preheader.3
  %indvars.iv210.3 = phi i64 [ 0, %.preheader.3 ], [ %indvars.iv.next211.3, %bb.ac ] ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv210.3 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 192
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !34  ; 3 uses
  %i.so = icmp ugt i8 %i.sn, 15
  br i1 %i.so, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.sp = add i8 %i.sn, -16
  %i.sq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210.3 ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !34
  %i.ss = or i8 %i.sr, 64
  store i8 %i.ss, ptr %i.sq, align 1, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0132.3 = phi i8 [ %i.sp, %bb.z ], [ %i.sn, %bb.y ]
  %i.st = getelementptr inbounds nuw i8, ptr %i.sl, i64 224
  %i.su = load i8, ptr %i.st, align 1, !tbaa !34  ; 3 uses
  %i.sv = icmp ugt i8 %i.su, 15
  br i1 %i.sv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.sw = add i8 %i.su, -16
  %i.sx = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210.3 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !34
  %i.sz = or i8 %i.sy, -128
  store i8 %i.sz, ptr %i.sx, align 1, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.3 = phi i8 [ %i.sw, %bb.ab ], [ %i.su, %bb.aa ]
  %i.ta = shl i8 %.0.3, 4
  %i.tb = or i8 %i.ta, %.0132.3
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sk, i64 %indvars.iv210.3
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !34
  %indvars.iv.next211.3 = add nuw nsw i64 %indvars.iv210.3, 1 ; 2 uses
  %exitcond213.3.not = icmp eq i64 %indvars.iv.next211.3, 32
  br i1 %exitcond213.3.not, label %bb.ad, label %bb.y, !llvm.loop !326

bb.ad:                                            ; preds = %bb.ac
  %i.td = getelementptr inbounds nuw i8, ptr %.0138187, i64 1024
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next217, %i.f
  br i1 %exitcond219.not, label %._crit_edge, label %.preheader165, !llvm.loop !327

bb.ae:                                            ; preds = %.preheader, %bb.ai
  %indvars.iv210 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next211, %bb.ai ] ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv210 ; 2 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !34  ; 3 uses
  %i.tg = icmp ugt i8 %i.tf, 15
  br i1 %i.tg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.th = add i8 %i.tf, -16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210 ; 2 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !34
  %i.tk = or i8 %i.tj, 1
  store i8 %i.tk, ptr %i.ti, align 1, !tbaa !34
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0132 = phi i8 [ %i.th, %bb.af ], [ %i.tf, %bb.ae ]
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !34  ; 3 uses
  %i.tn = icmp ugt i8 %i.tm, 15
  br i1 %i.tn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.to = add i8 %i.tm, -16
  %i.tp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv210 ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !34
  %i.tr = or i8 %i.tq, 2
  store i8 %i.tr, ptr %i.tp, align 1, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0 = phi i8 [ %i.to, %bb.ah ], [ %i.tm, %bb.ag ]
  %i.ts = shl i8 %.0, 4
  %i.tt = or i8 %i.ts, %.0132
  %i.tu = getelementptr inbounds nuw i8, ptr %i.mo, i64 %indvars.iv210
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !34
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next211, 32
  br i1 %exitcond213.not, label %.preheader.1, label %bb.ae, !llvm.loop !326
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dequantize_row_q5_K(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %2, 256
  %i.b = icmp sgt i64 %2, 255
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.05475 = phi ptr [ %.lcssa92, %bb.b ], [ %1, %bb.a ]
  %i.c = mul i64 %indvars.iv85, 176
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %scevgep103 = getelementptr i8, ptr %i.d, i64 176
  %i.e = mul i64 %indvars.iv85, 176
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 176
  %i.g = getelementptr inbounds nuw [176 x i8], ptr %0, i64 %indvars.iv85 ; 18 uses
  %i.h = getelementptr i8, ptr %i.g, i64 48       ; 5 uses
  %i.i = getelementptr i8, ptr %i.g, i64 16       ; 8 uses
  %i.j = load <2 x i16>, ptr %i.g, align 4, !tbaa !34 ; 3 uses
  %.inner = and <2 x i16> %i.j, splat (i16 32767)
  %i.k = zext nneg <2 x i16> %.inner to <2 x i32>
  %i.l = or disjoint <2 x i32> %i.k, splat (i32 1056964608)
  %i.m = bitcast <2 x i32> %i.l to <2 x float>
  %i.n = fadd <2 x float> %i.m, splat (float -5.000000e-01)
  %i.o = zext <2 x i16> %i.j to <2 x i32>
  %i.p = shl <2 x i32> %i.o, splat (i32 17)       ; 2 uses
  %i.q = lshr exact <2 x i32> %i.p, splat (i32 4)
  %i.r = or disjoint <2 x i32> %i.q, splat (i32 1879048192)
  %i.s = bitcast <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %i.s, splat (float 1.925930e-34)
  %i.u = icmp ult <2 x i32> %i.p, splat (i32 134217728)
  %i.v = select <2 x i1> %i.u, <2 x float> %i.n, <2 x float> %i.t
  %i.w = bitcast <2 x float> %i.v to <2 x i32>
  %i.x = sext <2 x i16> %i.j to <2 x i32>
  %i.y = and <2 x i32> %i.x, splat (i32 -2147483648)
  %i.z = or <2 x i32> %i.y, %i.w                  ; 2 uses
  %bc = bitcast <2 x i32> %i.z to <2 x float>
  %i.aa = extractelement <2 x float> %bc, i64 0   ; 2 uses
  %bc126 = bitcast <2 x i32> %i.z to <2 x float>
  %i.ab = extractelement <2 x float> %bc126, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.g, i64 20
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.g, i64 28
  %i.ag = getelementptr i8, ptr %i.g, i64 32
  %i.ah = getelementptr i8, ptr %i.g, i64 36
  %i.ai = getelementptr i8, ptr %i.g, i64 40
  %i.aj = getelementptr i8, ptr %i.g, i64 44
  %i.ak = getelementptr i8, ptr %i.g, i64 20
  %i.al = getelementptr i8, ptr %i.g, i64 24
  %i.am = getelementptr i8, ptr %i.g, i64 28
  %i.an = getelementptr i8, ptr %i.g, i64 32
  %i.ao = getelementptr i8, ptr %i.g, i64 36
  %i.ap = getelementptr i8, ptr %i.g, i64 40
  %i.aq = getelementptr i8, ptr %i.g, i64 44
  br label %bb.c

bb.b:                                             ; preds = %middle.block
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, %i.a
  br i1 %exitcond88.not, label %._crit_edge, label %.lr.ph, !llvm.loop !342

bb.c:                                             ; preds = %.lr.ph, %middle.block
  %indvars.iv83 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next84, %middle.block ] ; 5 uses
  %.04874 = phi i32 [ 0, %.lr.ph ], [ %i.jg, %middle.block ] ; 2 uses
  %.04973 = phi i8 [ 2, %.lr.ph ], [ %i.jf, %middle.block ] ; 4 uses
  %.05072 = phi i8 [ 1, %.lr.ph ], [ %i.je, %middle.block ] ; 4 uses
  %.05270 = phi ptr [ %i.h, %.lr.ph ], [ %i.jd, %middle.block ] ; 21 uses
  %.169 = phi ptr [ %.05475, %.lr.ph ], [ %.lcssa92, %middle.block ] ; 13 uses
  %i.ar = icmp samesign ult i64 %indvars.iv83, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv83 ; 5 uses
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34, !alias.scope !362, !noalias !363
  %i.au = and i8 %i.at, 63
  %i.av = getelementptr i8, ptr %i.as, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34, !alias.scope !362, !noalias !363
  %i.ax = and i8 %i.aw, 63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv83 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34, !alias.scope !364, !noalias !365
  %i.bb = and i8 %i.ba, 63
  %i.bc = getelementptr i8, ptr %i.ay, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !34, !alias.scope !364, !noalias !365
  %i.be = and i8 %i.bd, 63
  br label %get_scale_min_k4.exit61

bb.e:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34, !alias.scope !362, !noalias !363 ; 2 uses
  %i.bh = and i8 %i.bg, 15
  %i.bi = getelementptr i8, ptr %i.as, i64 -4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34, !alias.scope !362, !noalias !363
  %i.bk = lshr i8 %i.bj, 2
  %i.bl = and i8 %i.bk, 48
  %i.bm = or disjoint i8 %i.bl, %i.bh
  %i.bn = lshr i8 %i.bg, 4
  %i.bo = load i8, ptr %i.as, align 1, !tbaa !34, !alias.scope !362, !noalias !363
  %i.bp = lshr i8 %i.bo, 2
  %i.bq = and i8 %i.bp, 48
  %i.br = or disjoint i8 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv83 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 5
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !34, !alias.scope !364, !noalias !365 ; 2 uses
  %i.bw = and i8 %i.bv, 15
  %i.bx = getelementptr i8, ptr %i.bs, i64 -3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !34, !alias.scope !364, !noalias !365
  %i.bz = lshr i8 %i.by, 2
  %i.ca = and i8 %i.bz, 48
  %i.cb = or disjoint i8 %i.ca, %i.bw
  %i.cc = lshr i8 %i.bv, 4
  %i.cd = load i8, ptr %i.bt, align 1, !tbaa !34, !alias.scope !364, !noalias !365
  %i.ce = lshr i8 %i.cd, 2
  %i.cf = and i8 %i.ce, 48
  %i.cg = or disjoint i8 %i.cf, %i.cc
  br label %get_scale_min_k4.exit61

get_scale_min_k4.exit61:                          ; preds = %bb.d, %bb.e
  %.in = phi i8 [ %i.ax, %bb.d ], [ %i.br, %bb.e ]
  %.pn.in = phi i8 [ %i.au, %bb.d ], [ %i.bm, %bb.e ]
  %.sink.i59 = phi i8 [ %i.bb, %bb.d ], [ %i.cb, %bb.e ]
  %storemerge.i60 = phi i8 [ %i.be, %bb.d ], [ %i.cg, %bb.e ]
  %.pn = uitofp i8 %.pn.in to float
  %i.ch = fmul float %i.aa, %.pn                  ; 3 uses
  %i.ci = uitofp i8 %.in to float
  %i.cj = fneg float %i.ci
  %i.ck = fmul float %i.ab, %i.cj                 ; 3 uses
  %scevgep102 = getelementptr i8, ptr %.169, i64 128 ; 2 uses
  %bound0104 = icmp ult ptr %.169, %i.h
  %bound1105 = icmp ult ptr %i.i, %scevgep102
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %.169, %scevgep103
  %bound1108 = icmp ult ptr %i.h, %scevgep102
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  br i1 %conflict.rdx110, label %scalar.ph111, label %vector.body119

vector.body119:                                   ; preds = %get_scale_min_k4.exit61
  %broadcast.splatinsert117 = insertelement <4 x i8> poison, i8 %.05072, i64 0
  %broadcast.splat118 = shufflevector <4 x i8> %broadcast.splatinsert117, <4 x i8> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert115 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat116 = shufflevector <4 x float> %broadcast.splatinsert115, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert113 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat114 = shufflevector <4 x float> %broadcast.splatinsert113, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.cl = getelementptr i8, ptr %.169, i64 128
  %wide.load122 = load <4 x i8>, ptr %.05270, align 1, !tbaa !34, !alias.scope !366
  %i.cm = and <4 x i8> %wide.load122, splat (i8 15)
  %i.cn = zext nneg <4 x i8> %i.cm to <4 x i32>
  %wide.load123 = load <4 x i8>, ptr %i.i, align 4, !tbaa !34, !alias.scope !367
  %i.co = and <4 x i8> %wide.load123, %broadcast.splat118
  %i.cp = icmp eq <4 x i8> %i.co, zeroinitializer
  %i.cq = select <4 x i1> %i.cp, <4 x i32> zeroinitializer, <4 x i32> splat (i32 16)
  %i.cr = or disjoint <4 x i32> %i.cq, %i.cn
  %i.cs = uitofp nneg <4 x i32> %i.cr to <4 x float>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat114, <4 x float> %i.cs, <4 x float> %broadcast.splat116)
  store <4 x float> %i.ct, ptr %.169, align 4, !tbaa !36, !alias.scope !368, !noalias !369
  %next.gep121.1 = getelementptr i8, ptr %.169, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.05270, i64 4
  %wide.load122.1 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !34, !alias.scope !366
  %i.cv = and <4 x i8> %wide.load122.1, splat (i8 15)
  %i.cw = zext nneg <4 x i8> %i.cv to <4 x i32>
  %wide.load123.1 = load <4 x i8>, ptr %i.ad, align 4, !tbaa !34, !alias.scope !367
  %i.cx = and <4 x i8> %wide.load123.1, %broadcast.splat118
  %i.cy = icmp eq <4 x i8> %i.cx, zeroinitializer
  %i.cz = select <4 x i1> %i.cy, <4 x i32> zeroinitializer, <4 x i32> splat (i32 16)
  %i.da = or disjoint <4 x i32> %i.cz, %i.cw
  %i.db = uitofp nneg <4 x i32> %i.da to <4 x float>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat114, <4 x float> %i.db, <4 x float> %broadcast.splat116)
  store <4 x float> %i.dc, ptr %next.gep121.1, align 4, !tbaa !36, !alias.scope !368, !noalias !369
  %next.gep121.2 = getelementptr i8, ptr %.169, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %.05270, i64 8
  %wide.load122.2 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !34, !alias.scope !366
  %i.de = and <4 x i8> %wide.load122.2, splat (i8 15)
  %i.df = zext nneg <4 x i8> %i.de to <4 x i32>
  %wide.load123.2 = load <4 x i8>, ptr %i.ae, align 4, !tbaa !34, !alias.scope !367
  %i.dg = and <4 x i8> %wide.load123.2, %broadcast.splat118
  %i.dh = icmp eq <4 x i8> %i.dg, zeroinitializer
  %i.di = select <4 x i1> %i.dh, <4 x i32> zeroinitializer, <4 x i32> splat (i32 16)
  %i.dj = or disjoint <4 x i32> %i.di, %i.df
  %i.dk = uitofp nneg <4 x i32> %i.dj to <4 x float>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat114, <4 x float> %i.dk, <4 x float> %broadcast.splat116)
  store <4 x float> %i.dl, ptr %next.gep121.2, align 4, !tbaa !36, !alias.scope !368, !noalias !369
  %next.gep121.3 = getelementptr i8, ptr %.169, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %.05270, i64 12
  %wide.load122.3 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !34, !alias.scope !366
  %i.dn = and <4 x i8> %wide.load122.3, splat (i8 15)
  %i.do = zext nneg <4 x i8> %i.dn to <4 x i32>
  %wide.load123.3 = load <4 x i8>, ptr %i.af, align 4, !tbaa !34, !alias.scope !367
  %i.dp = and <4 x i8> %wide.load123.3, %broadcast.splat118
  %i.dq = icmp eq <4 x i8> %i.dp, zeroinitializer
  %i.dr = select <4 x i1> %i.dq, <4 x i32> zeroinitializer, <4 x i32> splat (i32 16)
  %i.ds = or disjoint <4 x i32> %i.dr, %i.do
  %i.dt = uitofp nneg <4 x i32> %i.ds to <4 x float>
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat114, <4 x float> %i.dt, <4 x float> %broadcast.splat116)
  store <4 x float> %i.du, ptr %next.gep121.3, align 4, !tbaa !36, !alias.scope !368, !noalias !369
  %next.gep121.4 = getelementptr i8, ptr %.169, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %.05270, i64 16
  %wide.load122.4 = load <4 x i8>, ptr %i.dv, align 1, !tbaa !34, !alias.scope !366
  %i.dw = and <4 x i8> %wide.load122.4, splat (i8 15)
  %i.dx = zext nneg <4 x i8> %i.dw to <4 x i32>
  %wide.load123.4 = load <4 x i8>, ptr %i.ag, align 4, !tbaa !34, !alias.scope !367
  %i.dy = and <4 x i8> %wide.load123.4, %broadcast.splat118
  %i.dz = icmp eq <4 x i8> %i.dy, zeroinitializer
  %i.ea = select <4 x i1> %i.dz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 16)
  %i.eb = or disjoint <4 x i32> %i.ea, %i.dx
  %i.ec = uitofp nneg <4 x i32> %i.eb to <4 x float>
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat114, <4 x float> %i.ec, <4 x float> %broadcast.splat116)
  store <4 x float> %i.ed, ptr %next.gep121.4, align 4, !tbaa !36, !alias.scope !368, !noalias !369
  %next.gep121.5 = getelementptr i8, ptr %.169, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %.05270, i64 20
  %wide.load122.5 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !34, !alias.scope !366
end_hunk_0
