Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler_sse2?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@RescalerExportRowExpand_SSE2:bb.a
  %i.dp = xor i32 %.2.lcssa, -1
  %i.dq = add i32 %i.i, %i.dp                     ; 2 uses
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dq, 79
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119
  %i.dt = getelementptr i8, ptr %i.b, i64 %i.do   ; 3 uses
  %i.du = getelementptr i8, ptr %i.b, i64 %i.do
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.dr
  %i.dw = getelementptr i8, ptr %i.dv, i64 1      ; 3 uses
  %i.dx = shl nuw nsw i64 %i.do, 2                ; 2 uses
  %i.dy = getelementptr i8, ptr %i.k, i64 %i.dx
  %i.dz = add nuw nsw i64 %i.do, %i.dr
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 4                ; 2 uses
  %i.ec = getelementptr i8, ptr %i.k, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.d, i64 %i.dx
  %i.ee = getelementptr i8, ptr %i.d, i64 %i.eb
  %i.ef = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %i.dt, %i.ec
  %bound1 = icmp ult ptr %i.dy, %i.dw
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %i.dt, %i.ee
  %bound1164 = icmp ult ptr %i.ed, %i.dw
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %i.dt, %i.ef
  %bound1167 = icmp ult ptr %i.l, %i.dw
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  br i1 %conflict.rdx169, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ds, 8589934588              ; 3 uses
  %i.eg = add nuw nsw i64 %n.vec, %i.do
  %i.eh = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !51
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eh, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ei = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert170 = insertelement <4 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat171 = shufflevector <4 x i64> %broadcast.splatinsert170, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <4 x i64> poison, i64 %i.da, i64 0
  %broadcast.splat173 = shufflevector <4 x i64> %broadcast.splatinsert172, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ej = add nuw i64 %index, %i.do               ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ej
  %wide.load = load <4 x i32>, ptr %i.ek, align 4, !tbaa !23, !alias.scope !52
  %i.el = zext <4 x i32> %wide.load to <4 x i64>
  %i.em = mul nuw <4 x i64> %broadcast.splat171, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ej
  %wide.load174 = load <4 x i32>, ptr %i.en, align 4, !tbaa !23, !alias.scope !53
  %i.eo = zext <4 x i32> %wide.load174 to <4 x i64>
  %i.ep = mul nuw <4 x i64> %broadcast.splat173, %i.eo
  %i.eq = add nuw <4 x i64> %i.em, splat (i64 2147483648)
  %i.er = add <4 x i64> %i.eq, %i.ep
  %i.es = lshr <4 x i64> %i.er, splat (i64 32)
  %i.et = mul nuw <4 x i64> %i.es, %i.ei
  %i.eu = add nuw <4 x i64> %i.et, splat (i64 2147483648)
  %i.ev = lshr <4 x i64> %i.eu, splat (i64 32)    ; 2 uses
  %i.ew = trunc nuw <4 x i64> %i.ev to <4 x i32>
  %i.ex = icmp sgt <4 x i32> %i.ew, splat (i32 255)
  %i.ey = trunc <4 x i64> %i.ev to <4 x i8>
  %i.ez = select <4 x i1> %i.ex, <4 x i8> splat (i8 -1), <4 x i8> %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ej
  store <4 x i8> %i.ez, ptr %i.fa, align 1, !tbaa !16, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph119, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph119 ], [ %i.eg, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv128 ; 2 uses
  %.val74 = load <2 x i64>, ptr %i.fc, align 1, !tbaa !16 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %.val75 = load <2 x i64>, ptr %i.fd, align 1, !tbaa !16 ; 2 uses
  %i.fe = lshr <2 x i64> %.val74, splat (i64 32)
  %i.ff = lshr <2 x i64> %.val75, splat (i64 32)
  %i.fg = and <2 x i64> %.val74, splat (i64 4294967295)
  %i.fh = mul nuw <2 x i64> %i.fg, %i.de
  %i.fi = and <2 x i64> %.val75, splat (i64 4294967295)
  %i.fj = mul nuw <2 x i64> %i.fi, %i.de
  %i.fk = mul nuw <2 x i64> %i.fe, %i.de
  %i.fl = mul nuw <2 x i64> %i.ff, %i.de
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv128 ; 2 uses
  %.val = load <2 x i64>, ptr %i.fm, align 1, !tbaa !16 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %.val73 = load <2 x i64>, ptr %i.fn, align 1, !tbaa !16 ; 2 uses
  %i.fo = lshr <2 x i64> %.val, splat (i64 32)
  %i.fp = lshr <2 x i64> %.val73, splat (i64 32)
  %i.fq = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fr = mul nuw <2 x i64> %i.fq, %i.dh
  %i.fs = and <2 x i64> %.val73, splat (i64 4294967295)
  %i.ft = mul nuw <2 x i64> %i.fs, %i.dh
  %i.fu = mul nuw <2 x i64> %i.fo, %i.dh
  %i.fv = mul nuw <2 x i64> %i.fp, %i.dh
  %i.fw = add <2 x i64> %i.fh, splat (i64 2147483648)
  %i.fx = add <2 x i64> %i.fw, %i.fr
  %i.fy = add <2 x i64> %i.fj, splat (i64 2147483648)
  %i.fz = add <2 x i64> %i.fy, %i.ft
  %i.ga = add <2 x i64> %i.fk, splat (i64 2147483648)
  %i.gb = add <2 x i64> %i.ga, %i.fu
  %i.gc = add <2 x i64> %i.fl, splat (i64 2147483648)
  %i.gd = add <2 x i64> %i.gc, %i.fv
  %i.ge = lshr <2 x i64> %i.fx, splat (i64 32)
  %i.gf = lshr <2 x i64> %i.fz, splat (i64 32)
  %i.gg = lshr <2 x i64> %i.gb, splat (i64 32)
  %i.gh = lshr <2 x i64> %i.gd, splat (i64 32)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv128
  %i.gj = mul nuw <2 x i64> %i.ge, %i.p
  %i.gk = mul nuw <2 x i64> %i.gf, %i.p
  %i.gl = mul nuw <2 x i64> %i.gg, %i.p
  %i.gm = mul nuw <2 x i64> %i.gh, %i.p
  %i.gn = add nuw <2 x i64> %i.gj, splat (i64 2147483648)
  %i.go = add nuw <2 x i64> %i.gk, splat (i64 2147483648)
  %i.gp = add nuw <2 x i64> %i.gl, splat (i64 2147483648)
  %i.gq = add nuw <2 x i64> %i.gm, splat (i64 2147483648)
  %i.gr = lshr <2 x i64> %i.gn, splat (i64 32)
  %i.gs = lshr <2 x i64> %i.go, splat (i64 32)
  %i.gt = and <2 x i64> %i.gp, splat (i64 -4294967296)
  %i.gu = and <2 x i64> %i.gq, splat (i64 -4294967296)
  %i.gv = or disjoint <2 x i64> %i.gr, %i.gt
  %i.gw = or disjoint <2 x i64> %i.gs, %i.gu
  %i.gx = bitcast <2 x i64> %i.gv to <4 x i32>
  %i.gy = bitcast <2 x i64> %i.gw to <4 x i32>
  %i.gz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gx, <4 x i32> %i.gy)
  %i.ha = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gz, <8 x i16> poison)
  %i.hb = bitcast <16 x i8> %i.ha to <2 x i64>
  %i.hc = extractelement <2 x i64> %i.hb, i64 0
  store i64 %i.hc, ptr %i.gi, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.di
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 8
  br i1 %.not, label %.preheader114.loopexit, label %.lr.ph, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv133
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !23
  %i.hf = zext i32 %i.he to i64
  %i.hg = mul nuw i64 %i.dn, %i.hf
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !23
  %i.hj = zext i32 %i.hi to i64
  %i.hk = mul nuw i64 %i.da, %i.hj
  %i.hl = add nuw i64 %i.hg, 2147483648
  %i.hm = add i64 %i.hl, %i.hk
  %i.hn = lshr i64 %i.hm, 32
  %i.ho = load i32, ptr %i.l, align 8, !tbaa !21
  %i.hp = zext i32 %i.ho to i64
  %i.hq = mul nuw i64 %i.hn, %i.hp
  %i.hr = add nuw i64 %i.hq, 2147483648
  %i.hs = lshr i64 %i.hr, 32                      ; 2 uses
  %i.ht = trunc nuw i64 %i.hs to i32
  %i.hu = icmp sgt i32 %i.ht, 255
  %i.hv = trunc i64 %i.hs to i8
  %i.hw = select i1 %i.hu, i8 -1, i8 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv133
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !16
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.hy = trunc nuw i64 %indvars.iv.next134 to i32
  %i.hz = icmp sgt i32 %i.i, %i.hy
  br i1 %i.hz, label %scalar.ph, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph125, %middle.block, %middle.block205, %.preheader114, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowShrink_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70   ; 3 uses
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.s, i64 0
  %i.u = insertelement <4 x i32> %i.t, i32 %i.s, i64 2
  %i.v = bitcast <4 x i32> %i.u to <2 x i64>      ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.q, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.q, i64 2
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>      ; 4 uses
  %.not86125 = icmp slt i32 %i.i, 8
  br i1 %.not86125, label %.preheader123, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.z = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader123.loopexit:                           ; preds = %.lr.ph
  %i.aa = add nuw i32 %i.i, 2147483640
  %i.ab = and i32 %i.aa, 2147483640
  %narrow = add nuw i32 %i.ab, 8
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader123.loopexit ] ; 3 uses
  %i.ac = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.ac, label %.lr.ph128.a, label %.loopexit

.lr.ph128.a:                                      ; preds = %.preheader123
  %1 = zext i32 %i.q to i64                       ; 2 uses
  %i.ad = zext i32 %.0.lcssa to i64               ; 8 uses
  %i.ae = xor i32 %.0.lcssa, -1
  %i.af = add i32 %i.i, %i.ae                     ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128.a
  %i.ai = getelementptr i8, ptr %i.b, i64 %i.ad   ; 3 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ag
  %i.al = getelementptr i8, ptr %i.ak, i64 1      ; 3 uses
  %i.am = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 %i.am   ; 3 uses
  %i.ao = add nuw nsw i64 %i.ad, %i.ag
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 2 uses
  %i.ar = getelementptr i8, ptr %i.d, i64 %i.aq   ; 3 uses
  %i.as = getelementptr i8, ptr %i.k, i64 %i.am   ; 2 uses
  %i.at = getelementptr i8, ptr %i.k, i64 %i.aq   ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %i.ar
  %bound1 = icmp ult ptr %i.an, %i.al
  %found.conflict = and i1 %bound0, %bound1
  %bound0179 = icmp ult ptr %i.ai, %i.at
  %bound1180 = icmp ult ptr %i.as, %i.al
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx = or i1 %found.conflict, %found.conflict181
  %bound0182 = icmp ult ptr %i.ai, %i.au
  %bound1183 = icmp ult ptr %i.r, %i.al
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx, %found.conflict184
  %bound0186 = icmp ult ptr %i.an, %i.at
  %bound1187 = icmp ult ptr %i.as, %i.ar
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %i.an, %i.au
  %bound1191 = icmp ult ptr %i.r, %i.ar
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  br i1 %conflict.rdx193, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 8589934588              ; 3 uses
  %i.av = add nuw nsw i64 %n.vec, %i.ad
  %i.aw = load i32, ptr %i.r, align 4, !tbaa !70, !alias.scope !71
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ax = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert194 = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat195 = shufflevector <4 x i64> %broadcast.splatinsert194, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = add nuw i64 %index, %i.ad               ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ay
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !23, !alias.scope !72
  %2 = zext <4 x i32> %wide.load to <4 x i64>
  %3 = mul nuw <4 x i64> %broadcast.splat195, %2
  %4 = lshr <4 x i64> %3, splat (i64 32)
  %5 = trunc nuw <4 x i64> %4 to <4 x i32>        ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ay ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %i.bb = sub <4 x i32> %wide.load196, %5
  %i.bc = zext <4 x i32> %i.bb to <4 x i64>
  %i.bd = mul nuw <4 x i64> %i.bc, %i.ax
  %i.be = add nuw <4 x i64> %i.bd, splat (i64 2147483648)
  %i.bf = lshr <4 x i64> %i.be, splat (i64 32)    ; 2 uses
  %i.bg = trunc nuw <4 x i64> %i.bf to <4 x i32>
  %i.bh = icmp sgt <4 x i32> %i.bg, splat (i32 255)
  %i.bi = trunc <4 x i64> %i.bf to <4 x i8>
  %i.bj = select <4 x i1> %i.bh, <4 x i8> splat (i8 -1), <4 x i8> %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ay
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  store <4 x i32> %5, ptr %i.ba, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph128.a, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph128.a ], [ %i.av, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv137 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next138, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv137 ; 3 uses
  %.val90 = load <2 x i64>, ptr %i.bm, align 1, !tbaa !16 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  %.val91 = load <2 x i64>, ptr %i.bn, align 1, !tbaa !16 ; 2 uses
  %i.bo = lshr <2 x i64> %.val90, splat (i64 32)
  %i.bp = lshr <2 x i64> %.val91, splat (i64 32)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv137 ; 2 uses
  %.val88 = load <2 x i64>, ptr %i.bq, align 1, !tbaa !16 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %.val89 = load <2 x i64>, ptr %i.br, align 1, !tbaa !16 ; 2 uses
  %i.bs = lshr <2 x i64> %.val88, splat (i64 32)
  %i.bt = lshr <2 x i64> %.val89, splat (i64 32)
  %i.bu = and <2 x i64> %.val88, splat (i64 4294967295)
  %i.bv = mul nuw <2 x i64> %i.bu, %i.y
  %i.bw = and <2 x i64> %.val89, splat (i64 4294967295)
  %i.bx = mul nuw <2 x i64> %i.bw, %i.y
  %i.by = mul nuw <2 x i64> %i.bs, %i.y           ; 2 uses
  %i.bz = mul nuw <2 x i64> %i.bt, %i.y           ; 2 uses
  %i.ca = lshr <2 x i64> %i.bv, splat (i64 32)    ; 2 uses
  %i.cb = lshr <2 x i64> %i.bx, splat (i64 32)    ; 2 uses
  %i.cc = lshr <2 x i64> %i.by, splat (i64 32)
  %i.cd = lshr <2 x i64> %i.bz, splat (i64 32)
  %i.ce = sub <2 x i64> %.val90, %i.ca
  %i.cf = sub <2 x i64> %.val91, %i.cb
  %i.cg = sub nsw <2 x i64> %i.bo, %i.cc
  %i.ch = sub nsw <2 x i64> %i.bp, %i.cd
  %i.ci = and <2 x i64> %i.by, splat (i64 -4294967296)
  %i.cj = and <2 x i64> %i.bz, splat (i64 -4294967296)
  %i.ck = or disjoint <2 x i64> %i.ca, %i.ci
  %i.cl = or disjoint <2 x i64> %i.cb, %i.cj
  store <2 x i64> %i.ck, ptr %i.bm, align 1, !tbaa !16
  store <2 x i64> %i.cl, ptr %i.bn, align 1, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv137
  %i.cn = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.co = mul nuw <2 x i64> %i.cn, %i.v
  %i.cp = and <2 x i64> %i.cf, splat (i64 4294967295)
  %i.cq = mul nuw <2 x i64> %i.cp, %i.v
  %i.cr = and <2 x i64> %i.cg, splat (i64 4294967295)
  %i.cs = mul nuw <2 x i64> %i.cr, %i.v
  %i.ct = and <2 x i64> %i.ch, splat (i64 4294967295)
  %i.cu = mul nuw <2 x i64> %i.ct, %i.v
  %i.cv = add nuw <2 x i64> %i.co, splat (i64 2147483648)
  %i.cw = add nuw <2 x i64> %i.cq, splat (i64 2147483648)
  %i.cx = add nuw <2 x i64> %i.cs, splat (i64 2147483648)
  %i.cy = add nuw <2 x i64> %i.cu, splat (i64 2147483648)
  %i.cz = lshr <2 x i64> %i.cv, splat (i64 32)
  %i.da = lshr <2 x i64> %i.cw, splat (i64 32)
  %i.db = and <2 x i64> %i.cx, splat (i64 -4294967296)
  %i.dc = and <2 x i64> %i.cy, splat (i64 -4294967296)
  %i.dd = or disjoint <2 x i64> %i.cz, %i.db
  %i.de = or disjoint <2 x i64> %i.da, %i.dc
  %i.df = bitcast <2 x i64> %i.dd to <4 x i32>
  %i.dg = bitcast <2 x i64> %i.de to <4 x i32>
  %i.dh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.df, <4 x i32> %i.dg)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dh, <8 x i16> poison)
  %i.dj = bitcast <16 x i8> %i.di to <2 x i64>
  %i.dk = extractelement <2 x i64> %i.dj, i64 0
  store i64 %i.dk, ptr %i.cm, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not86 = icmp samesign ugt i64 %indvars.iv.next, %i.z
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 8
  br i1 %.not86, label %.preheader123.loopexit, label %.lr.ph, !llvm.loop !62

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %scalar.ph ], [ %indvars.iv142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv142
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23
  %6 = zext i32 %i.dm to i64
  %7 = mul nuw i64 %6, %1
  %8 = lshr i64 %7, 32
  %9 = trunc nuw i64 %8 to i32                    ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !23
  %i.dp = sub i32 %i.do, %9
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load i32, ptr %i.r, align 4, !tbaa !70
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw i64 %i.dq, %i.ds
  %i.du = add nuw i64 %i.dt, 2147483648
  %i.dv = lshr i64 %i.du, 32                      ; 2 uses
  %i.dw = trunc nuw i64 %i.dv to i32
  %i.dx = icmp sgt i32 %i.dw, 255
  %i.dy = trunc i64 %i.dv to i8
  %i.dz = select i1 %i.dx, i8 -1, i8 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv142
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !16
  store i32 %9, ptr %i.dn, align 4, !tbaa !23
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.eb = trunc nuw i64 %indvars.iv.next143 to i32
  %i.ec = icmp sgt i32 %i.i, %i.eb
  br i1 %i.ec, label %scalar.ph, label %.loopexit, !llvm.loop !63

bb.c:                                             ; preds = %bb.a
  %.not85129 = icmp slt i32 %i.i, 8
  br i1 %.not85129, label %.preheader, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %bb.c
  %i.ed = zext nneg i32 %i.i to i64
  br label %.lr.ph131

.preheader.loopexit:                              ; preds = %.lr.ph131
  %i.ee = add nuw i32 %i.i, 2147483640
  %i.ef = and i32 %i.ee, 2147483640
  %narrow155 = add nuw i32 %i.ef, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.2.lcssa = phi i32 [ 0, %bb.c ], [ %narrow155, %.preheader.loopexit ] ; 3 uses
  %i.eg = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.eg, label %.lr.ph134, label %.loopexit

.lr.ph134:                                        ; preds = %.preheader
  %i.eh = zext i32 %i.s to i64                    ; 2 uses
  %i.ei = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.ej = xor i32 %.2.lcssa, -1
  %i.ek = add i32 %i.i, %i.ej                     ; 2 uses
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check205 = icmp ult i32 %i.ek, 11
  br i1 %min.iters.check205, label %scalar.ph204.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph134
  %i.en = getelementptr i8, ptr %i.b, i64 %i.ei
  %i.eo = getelementptr i8, ptr %i.b, i64 %i.ei
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.el
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %i.er = shl nuw nsw i64 %i.ei, 2
  %i.es = getelementptr i8, ptr %i.d, i64 %i.er
  %i.et = add nuw nsw i64 %i.ei, %i.el
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = getelementptr i8, ptr %i.d, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %bound0207 = icmp ult ptr %i.en, %i.ew
  %bound1208 = icmp ult ptr %i.es, %i.eq
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %scalar.ph204.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck206
  %n.vec211 = and i64 %i.em, 8589934588           ; 3 uses
  %i.ex = add nuw nsw i64 %n.vec211, %i.ei
  %broadcast.splatinsert212 = insertelement <4 x i64> poison, i64 %i.eh, i64 0
  %broadcast.splat213 = shufflevector <4 x i64> %broadcast.splatinsert212, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next217, %vector.body214 ] ; 2 uses
  %i.ey = add nuw i64 %index215, %i.ei            ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ey ; 2 uses
  %wide.load216 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !23, !alias.scope !77
  %i.fa = zext <4 x i32> %wide.load216 to <4 x i64>
  %i.fb = mul nuw <4 x i64> %broadcast.splat213, %i.fa
  %i.fc = add nuw <4 x i64> %i.fb, splat (i64 2147483648)
  %i.fd = lshr <4 x i64> %i.fc, splat (i64 32)    ; 2 uses
  %i.fe = trunc nuw <4 x i64> %i.fd to <4 x i32>
  %i.ff = icmp sgt <4 x i32> %i.fe, splat (i32 255)
  %i.fg = trunc <4 x i64> %i.fd to <4 x i8>
  %i.fh = select <4 x i1> %i.ff, <4 x i8> splat (i8 -1), <4 x i8> %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ey
  store <4 x i8> %i.fh, ptr %i.fi, align 1, !tbaa !16, !alias.scope !78, !noalias !77
  store <4 x i32> zeroinitializer, ptr %i.ez, align 4, !tbaa !23, !alias.scope !77
  %index.next217 = add nuw i64 %index215, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next217, %n.vec211
  br i1 %i.fj, label %middle.block218, label %vector.body214, !llvm.loop !67

middle.block218:                                  ; preds = %vector.body214
  %cmp.n219 = icmp eq i64 %i.em, %n.vec211
  br i1 %cmp.n219, label %.loopexit, label %scalar.ph204.preheader

scalar.ph204.preheader:                           ; preds = %vector.memcheck206, %.lr.ph134, %middle.block218
  %indvars.iv152.ph = phi i64 [ %i.ei, %vector.memcheck206 ], [ %i.ei, %.lr.ph134 ], [ %i.ex, %middle.block218 ]
  br label %scalar.ph204

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv147 = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next148, %.lr.ph131 ] ; 3 uses
  %indvars.iv145 = phi i64 [ 8, %.lr.ph131.preheader ], [ %indvars.iv.next146, %.lr.ph131 ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv147 ; 3 uses
  %.val = load <2 x i64>, ptr %i.fk, align 1, !tbaa !16 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %.val87 = load <2 x i64>, ptr %i.fl, align 1, !tbaa !16 ; 2 uses
  %i.fm = lshr <2 x i64> %.val, splat (i64 32)
  %i.fn = lshr <2 x i64> %.val87, splat (i64 32)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv147
  %i.fp = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fq = mul nuw <2 x i64> %i.fp, %i.v
  %i.fr = and <2 x i64> %.val87, splat (i64 4294967295)
  %i.fs = mul nuw <2 x i64> %i.fr, %i.v
  %i.ft = mul nuw <2 x i64> %i.fm, %i.v
  %i.fu = mul nuw <2 x i64> %i.fn, %i.v
  %i.fv = add nuw <2 x i64> %i.fq, splat (i64 2147483648)
  %i.fw = add nuw <2 x i64> %i.fs, splat (i64 2147483648)
  %i.fx = add nuw <2 x i64> %i.ft, splat (i64 2147483648)
  %i.fy = add nuw <2 x i64> %i.fu, splat (i64 2147483648)
  %i.fz = lshr <2 x i64> %i.fv, splat (i64 32)
  %i.ga = lshr <2 x i64> %i.fw, splat (i64 32)
  %i.gb = and <2 x i64> %i.fx, splat (i64 -4294967296)
  %i.gc = and <2 x i64> %i.fy, splat (i64 -4294967296)
  %i.gd = or disjoint <2 x i64> %i.fz, %i.gb
  %i.ge = or disjoint <2 x i64> %i.ga, %i.gc
  %i.gf = bitcast <2 x i64> %i.gd to <4 x i32>
  %i.gg = bitcast <2 x i64> %i.ge to <4 x i32>
  %i.gh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gf, <4 x i32> %i.gg)
  %i.gi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gh, <8 x i16> poison)
  %i.gj = bitcast <16 x i8> %i.gi to <2 x i64>
  %i.gk = extractelement <2 x i64> %i.gj, i64 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fk, i8 0, i64 32, i1 false)
  store i64 %i.gk, ptr %i.fo, align 1, !tbaa !16
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 8 ; 2 uses
  %.not85 = icmp samesign ugt i64 %indvars.iv.next146, %i.ed
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 8
  br i1 %.not85, label %.preheader.loopexit, label %.lr.ph131, !llvm.loop !68

scalar.ph204:                                     ; preds = %scalar.ph204.preheader, %scalar.ph204
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph204 ], [ %indvars.iv152.ph, %scalar.ph204.preheader ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !23
  %i.gn = zext i32 %i.gm to i64
  %i.go = mul nuw i64 %i.gn, %i.eh
  %i.gp = add nuw i64 %i.go, 2147483648
  %i.gq = lshr i64 %i.gp, 32                      ; 2 uses
  %i.gr = trunc nuw i64 %i.gq to i32
  %i.gs = icmp sgt i32 %i.gr, 255
  %i.gt = trunc i64 %i.gq to i8
  %i.gu = select i1 %i.gs, i8 -1, i8 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv152
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !16
  store i32 0, ptr %i.gl, align 4, !tbaa !23
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.gw = trunc nuw i64 %indvars.iv.next153 to i32
  %i.gx = icmp sgt i32 %i.i, %i.gw
  br i1 %i.gx, label %scalar.ph204, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph204, %middle.block, %middle.block218, %.preheader123, %.preheader
  ret void
}

declare void @WebPRescalerImportRowExpand_C(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

declare void @WebPRescalerImportRowShrink_C(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"WebPRescaler", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !9, i64 72, !5, i64 80, !10, i64 88, !10, i64 96}
!12 = !{!11, !10, i64 96}
!13 = !{!11, !5, i64 52}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !5, i64 36}
!16 = !{!4, !4, i64 0}
!17 = !{!11, !5, i64 40}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !9, i64 72}
!20 = !{!11, !10, i64 88}
!21 = !{!11, !5, i64 16}
!22 = !{!11, !5, i64 24}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!8, !8, i64 0}
!27 = !{!11, !5, i64 44}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!11, !5, i64 12}
!31 = distinct !{!31, i1 false, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !18, !24, !25}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18, !24}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !18, !24, !25}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18, !24}
!46 = !{!32}
!47 = !{!33}
!48 = !{!34}
!49 = !{!33, !32}
!50 = !{!11, !5, i64 32}
!51 = !{!39}
!52 = !{!40}
!53 = !{!41}
!54 = !{!42}
!55 = !{!40, !41, !39}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !18, !24, !25}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18, !24}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !18, !24, !25}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18, !24}
!70 = !{!11, !5, i64 20}
!71 = !{!57}
!72 = !{!58}
!73 = !{!59}
!74 = !{!58, !57}
!75 = !{!60}
!76 = !{!59, !58, !57}
!77 = !{!65}
!78 = !{!66}
end_hunk_0
