inline.NumInlined: 62
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 103
begin_hunk_0_@libdeflate_alloc_compressor:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 9011684
  store i32 10, ptr %i.eg, align 4, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 9011688
  store i32 1, ptr %i.eh, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 9011692
  store i32 1, ptr %i.ei, align 4, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 8976796 ; 11 uses
  br label %iter.check149

iter.check149:                                    ; preds = %middle.block146, %bb.s
  %indvars.iv.i76 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i79, %middle.block146 ] ; 8 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i76
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i76
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw i32 1, %i.eo                    ; 5 uses
  %i.eq = add i32 %i.ep, %i.el
  %i.er = trunc i64 %indvars.iv.i76 to i8         ; 11 uses
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv.i76, 8
  %i.es = sub i32 0, %i.ep
  %i.et = icmp ugt i32 %i.el, %i.es
  %or.cond181 = select i1 %min.iters.check135, i1 true, i1 %i.et
  br i1 %or.cond181, label %vec.epilog.scalar.ph150.preheader, label %vector.main.loop.iter.check136

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check149
  %xtraiter193 = and i32 %i.ep, 7
  %i.eu = add nsw i64 %indvars.iv.i76, -8
  %lcmp.mod194.not = icmp ult i64 %i.eu, 22
  br i1 %lcmp.mod194.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol

vec.epilog.scalar.ph150.prol:                     ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150.prol
  %.09.i77.prol = phi i32 [ %i.ex, %vec.epilog.scalar.ph150.prol ], [ %i.el, %vec.epilog.scalar.ph150.preheader ] ; 2 uses
  %prol.iter195 = phi i32 [ %prol.iter195.next, %vec.epilog.scalar.ph150.prol ], [ 0, %vec.epilog.scalar.ph150.preheader ]
  %i.ev = zext i32 %.09.i77.prol to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ev
  store i8 %i.er, ptr %i.ew, align 1, !tbaa !20
  %i.ex = add i32 %.09.i77.prol, 1                ; 2 uses
  %prol.iter195.next = add i32 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i32 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %vec.epilog.scalar.ph150.prol.loopexit, label %vec.epilog.scalar.ph150.prol, !llvm.loop !34

vec.epilog.scalar.ph150.prol.loopexit:            ; preds = %vec.epilog.scalar.ph150.prol, %vec.epilog.scalar.ph150.preheader
  %.09.i77.unr = phi i32 [ %i.el, %vec.epilog.scalar.ph150.preheader ], [ %i.ex, %vec.epilog.scalar.ph150.prol ]
  %i.ey = icmp samesign ult i64 %indvars.iv.i76, 8
  br i1 %i.ey, label %middle.block146, label %vec.epilog.scalar.ph150

vector.main.loop.iter.check136:                   ; preds = %iter.check149
  %min.iters.check137 = icmp samesign ult i64 %indvars.iv.i76, 12
  br i1 %min.iters.check137, label %vec.epilog.ph153, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %n.vec140 = and i32 %i.ep, -32
  %broadcast.splatinsert141 = insertelement <16 x i8> poison, i8 %i.er, i64 0
  %broadcast.splat142 = shufflevector <16 x i8> %broadcast.splatinsert141, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph138
  %index144 = phi i32 [ 0, %vector.ph138 ], [ %index.next145, %vector.body143 ] ; 2 uses
  %i.ez = add i32 %i.el, %index144
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <16 x i8> %broadcast.splat142, ptr %i.fb, align 1, !tbaa !20
  store <16 x i8> %broadcast.splat142, ptr %i.fc, align 1, !tbaa !20
  %index.next145 = add nuw i32 %index144, 32      ; 2 uses
  %i.fd = icmp eq i32 %index.next145, %n.vec140
  br i1 %i.fd, label %middle.block146, label %vector.body143, !llvm.loop !35

vec.epilog.ph153:                                 ; preds = %vector.main.loop.iter.check136
  %n.vec155 = and i32 %i.ep, -8
  %broadcast.splatinsert156 = insertelement <8 x i8> poison, i8 %i.er, i64 0
  %broadcast.splat157 = shufflevector <8 x i8> %broadcast.splatinsert156, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph153
  %index159 = phi i32 [ 0, %vec.epilog.ph153 ], [ %index.next160, %vec.epilog.vector.body158 ] ; 2 uses
  %i.fe = add i32 %i.el, %index159
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ff
  store <8 x i8> %broadcast.splat157, ptr %i.fg, align 1, !tbaa !20
  %index.next160 = add nuw i32 %index159, 8       ; 2 uses
  %i.fh = icmp eq i32 %index.next160, %n.vec155
  br i1 %i.fh, label %middle.block146, label %vec.epilog.vector.body158, !llvm.loop !36

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %.09.i77 = phi i32 [ %i.gf, %vec.epilog.scalar.ph150 ], [ %.09.i77.unr, %vec.epilog.scalar.ph150.prol.loopexit ] ; 9 uses
  %i.fi = zext i32 %.09.i77 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fi
  store i8 %i.er, ptr %i.fj, align 1, !tbaa !20
  %i.fk = add i32 %.09.i77, 1
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fl
  store i8 %i.er, ptr %i.fm, align 1, !tbaa !20
  %i.fn = add i32 %.09.i77, 2
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fo
  store i8 %i.er, ptr %i.fp, align 1, !tbaa !20
  %i.fq = add i32 %.09.i77, 3
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fr
  store i8 %i.er, ptr %i.fs, align 1, !tbaa !20
  %i.ft = add i32 %.09.i77, 4
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fu
  store i8 %i.er, ptr %i.fv, align 1, !tbaa !20
  %i.fw = add i32 %.09.i77, 5
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fx
  store i8 %i.er, ptr %i.fy, align 1, !tbaa !20
  %i.fz = add i32 %.09.i77, 6
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ga
  store i8 %i.er, ptr %i.gb, align 1, !tbaa !20
  %i.gc = add i32 %.09.i77, 7
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.gd
  store i8 %i.er, ptr %i.ge, align 1, !tbaa !20
  %i.gf = add i32 %.09.i77, 8                     ; 2 uses
  %.not.i78.7 = icmp eq i32 %i.gf, %i.eq
  br i1 %.not.i78.7, label %middle.block146, label %vec.epilog.scalar.ph150, !llvm.loop !37

middle.block146:                                  ; preds = %vector.body143, %vec.epilog.vector.body158, %vec.epilog.scalar.ph150.prol.loopexit, %vec.epilog.scalar.ph150
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i79, 30
  br i1 %exitcond.not.i80, label %deflate_init_offset_slot_full.exit, label %iter.check149, !llvm.loop !29

deflate_init_offset_slot_full.exit:               ; preds = %middle.block, %middle.block116, %middle.block146, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <4 x i32> splat (i32 2), ptr %i.gg, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gh, align 16, !tbaa !3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <4 x i32> splat (i32 2), ptr %i.gi, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gj, align 16, !tbaa !3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <4 x i32> splat (i32 2), ptr %i.gk, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gl, align 16, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <4 x i32> splat (i32 2), ptr %i.gm, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gn, align 16, !tbaa !3
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store <4 x i32> splat (i32 2), ptr %i.go, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gp, align 16, !tbaa !3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store <4 x i32> splat (i32 2), ptr %i.gq, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gr, align 16, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store <4 x i32> splat (i32 2), ptr %i.gs, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gt, align 16, !tbaa !3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store <4 x i32> splat (i32 2), ptr %i.gu, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gv, align 16, !tbaa !3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store <4 x i32> splat (i32 2), ptr %i.gw, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gx, align 16, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store <4 x i32> splat (i32 2), ptr %i.gy, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.gz, align 16, !tbaa !3
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store <4 x i32> splat (i32 2), ptr %i.ha, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hb, align 16, !tbaa !3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store <4 x i32> splat (i32 2), ptr %i.hc, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hd, align 16, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store <4 x i32> splat (i32 2), ptr %i.he, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hf, align 16, !tbaa !3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store <4 x i32> splat (i32 2), ptr %i.hg, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hh, align 16, !tbaa !3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store <4 x i32> splat (i32 2), ptr %i.hi, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hj, align 16, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  store <4 x i32> splat (i32 2), ptr %i.hk, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hl, align 16, !tbaa !3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store <4 x i32> splat (i32 2), ptr %i.hm, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hn, align 16, !tbaa !3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  store <4 x i32> splat (i32 2), ptr %i.ho, align 16, !tbaa !3
  store <4 x i32> splat (i32 2), ptr %i.hp, align 16, !tbaa !3
  %i.hq = getelementptr i8, ptr %i.d, i64 608
  %i.hr = getelementptr i8, ptr %i.d, i64 624
  store <4 x i32> splat (i32 1), ptr %i.hq, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hr, align 16, !tbaa !3
  %i.hs = getelementptr i8, ptr %i.d, i64 640
  %i.ht = getelementptr i8, ptr %i.d, i64 656
  store <4 x i32> splat (i32 1), ptr %i.hs, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ht, align 16, !tbaa !3
  %i.hu = getelementptr i8, ptr %i.d, i64 672
  %i.hv = getelementptr i8, ptr %i.d, i64 688
  store <4 x i32> splat (i32 1), ptr %i.hu, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hv, align 16, !tbaa !3
  %i.hw = getelementptr i8, ptr %i.d, i64 704
  %i.hx = getelementptr i8, ptr %i.d, i64 720
  store <4 x i32> splat (i32 1), ptr %i.hw, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hx, align 16, !tbaa !3
  %i.hy = getelementptr i8, ptr %i.d, i64 736
  %i.hz = getelementptr i8, ptr %i.d, i64 752
  store <4 x i32> splat (i32 1), ptr %i.hy, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.hz, align 16, !tbaa !3
  %i.ia = getelementptr i8, ptr %i.d, i64 768
  %i.ib = getelementptr i8, ptr %i.d, i64 784
  store <4 x i32> splat (i32 1), ptr %i.ia, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ib, align 16, !tbaa !3
  %i.ic = getelementptr i8, ptr %i.d, i64 800
  %i.id = getelementptr i8, ptr %i.d, i64 816
  store <4 x i32> splat (i32 1), ptr %i.ic, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.id, align 16, !tbaa !3
  %i.ie = getelementptr i8, ptr %i.d, i64 832
  %i.if = getelementptr i8, ptr %i.d, i64 848
  store <4 x i32> splat (i32 1), ptr %i.ie, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.if, align 16, !tbaa !3
  %i.ig = getelementptr i8, ptr %i.d, i64 864
  %i.ih = getelementptr i8, ptr %i.d, i64 880
  store <4 x i32> splat (i32 1), ptr %i.ig, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ih, align 16, !tbaa !3
  %i.ii = getelementptr i8, ptr %i.d, i64 896
  %i.ij = getelementptr i8, ptr %i.d, i64 912
  store <4 x i32> splat (i32 1), ptr %i.ii, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ij, align 16, !tbaa !3
  %i.ik = getelementptr i8, ptr %i.d, i64 928
  %i.il = getelementptr i8, ptr %i.d, i64 944
  store <4 x i32> splat (i32 1), ptr %i.ik, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.il, align 16, !tbaa !3
  %i.im = getelementptr i8, ptr %i.d, i64 960
  %i.in = getelementptr i8, ptr %i.d, i64 976
  store <4 x i32> splat (i32 1), ptr %i.im, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.in, align 16, !tbaa !3
  %i.io = getelementptr i8, ptr %i.d, i64 992
  %i.ip = getelementptr i8, ptr %i.d, i64 1008
  store <4 x i32> splat (i32 1), ptr %i.io, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ip, align 16, !tbaa !3
  %i.iq = getelementptr i8, ptr %i.d, i64 1024
  %i.ir = getelementptr i8, ptr %i.d, i64 1040
  store <4 x i32> splat (i32 1), ptr %i.iq, align 16, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.ir, align 16, !tbaa !3
  %i.is = getelementptr inbounds nuw i8, ptr %i.d, i64 1056
  store <4 x i32> splat (i32 4), ptr %i.is, align 16, !tbaa !3
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 1072
  store <4 x i32> splat (i32 4), ptr %i.it, align 16, !tbaa !3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 1088
  store <4 x i32> splat (i32 4), ptr %i.iu, align 16, !tbaa !3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.d, i64 1104
  store <4 x i32> splat (i32 4), ptr %i.iv, align 16, !tbaa !3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  store <4 x i32> splat (i32 4), ptr %i.iw, align 16, !tbaa !3
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 1136
  store <4 x i32> splat (i32 4), ptr %i.ix, align 16, !tbaa !3
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 1152
  store <4 x i32> splat (i32 2), ptr %i.iy, align 16, !tbaa !3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 1168
  store <4 x i32> splat (i32 2), ptr %i.iz, align 16, !tbaa !3
  %i.ja = getelementptr inbounds nuw i8, ptr %i.d, i64 1184 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.ja, align 16, !tbaa !3
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 1200
  store <4 x i32> splat (i32 1), ptr %i.jb, align 16, !tbaa !3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 1216
  store <4 x i32> splat (i32 1), ptr %i.jc, align 16, !tbaa !3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 1232
  store <4 x i32> splat (i32 1), ptr %i.jd, align 16, !tbaa !3
  %i.je = getelementptr inbounds nuw i8, ptr %i.d, i64 1248
  store <4 x i32> splat (i32 1), ptr %i.je, align 16, !tbaa !3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 1264
  store <4 x i32> splat (i32 1), ptr %i.jf, align 16, !tbaa !3
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  store <4 x i32> splat (i32 1), ptr %i.jg, align 16, !tbaa !3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 1296
  store <4 x i32> splat (i32 1), ptr %i.jh, align 16, !tbaa !3
  %i.ji = getelementptr inbounds nuw i8, ptr %i.d, i64 3000
  %i.jj = getelementptr inbounds nuw i8, ptr %i.d, i64 4280
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.gg, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.ji)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 4568
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 4152
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ja, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jl)
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.a, %deflate_init_offset_slot_full.exit
  %.067 = phi ptr [ null, %bb.a ], [ %i.d, %deflate_init_offset_slot_full.exit ], [ null, %bb.e ]
  ret ptr %.067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @libdeflate_aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_fastest(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i = phi ptr [ %i.c, %bb.a ], [ %i.s, %bb.b ] ; 17 uses
  %.0.i74 = phi i64 [ 131072, %bb.a ], [ %i.t, %bb.b ]
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.011.i, align 16, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.d, align 16, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %.011.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %.011.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i, i64 256
  %i.t = add nsw i64 %.0.i74, -256                ; 2 uses
  %.not.i75.3 = icmp eq i64 %i.t, 0
  br i1 %.not.i75.3, label %matchfinder_init_sse2.exit.preheader, label %bb.b, !llvm.loop !38

matchfinder_init_sse2.exit.preheader:             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.b, i32 258)
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %.ptr191 = getelementptr inbounds nuw i8, ptr %0, i64 137152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2552
  br label %matchfinder_init_sse2.exit

matchfinder_init_sse2.exit:                       ; preds = %matchfinder_init_sse2.exit.preheader, %.loopexit199
  %.0166 = phi i32 [ %.2168181, %.loopexit199 ], [ 0, %matchfinder_init_sse2.exit.preheader ]
  %.0160 = phi ptr [ %.2162184, %.loopexit199 ], [ %1, %matchfinder_init_sse2.exit.preheader ]
  %.060 = phi i32 [ %.363186, %.loopexit199 ], [ %., %matchfinder_init_sse2.exit.preheader ]
  %.055 = phi i32 [ %.459188, %.loopexit199 ], [ 258, %matchfinder_init_sse2.exit.preheader ]
  %.054 = phi ptr [ %.4190, %.loopexit199 ], [ %1, %matchfinder_init_sse2.exit.preheader ] ; 4 uses
  %i.ad = ptrtoint ptr %.054 to i64               ; 2 uses
  %i.ae = sub i64 %i.v, %i.ad
  %i.af = icmp ult i64 %i.ae, 70535
  %i.ag = getelementptr inbounds nuw i8, ptr %.054, i64 65535
  %.0.i = select i1 %i.af, ptr %i.u, ptr %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1280) %i.w, i8 0, i64 1280, i1 false)
  store i32 0, ptr %.ptr191, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.aq, %matchfinder_init_sse2.exit
  %.1167 = phi i32 [ %.0166, %matchfinder_init_sse2.exit ], [ %.2168.ph, %bb.aq ] ; 3 uses
  %.0164.idx = phi i64 [ 137152, %matchfinder_init_sse2.exit ], [ %.1165.ph.idx, %bb.aq ] ; 3 uses
  %.1161 = phi ptr [ %.0160, %matchfinder_init_sse2.exit ], [ %.2162.ph, %bb.aq ] ; 5 uses
  %.161 = phi i32 [ %.060, %matchfinder_init_sse2.exit ], [ %.262, %bb.aq ] ; 4 uses
  %.156 = phi i32 [ %.055, %matchfinder_init_sse2.exit ], [ %.358, %bb.aq ]
  %.1 = phi ptr [ %.054, %matchfinder_init_sse2.exit ], [ %.4.ph, %bb.aq ] ; 28 uses
  %.0164.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0164.idx ; 12 uses
  %i.ah = ptrtoint ptr %.1 to i64                 ; 3 uses
  %i.ai = sub i64 %i.v, %i.ah                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 258
  br i1 %i.aj, label %bb.d, label %bb.f, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.ak = trunc nuw i64 %i.ai to i32              ; 5 uses
  %i.al = icmp samesign ult i64 %i.ai, 5
  br i1 %i.al, label %.preheader198.preheader, label %bb.e

.preheader198.preheader:                          ; preds = %bb.d
  %xtraiter305 = and i32 %i.ak, 1
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.preheader198.prol.loopexit, label %.preheader198.prol

.preheader198.prol:                               ; preds = %.preheader198.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.an = load i8, ptr %.1, align 1, !tbaa !20
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !3
  %i.as = load i32, ptr %.0164.ptr, align 4, !tbaa !39
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %.0164.ptr, align 4, !tbaa !39
  %i.au = add nsw i32 %i.ak, -1
  br label %.preheader198.prol.loopexit

.preheader198.prol.loopexit:                      ; preds = %.preheader198.prol, %.preheader198.preheader
  %.lcssa304.unr = phi ptr [ poison, %.preheader198.preheader ], [ %i.am, %.preheader198.prol ]
  %.257.unr = phi i32 [ %i.ak, %.preheader198.preheader ], [ %i.au, %.preheader198.prol ]
  %.2.unr = phi ptr [ %.1, %.preheader198.preheader ], [ %i.am, %.preheader198.prol ]
  %i.av = icmp eq i64 %i.ai, 1
  br i1 %i.av, label %.loopexit199, label %.preheader198

.preheader198:                                    ; preds = %.preheader198.prol.loopexit, %.preheader198
  %.257 = phi i32 [ %i.bm, %.preheader198 ], [ %.257.unr, %.preheader198.prol.loopexit ]
  %.2 = phi ptr [ %i.be, %.preheader198 ], [ %.2.unr, %.preheader198.prol.loopexit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.ax = load i8, ptr %.2, align 1, !tbaa !20
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3
  %i.bc = load i32, ptr %.0164.ptr, align 4, !tbaa !39
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %.0164.ptr, align 4, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.aw, align 1, !tbaa !20
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !3
  %i.bk = load i32, ptr %.0164.ptr, align 4, !tbaa !39
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %.0164.ptr, align 4, !tbaa !39
  %i.bm = add i32 %.257, -2                       ; 2 uses
  %.not70.1 = icmp eq i32 %i.bm, 0
  br i1 %.not70.1, label %.loopexit199, label %.preheader198, !llvm.loop !43

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@deflate_compress_none:bb.a
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %3, 5
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %2, align 1, !tbaa !20
  store i32 -65536, ptr %i.g, align 1
  br label %.critedge

bb.d:                                             ; preds = %.preheader, %bb.e
  %.042 = phi ptr [ %i.t, %bb.e ], [ %0, %.preheader ] ; 3 uses
  %.040 = phi ptr [ %i.s, %bb.e ], [ %2, %.preheader ] ; 5 uses
  %i.h = ptrtoint ptr %.042 to i64
  %i.i = sub i64 %i.d, %i.h                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 65536                 ; 2 uses
  %spec.select46 = select i1 %i.j, i64 %i.i, i64 65535 ; 5 uses
  %i.k = ptrtoint ptr %.040 to i64
  %i.l = sub i64 %i.e, %i.k
  %i.m = add nsw i64 %spec.select46, 5
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = zext i1 %i.j to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.040, i64 1
  store i8 %spec.select, ptr %.040, align 1, !tbaa !20
  %i.o = trunc i64 %spec.select46 to i16          ; 2 uses
  store i16 %i.o, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.040, i64 3
  %i.q = xor i16 %i.o, -1
  store i16 %i.q, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.040, i64 5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.042, i64 %spec.select46, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select46 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.042, i64 %spec.select46 ; 2 uses
  %.not45 = icmp eq ptr %i.t, %i.a
  br i1 %.not45, label %bb.f, label %bb.d, !llvm.loop !94

bb.f:                                             ; preds = %bb.e
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.u, %i.v
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.f, %bb.c
  %.2 = phi i64 [ 0, %bb.b ], [ 5, %bb.c ], [ %i.w, %bb.f ], [ 0, %bb.d ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @libdeflate_free_compressor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @libdeflate_aligned_free(ptr noundef %0) #16
  ret void
}

declare void @libdeflate_aligned_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @libdeflate_get_compression_level(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @libdeflate_deflate_compress_bound(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %1, 4999                         ; 2 uses
  %.not = icmp ult i64 %i.a, 5000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i64 %i.a, 5000
  %i.c = mul nuw nsw i64 %i.b, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 5, %bb.a ]
  %i.e = add i64 %1, 9
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_flush_block(ptr noundef initializes((6052, 6060)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i1 noundef zeroext %5) unnamed_addr #11 {
.preheader587:
  %i.a = load i64, ptr %1, align 8, !tbaa !88     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91   ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 7 uses
  tail call fastcc void @deflate_precompute_huffman_header(ptr noundef %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6060
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.m = load i8, ptr %i.l, align 4, !tbaa !20    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4770
  %i.q = load i8, ptr %i.p, align 2, !tbaa !20
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, 7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4672
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20
  %i.v = mul i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4769
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4668
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = mul i32 %i.z, %i.ab
  %i.ad = zext i8 %i.m to i32
  %i.ae = add nuw nsw i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4664
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %i.ah = mul i32 %i.ae, %i.ag
  %i.ai = load <16 x i32>, ptr %i.h, align 4, !tbaa !20
  %i.aj = load <16 x i8>, ptr %i.k, align 4, !tbaa !20
  %i.ak = zext <16 x i8> %i.aj to <16 x i32>
  %i.al = mul <16 x i32> %i.ai, %i.ak
  %i.am = mul i32 %i.j, 3
  %i.an = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.al)
  %op.rdx = add i32 %i.an, %i.am
  %op.rdx784 = add i32 %i.ah, %i.ac
  %op.rdx785 = add i32 %i.v, 14
  %op.rdx786 = add i32 %op.rdx, %op.rdx784
  %op.rdx787 = add i32 %op.rdx786, %op.rdx785
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %op.rdx787, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader587
  %index = phi i64 [ 0, %.preheader587 ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ao, %.preheader587 ], [ %i.ax, %vector.body ]
  %vec.phi725 = phi <4 x i32> [ zeroinitializer, %.preheader587 ], [ %i.ay, %vector.body ]
  %vec.phi726 = phi <4 x i32> [ zeroinitializer, %.preheader587 ], [ %i.bb, %vector.body ]
  %vec.phi727 = phi <4 x i32> [ zeroinitializer, %.preheader587 ], [ %i.bc, %vector.body ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3 ; 2 uses
  %wide.load728 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %wide.load729 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !20
  %wide.load730 = load <4 x i8>, ptr %i.as, align 1, !tbaa !20
  %i.at = zext <4 x i8> %wide.load729 to <4 x i32>
  %i.au = zext <4 x i8> %wide.load730 to <4 x i32>
  %i.av = mul <4 x i32> %wide.load, %i.at
  %i.aw = mul <4 x i32> %wide.load728, %i.au
  %i.ax = add <4 x i32> %i.av, %vec.phi           ; 2 uses
  %i.ay = add <4 x i32> %i.aw, %vec.phi725        ; 2 uses
  %i.az = shl <4 x i32> %wide.load, splat (i32 3)
  %i.ba = shl <4 x i32> %wide.load728, splat (i32 3)
  %i.bb = add <4 x i32> %i.az, %vec.phi726        ; 2 uses
  %i.bc = add <4 x i32> %i.ba, %vec.phi727        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, 144
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx731 = add <4 x i32> %i.bc, %i.bb
  %i.bf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx731)
  %i.bg = zext i32 %3 to i64                      ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %i.bg ; 2 uses
  %i.bi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.be, i64 0
  %i.bj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bf, i64 0
  br label %vector.body733

vector.body733:                                   ; preds = %vector.body733, %middle.block
  %index734 = phi i64 [ 0, %middle.block ], [ %index.next743, %vector.body733 ] ; 2 uses
  %vec.phi735 = phi <4 x i32> [ %i.bi, %middle.block ], [ %i.bt, %vector.body733 ]
  %vec.phi736 = phi <4 x i32> [ zeroinitializer, %middle.block ], [ %i.bu, %vector.body733 ]
  %vec.phi737 = phi <4 x i32> [ %i.bj, %middle.block ], [ %i.bx, %vector.body733 ]
  %vec.phi738 = phi <4 x i32> [ zeroinitializer, %middle.block ], [ %i.by, %vector.body733 ]
  %i.bk = add i64 %index734, 144                  ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load739 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !3 ; 2 uses
  %wide.load740 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !3 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bk ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %wide.load741 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !20
  %wide.load742 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !20
  %i.bp = zext <4 x i8> %wide.load741 to <4 x i32>
  %i.bq = zext <4 x i8> %wide.load742 to <4 x i32>
  %i.br = mul <4 x i32> %wide.load739, %i.bp
  %i.bs = mul <4 x i32> %wide.load740, %i.bq
  %i.bt = add <4 x i32> %i.br, %vec.phi735        ; 2 uses
  %i.bu = add <4 x i32> %i.bs, %vec.phi736        ; 2 uses
  %i.bv = mul <4 x i32> %wide.load739, splat (i32 9)
  %i.bw = mul <4 x i32> %wide.load740, splat (i32 9)
  %i.bx = add <4 x i32> %i.bv, %vec.phi737        ; 2 uses
  %i.by = add <4 x i32> %i.bw, %vec.phi738        ; 2 uses
  %index.next743 = add nuw i64 %index734, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next743, 112
  br i1 %i.bz, label %.preheader585, label %vector.body733, !llvm.loop !96

.preheader585:                                    ; preds = %vector.body733
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2988
  %wide.load779.2 = load <4 x i8>, ptr %i.cc, align 4, !tbaa !20
  %i.cd = zext <4 x i8> %wide.load779.2 to <4 x i32>
  %i.ce = add nuw nsw <4 x i32> %i.cd, <i32 9, i32 9, i32 10, i32 10>
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %wide.load777.2 = load <4 x i32>, ptr %i.cf, align 8, !tbaa !3 ; 2 uses
  %i.cg = mul <4 x i32> %i.ce, %wide.load777.2
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %wide.load779.1 = load <4 x i8>, ptr %i.ch, align 4, !tbaa !20
  %i.ci = zext <4 x i8> %wide.load779.1 to <4 x i32>
  %i.cj = add nuw nsw <4 x i32> %i.ci, <i32 5, i32 5, i32 6, i32 6>
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %wide.load777.1 = load <4 x i32>, ptr %i.ck, align 8, !tbaa !3 ; 2 uses
  %i.cl = mul <4 x i32> %i.cj, %wide.load777.1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2972
  %wide.load779 = load <4 x i8>, ptr %i.cm, align 4, !tbaa !20
  %i.cn = zext <4 x i8> %wide.load779 to <4 x i32>
  %i.co = add nuw nsw <4 x i32> %i.cn, <i32 1, i32 1, i32 2, i32 2>
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %wide.load777 = load <4 x i32>, ptr %i.cp, align 8, !tbaa !3 ; 2 uses
  %i.cq = mul <4 x i32> %i.co, %wide.load777
  %i.cr = add <4 x i32> %i.cl, %i.cq
  %i.cs = add <4 x i32> %i.cg, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %wide.load778.2 = load <4 x i8>, ptr %i.ct, align 8, !tbaa !20
  %i.cu = zext <4 x i8> %wide.load778.2 to <4 x i32>
  %i.cv = add nuw nsw <4 x i32> %i.cu, <i32 7, i32 7, i32 8, i32 8>
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %wide.load776.2 = load <4 x i32>, ptr %i.cw, align 8, !tbaa !3 ; 2 uses
  %i.cx = mul <4 x i32> %i.cv, %wide.load776.2
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %wide.load778.1 = load <4 x i8>, ptr %i.cy, align 8, !tbaa !20
  %i.cz = zext <4 x i8> %wide.load778.1 to <4 x i32>
  %i.da = add nuw nsw <4 x i32> %i.cz, <i32 3, i32 3, i32 4, i32 4>
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %wide.load776.1 = load <4 x i32>, ptr %i.db, align 8, !tbaa !3 ; 2 uses
  %i.dc = mul <4 x i32> %i.da, %wide.load776.1
  %wide.load776 = load <4 x i32>, ptr %i.ca, align 8, !tbaa !3 ; 2 uses
  %wide.load778 = load <4 x i8>, ptr %i.cb, align 8, !tbaa !20
  %i.dd = zext <4 x i8> %wide.load778 to <4 x i32>
  %i.de = mul <4 x i32> %wide.load776, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2965
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul i32 %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2964
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !20
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dn, 5
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !3  ; 2 uses
  %i.dr = mul i32 %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2963
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !20
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nuw nsw i32 %i.du, 5
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3  ; 2 uses
  %i.dy = mul i32 %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2962
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !20
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nuw nsw i32 %i.eb, 5
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !3  ; 2 uses
  %i.ef = mul i32 %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2961
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ei, 5
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 2 uses
  %i.em = mul i32 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2957
  %wide.load759.2 = load <4 x i8>, ptr %i.en, align 1, !tbaa !20
  %i.eo = zext <4 x i8> %wide.load759.2 to <4 x i32>
  %i.ep = add nuw nsw <4 x i32> %i.eo, splat (i32 4)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %wide.load757.2 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !3 ; 2 uses
  %i.er = mul <4 x i32> %i.ep, %wide.load757.2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2949
  %wide.load759.1 = load <4 x i8>, ptr %i.es, align 1, !tbaa !20
  %i.et = zext <4 x i8> %wide.load759.1 to <4 x i32>
  %i.eu = add nuw nsw <4 x i32> %i.et, splat (i32 2)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %wide.load757.1 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !3 ; 2 uses
  %i.ew = mul <4 x i32> %i.eu, %wide.load757.1
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %wide.load757 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !3 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2941
  %wide.load759 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !20
  %i.ez = zext <4 x i8> %wide.load759 to <4 x i32>
  %i.fa = mul <4 x i32> %wide.load757, %i.ez
  %i.fb = add <4 x i32> %i.ew, %i.fa
  %i.fc = add <4 x i32> %i.er, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2953
  %wide.load758.2 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !20
  %i.fe = zext <4 x i8> %wide.load758.2 to <4 x i32>
  %i.ff = add nuw nsw <4 x i32> %i.fe, splat (i32 3)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %wide.load756.2 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !3 ; 2 uses
  %i.fh = mul <4 x i32> %i.ff, %wide.load756.2
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2945
  %wide.load758.1 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !20
  %i.fj = zext <4 x i8> %wide.load758.1 to <4 x i32>
  %i.fk = add nuw nsw <4 x i32> %i.fj, splat (i32 1)
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %wide.load756.1 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !3 ; 2 uses
  %i.fm = mul <4 x i32> %i.fk, %wide.load756.1
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %wide.load756 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !3 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2937
  %wide.load758 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !20
  %i.fp = zext <4 x i8> %wide.load758 to <4 x i32>
  %i.fq = mul <4 x i32> %wide.load756, %i.fp
  %bin.rdx745 = add <4 x i32> %i.bu, %i.bt
  %i.fr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx745)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !20
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add i32 %i.fr, %i.fu
  %i.fw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fv, i64 0
  %i.fx = add <4 x i32> %i.fq, %i.fw
  %i.fy = add <4 x i32> %i.fm, %i.fx
  %i.fz = add <4 x i32> %i.fh, %i.fy
  %bin.rdx764 = add <4 x i32> %i.fc, %i.fz
  %i.ga = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx764)
  %i.gb = add i32 %i.em, %i.ga
  %i.gc = add i32 %i.ef, %i.gb
  %i.gd = add i32 %i.dy, %i.gc
  %i.ge = add i32 %i.dr, %i.gd
  %i.gf = add i32 %i.dk, %i.ge
  %i.gg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.gf, i64 0
  %i.gh = add <4 x i32> %i.de, %i.gg
  %i.gi = add <4 x i32> %i.dc, %i.gh
  %i.gj = add <4 x i32> %i.cx, %i.gi
  %bin.rdx782 = add <4 x i32> %i.cs, %i.gj
  %i.gk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx782)
  %i.gl = mul <4 x i32> %wide.load777.2, <i32 14, i32 14, i32 15, i32 15>
  %i.gm = mul <4 x i32> %wide.load777.1, <i32 10, i32 10, i32 11, i32 11>
  %i.gn = mul <4 x i32> %wide.load777, <i32 6, i32 6, i32 7, i32 7>
  %i.go = add <4 x i32> %i.gm, %i.gn
  %i.gp = add <4 x i32> %i.gl, %i.go
  %i.gq = mul <4 x i32> %wide.load776.2, <i32 12, i32 12, i32 13, i32 13>
  %i.gr = mul <4 x i32> %wide.load776.1, <i32 8, i32 8, i32 9, i32 9>
  %i.gs = mul <4 x i32> %wide.load776, splat (i32 5)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 4565
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !20
  %i.gv = zext i8 %i.gu to i32
  %i.gw = mul i32 %i.dg, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 4564
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !20
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add nuw nsw i32 %i.gz, 5
  %i.hb = mul i32 %i.ha, %i.dq
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 4563
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !20
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nuw nsw i32 %i.he, 5
  %i.hg = mul i32 %i.hf, %i.dx
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 4562
  %i.hi = load i8, ptr %i.hh, align 2, !tbaa !20
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.hj, 5
  %i.hl = mul i32 %i.hk, %i.ee
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4561
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !20
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nuw nsw i32 %i.ho, 5
  %i.hq = mul i32 %i.hp, %i.el
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4557
  %wide.load761.2 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !20
  %i.hs = zext <4 x i8> %wide.load761.2 to <4 x i32>
end_hunk_1
