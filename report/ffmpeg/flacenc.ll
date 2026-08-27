Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@encode_residual_fixed:bb.a
.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader243
  %indvars.iv189.unr = phi i64 [ %indvars.iv189.ph, %.preheader.preheader243 ], [ %indvars.iv.next190.prol, %.preheader.prol ]
  %i.bf = sub nsw i64 %indvars.iv189.ph, %wide.trip.count192
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.3, %.preheader ], [ %indvars.iv189.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv189
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !47
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv189
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !47
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next190
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next190
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !47
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next190.1
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next190.1
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !47
  %indvars.iv.next190.2 = add nuw nsw i64 %indvars.iv189, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next190.2
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !47
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next190.2
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !47
  %indvars.iv.next190.3 = add nuw nsw i64 %indvars.iv189, 4 ; 2 uses
  %exitcond193.not.3 = icmp eq i64 %indvars.iv.next190.3, %wide.trip.count192
  br i1 %exitcond193.not.3, label %.loopexit, label %.preheader, !llvm.loop !230

.preheader155:                                    ; preds = %.preheader155.prol.loopexit, %.preheader155
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %.preheader155 ], [ %indvars.iv184.unr, %.preheader155.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv184 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = getelementptr i8, ptr %i.bt, i64 -4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47
  %i.bx = sub nsw i32 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv184
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !47
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next185 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47
  %i.cb = getelementptr i8, ptr %i.bz, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47
  %i.cd = sub nsw i32 %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next185
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !47
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next185.1 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !47
  %i.ch = getelementptr i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = sub nsw i32 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next185.1
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !47
  %indvars.iv.next185.2 = add nuw nsw i64 %indvars.iv184, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next185.2 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !47
  %i.cn = getelementptr i8, ptr %i.cl, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !47
  %i.cp = sub nsw i32 %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next185.2
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !47
  %indvars.iv.next185.3 = add nuw nsw i64 %indvars.iv184, 4 ; 2 uses
  %exitcond188.not.3 = icmp eq i64 %indvars.iv.next185.3, %wide.trip.count187
  br i1 %exitcond188.not.3, label %.loopexit, label %.preheader155, !llvm.loop !231

bb.b:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  %i.ct = load i32, ptr %1, align 4, !tbaa !47
  %i.cu = sub nsw i32 %i.cs, %i.ct
  %i.cv = zext nneg i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv181 = phi i64 [ 2, %bb.b ], [ %indvars.iv.next182, %bb.c ] ; 4 uses
  %.0132163 = phi i32 [ %i.cu, %bb.b ], [ %i.dh, %bb.c ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv181 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cy = getelementptr i8, ptr %i.cw, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !47
  %i.da = sub nsw i32 %i.cx, %i.cz                ; 2 uses
  %i.db = sub nsw i32 %i.da, %.0132163
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv181
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !47
  %i.dd = or disjoint i64 %indvars.iv181, 1       ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !47
  %i.dg = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.dh = sub nsw i32 %i.df, %i.dg                ; 2 uses
  %i.di = sub nsw i32 %i.dh, %i.da
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dd
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !47
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 2 ; 2 uses
  %i.dk = icmp samesign ult i64 %indvars.iv.next182, %i.cv
  br i1 %i.dk, label %bb.c, label %.loopexit, !llvm.loop !232

bb.d:                                             ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !47 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !47 ; 2 uses
  %i.dp = sub nsw i32 %i.dm, %i.do
  %i.dq = shl i32 %i.do, 1
  %i.dr = sub i32 %i.dm, %i.dq
  %i.ds = load i32, ptr %1, align 4, !tbaa !47
  %i.dt = add nsw i32 %i.dr, %i.ds
  %i.du = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv178 = phi i64 [ 3, %bb.d ], [ %indvars.iv.next179, %bb.e ] ; 4 uses
  %.0133161 = phi i32 [ %i.dp, %bb.d ], [ %i.eh, %bb.e ]
  %.0137160 = phi i32 [ %i.dt, %bb.d ], [ %i.ei, %bb.e ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv178 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.dx = getelementptr i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.dz = sub nsw i32 %i.dw, %i.dy                ; 2 uses
  %i.ea = sub nsw i32 %i.dz, %.0133161            ; 2 uses
  %i.eb = sub nsw i32 %i.ea, %.0137160
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv178
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !47
  %i.ed = add nuw nsw i64 %indvars.iv178, 1       ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !47
  %i.eg = load i32, ptr %i.dv, align 4, !tbaa !47
  %i.eh = sub nsw i32 %i.ef, %i.eg                ; 2 uses
  %i.ei = sub nsw i32 %i.eh, %i.dz                ; 2 uses
  %i.ej = sub nsw i32 %i.ei, %i.ea
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ed
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !47
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next179, %i.du
  br i1 %i.el, label %bb.e, label %.loopexit, !llvm.loop !233

bb.f:                                             ; preds = %._crit_edge
  %i.em = icmp slt i32 %3, %2
  br i1 %i.em, label %.lr.ph172.preheader, label %.loopexit

.lr.ph172.preheader:                              ; preds = %bb.f
  %i.en = sext i32 %3 to i64                      ; 2 uses
  %i.eo = getelementptr [4 x i8], ptr %1, i64 %i.en ; 4 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 -4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !47 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 -16
  %i.es = load i32, ptr %i.er, align 4, !tbaa !47
  %i.et = sub i32 %i.eq, %i.es
  %i.eu = getelementptr i8, ptr %i.eo, i64 -12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !47 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eo, i64 -8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47 ; 3 uses
  %reass.add = sub i32 %i.ev, %i.ex
  %reass.mul = mul i32 %reass.add, 3
  %i.ey = add i32 %i.et, %reass.mul
  %i.ez = shl i32 %i.ex, 1
  %i.fa = sub i32 %i.eq, %i.ez
  %i.fb = add nsw i32 %i.fa, %i.ev
  %i.fc = sub nsw i32 %i.eq, %i.ex
  %i.fd = zext nneg i32 %2 to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %.lr.ph172
  %indvars.iv194 = phi i64 [ %i.en, %.lr.ph172.preheader ], [ %indvars.iv.next195, %.lr.ph172 ] ; 4 uses
  %.0134169 = phi i32 [ %i.ey, %.lr.ph172.preheader ], [ %i.ft, %.lr.ph172 ]
  %.0135168 = phi i32 [ %i.fb, %.lr.ph172.preheader ], [ %i.fs, %.lr.ph172 ]
  %.0136167 = phi i32 [ %i.fc, %.lr.ph172.preheader ], [ %i.fr, %.lr.ph172 ]
  %i.fe = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv194 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !47
  %i.fg = getelementptr i8, ptr %i.fe, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !47
  %i.fi = sub nsw i32 %i.ff, %i.fh                ; 2 uses
  %i.fj = sub nsw i32 %i.fi, %.0136167            ; 2 uses
  %i.fk = sub nsw i32 %i.fj, %.0135168            ; 2 uses
  %i.fl = sub nsw i32 %i.fk, %.0134169
  %i.fm = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv194
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !47
  %i.fn = add nsw i64 %indvars.iv194, 1           ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !47
  %i.fq = load i32, ptr %i.fe, align 4, !tbaa !47
  %i.fr = sub nsw i32 %i.fp, %i.fq                ; 2 uses
  %i.fs = sub nsw i32 %i.fr, %i.fi                ; 2 uses
  %i.ft = sub nsw i32 %i.fs, %i.fj                ; 2 uses
  %i.fu = sub nsw i32 %i.ft, %i.fk
  %i.fv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fn
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !47
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, 2 ; 2 uses
  %i.fw = icmp slt i64 %indvars.iv.next195, %i.fd
  br i1 %i.fw, label %.lr.ph172, label %.loopexit, !llvm.loop !234

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader155.prol.loopexit, %.preheader155, %.preheader.prol.loopexit, %.preheader, %.lr.ph172, %middle.block223, %middle.block237, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @find_subframe_rice_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca [9 x i64], align 16               ; 6 uses
  %3 = alloca %struct.RiceContext, align 4        ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7349976
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7349920
  %i.f = load i32, ptr %i.e, align 8, !tbaa !82   ; 7 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = xor i32 %i.g, %i.f                       ; 3 uses
  %.not.i19.i = icmp ult i32 %i.h, 65536          ; 2 uses
  %i.i = lshr i32 %i.h, 16
  %spec.select.i20.i = select i1 %.not.i19.i, i32 %i.h, i32 %i.i ; 3 uses
  %spec.select12.i21.i = select i1 %.not.i19.i, i32 0, i32 16 ; 2 uses
  %.not11.i22.i = icmp samesign ult i32 %spec.select.i20.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i20.i, 8
  %i.k = or disjoint i32 %spec.select12.i21.i, 8
  %.110.i23.i = select i1 %.not11.i22.i, i32 %spec.select.i20.i, i32 %i.j
  %.1.i24.i = select i1 %.not11.i22.i, i32 %spec.select12.i21.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i23.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !68
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i24.i, %i.o          ; 3 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.p) ; 2 uses
  %i.q = icmp sgt i32 %2, 0
  br i1 %i.q, label %bb.b, label %get_max_p_order.exit

get_max_p_order.exit:                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  %..i29 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.p)
  br label %get_max_p_order.exit38

bb.b:                                             ; preds = %bb.a
  %i.t = sdiv i32 %i.f, %2                        ; 3 uses
  %.not.i.i = icmp ult i32 %i.t, 65536            ; 2 uses
  %i.u = lshr i32 %i.t, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.t, i32 %i.u ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.v = lshr i32 %spec.select.i.i, 8
  %i.w = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.v
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.w
  %i.x = zext nneg i32 %.110.i.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %.1.i.i, %i.aa          ; 2 uses
  %...i = tail call i32 @llvm.smin.i32(i32 %..i, i32 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %..i2942 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.p)
  %...i37 = tail call i32 @llvm.smin.i32(i32 %..i2942, i32 %i.ab)
  br label %get_max_p_order.exit38

get_max_p_order.exit38:                           ; preds = %get_max_p_order.exit, %bb.b
  %.0.i43 = phi i32 [ %...i, %bb.b ], [ %..i, %get_max_p_order.exit ] ; 3 uses
  %.0.i30 = phi i32 [ %...i37, %bb.b ], [ %..i29, %get_max_p_order.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !87
  %i.ag = mul nsw i32 %i.af, %2
  %i.ah = add nsw i32 %i.ag, 10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !88 ; 3 uses
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = load i32, ptr %1, align 8, !tbaa !140
  %i.an = icmp eq i32 %i.am, 32
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_max_p_order.exit38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !148
  %i.aq = mul nsw i32 %i.ap, %2
  %i.ar = add nsw i32 %i.aq, 9
  %i.as = sext i32 %i.ar to i64
  %i.at = add nsw i64 %i.as, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %get_max_p_order.exit38
  %.0 = phi i64 [ %i.at, %bb.c ], [ %i.al, %get_max_p_order.exit38 ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 263328 ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 591004 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7349988
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.az = shl nuw i32 1, %i.aj                    ; 3 uses
  %i.ba = add nsw i32 %i.az, -2                   ; 3 uses
  store i32 %i.aj, ptr %3, align 4, !tbaa !236
  %i.bb = icmp slt i32 %2, %i.f
  br i1 %i.bb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.bc = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count.i = sext i32 %i.f to i64       ; 2 uses
  %i.bd = sub nsw i64 %wide.trip.count.i, %i.bc   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bd, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bd, -8                      ; 3 uses
  %i.be = add nsw i64 %n.vec, %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = add i64 %index, %i.bc                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !47 ; 2 uses
  %wide.load76 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !47 ; 2 uses
  %i.bi = shl <4 x i32> %wide.load, splat (i32 1)
  %i.bj = shl <4 x i32> %wide.load76, splat (i32 1)
  %i.bk = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.bl = ashr <4 x i32> %wide.load76, splat (i32 31)
  %i.bm = xor <4 x i32> %i.bi, %i.bk
  %i.bn = xor <4 x i32> %i.bj, %i.bl
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !47
  store <4 x i32> %i.bn, ptr %i.bp, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bc, %.lr.ph.preheader.i ], [ %i.be, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47 ; 2 uses
  %i.bt = shl i32 %i.bs, 1
  %i.bu = ashr i32 %i.bs, 31
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.i
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !47
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !238

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.not.i = icmp eq i32 %i.ay, 0                  ; 2 uses
  %i.bx = select i1 %.not.i, i32 0, i32 %i.ba     ; 5 uses
  %i.by = shl nuw nsw i32 1, %.0.i30              ; 2 uses
  %.not58.i.i = icmp slt i32 %i.bx, 0             ; 2 uses
  br i1 %.not58.i.i, label %calc_sum_top.exit.i, label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %._crit_edge.i
  %i.bz = sext i32 %2 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bz ; 2 uses
  %i.cb = ashr i32 %i.f, %.0.i30
  %i.cc = sext i32 %i.cb to i64                   ; 7 uses
  %.03651.i.i = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cc ; 2 uses
  %.not66.i.i = icmp eq i32 %.0.i30, 31
  br i1 %.not66.i.i, label %calc_sum_top.exit.i, label %.lr.ph62.split.i.i

.lr.ph62.split.i.i:                               ; preds = %.lr.ph62.i.i
  %.not41.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not41.i.i, label %.lr.ph56.us.i.i, label %.lr.ph56.preheader.i.i

.lr.ph56.preheader.i.i:                           ; preds = %.lr.ph62.split.i.i
  %i.cd = add nuw nsw i32 %i.bx, 1
  %wide.trip.count75.i.i = zext nneg i32 %i.cd to i64
  %wide.trip.count.i.i = zext nneg i32 %i.by to i64
  %4 = shl nsw i64 %i.cc, 2
  %5 = add i64 %4, %i.a
  %6 = add i64 %5, 1184
  %7 = shl nsw i64 %i.cc, 2
  br label %.lr.ph56.i.i

.lr.ph56.us.i.i:                                  ; preds = %.lr.ph62.split.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = add i64 %i.cf, 1184
  %i.ch = shl nsw i64 %i.cc, 2
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge48.us.us.i.i, %.lr.ph56.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge48.us.us.i.i ], [ 0, %.lr.ph56.us.i.i ] ; 3 uses
  %.03654.us.us.i.i = phi ptr [ %.036.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %.03651.i.i, %.lr.ph56.us.i.i ] ; 3 uses
  %.03753.us.us.i.i = phi ptr [ %.2.lcssa.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %i.ca, %.lr.ph56.us.i.i ] ; 6 uses
  %i.ci = icmp ult ptr %.03753.us.us.i.i, %.03654.us.us.i.i
  br i1 %i.ci, label %.lr.ph47.us.us.i.i.preheader, label %._crit_edge48.us.us.i.i

.lr.ph47.us.us.i.i.preheader:                     ; preds = %.preheader.us.us.i.i
  %.03753.us.us.i.i90 = ptrtoaddr ptr %.03753.us.us.i.i to i64 ; 2 uses
  %i.cj = mul i64 %i.ch, %indvars.iv77.i.i
  %i.ck = add i64 %i.cg, %i.cj
  %i.cl = add i64 %.03753.us.us.i.i90, 4
  %umax.a = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cm = xor i64 %.03753.us.us.i.i90, -1
  %i.cn = add i64 %umax.a, %i.cm                  ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check92 = icmp ult i64 %i.cn, 12
  br i1 %min.iters.check92, label %.lr.ph47.us.us.i.i.preheader127, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph47.us.us.i.i.preheader
  %n.vec94 = and i64 %i.cp, 9223372036854775804   ; 3 uses
  %i.cq = shl i64 %n.vec94, 2
  %i.cr = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cq ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body95 ] ; 2 uses
  %vec.phi97 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.cw, %vector.body95 ]
  %vec.phi98 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.cx, %vector.body95 ]
  %i.cs = shl i64 %index96, 2
  %next.gep99 = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep99, i64 8
  %wide.load100 = load <2 x i32>, ptr %next.gep99, align 4, !tbaa !47
  %wide.load101 = load <2 x i32>, ptr %i.ct, align 4, !tbaa !47
  %i.cu = zext <2 x i32> %wide.load100 to <2 x i64>
  %i.cv = zext <2 x i32> %wide.load101 to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi97, %i.cu         ; 2 uses
  %i.cx = add <2 x i64> %vec.phi98, %i.cv         ; 2 uses
  %index.next102 = add nuw i64 %index96, 4        ; 2 uses
  %i.cy = icmp eq i64 %index.next102, %n.vec94
  br i1 %i.cy, label %middle.block103, label %vector.body95, !llvm.loop !239

middle.block103:                                  ; preds = %vector.body95
  %bin.rdx104 = add <2 x i64> %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx104) ; 2 uses
  %cmp.n105 = icmp eq i64 %i.cp, %n.vec94
  br i1 %cmp.n105, label %._crit_edge48.us.us.i.i, label %.lr.ph47.us.us.i.i.preheader127

.lr.ph47.us.us.i.i.preheader127:                  ; preds = %.lr.ph47.us.us.i.i.preheader, %middle.block103
  %.046.us.us.i.i.ph = phi i64 [ 0, %.lr.ph47.us.us.i.i.preheader ], [ %i.cz, %middle.block103 ]
  %.245.us.us.i.i.ph = phi ptr [ %.03753.us.us.i.i, %.lr.ph47.us.us.i.i.preheader ], [ %i.cr, %middle.block103 ]
  br label %.lr.ph47.us.us.i.i

.lr.ph47.us.us.i.i:                               ; preds = %.lr.ph47.us.us.i.i.preheader127, %.lr.ph47.us.us.i.i
  %.046.us.us.i.i = phi i64 [ %i.dd, %.lr.ph47.us.us.i.i ], [ %.046.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader127 ]
  %.245.us.us.i.i = phi ptr [ %i.da, %.lr.ph47.us.us.i.i ], [ %.245.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader127 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.245.us.us.i.i, i64 4 ; 3 uses
  %i.db = load i32, ptr %.245.us.us.i.i, align 4, !tbaa !47
  %i.dc = zext i32 %i.db to i64
  %i.dd = add i64 %.046.us.us.i.i, %i.dc          ; 2 uses
  %i.de = icmp ult ptr %i.da, %.03654.us.us.i.i
  br i1 %i.de, label %.lr.ph47.us.us.i.i, label %._crit_edge48.us.us.i.i, !llvm.loop !240

._crit_edge48.us.us.i.i:                          ; preds = %.lr.ph47.us.us.i.i, %middle.block103, %.preheader.us.us.i.i
  %.2.lcssa.us.us.i.i = phi ptr [ %.03753.us.us.i.i, %.preheader.us.us.i.i ], [ %i.cr, %middle.block103 ], [ %i.da, %.lr.ph47.us.us.i.i ]
  %.0.lcssa.us.us.i.i = phi i64 [ 0, %.preheader.us.us.i.i ], [ %i.cz, %middle.block103 ], [ %i.dd, %.lr.ph47.us.us.i.i ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv77.i.i
  store i64 %.0.lcssa.us.us.i.i, ptr %i.df, align 8, !tbaa !109
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %.036.us.us.i.i = getelementptr inbounds [4 x i8], ptr %.03654.us.us.i.i, i64 %i.cc
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %calc_sum_top.exit.i, label %.preheader.us.us.i.i, !llvm.loop !241

.lr.ph56.i.i:                                     ; preds = %._crit_edge57.split.i.i, %.lr.ph56.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.lr.ph56.preheader.i.i ], [ %i.dg, %._crit_edge57.split.i.i ] ; 3 uses
  %i.dg = add nuw nsw i64 %indvars.iv72.i.i, 1    ; 3 uses
  %i.dh = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv72.i.i
  %i.di = trunc nuw nsw i64 %indvars.iv72.i.i to i32 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph56.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph56.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03654.i.i = phi ptr [ %.03651.i.i, %.lr.ph56.i.i ], [ %.036.i.i, %._crit_edge.i.i ] ; 4 uses
  %.03753.i.i = phi ptr [ %i.ca, %.lr.ph56.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.dj = ptrtoint ptr %.03654.i.i to i64
  %i.dk = ptrtoint ptr %.03753.i.i to i64         ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = mul nsw i64 %i.dm, %i.dg                ; 3 uses
  %i.do = icmp ult ptr %.03753.i.i, %.03654.i.i
  br i1 %i.do, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %8 = mul i64 %7, %indvars.iv.i.i
  %9 = add i64 %6, %8
  %i.dp = add i64 %i.dk, 4
  %i.dq = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.dp)
  %i.dr = xor i64 %i.dk, -1
  %i.ds = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.ds, 12
  br i1 %min.iters.check78, label %.lr.ph.i.i.preheader132, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec80 = and i64 %i.du, 9223372036854775804   ; 3 uses
  %i.dv = shl i64 %n.vec80, 2
  %i.dw = getelementptr i8, ptr %.03753.i.i, i64 %i.dv ; 2 uses
  %i.dx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dn, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next86, %vector.body81 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dx, %vector.ph79 ], [ %i.ee, %vector.body81 ]
  %vec.phi83 = phi <2 x i64> [ zeroinitializer, %vector.ph79 ], [ %i.ef, %vector.body81 ]
  %i.dy = shl i64 %index82, 2
  %next.gep = getelementptr i8, ptr %.03753.i.i, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep, i64 8
  %wide.load84 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load85 = load <2 x i32>, ptr %i.dz, align 4, !tbaa !47
  %i.ea = lshr <2 x i32> %wide.load84, %broadcast.splat
  %i.eb = lshr <2 x i32> %wide.load85, %broadcast.splat
  %i.ec = zext <2 x i32> %i.ea to <2 x i64>
  %i.ed = zext <2 x i32> %i.eb to <2 x i64>
  %i.ee = add <2 x i64> %vec.phi, %i.ec           ; 2 uses
  %i.ef = add <2 x i64> %vec.phi83, %i.ed         ; 2 uses
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next86, %n.vec80
  br i1 %i.eg, label %middle.block87, label %vector.body81, !llvm.loop !242

middle.block87:                                   ; preds = %vector.body81
  %bin.rdx = add <2 x i64> %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n88 = icmp eq i64 %i.du, %n.vec80
  br i1 %cmp.n88, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader132

.lr.ph.i.i.preheader132:                          ; preds = %.lr.ph.i.i.preheader, %middle.block87
  %.03543.i.i.ph = phi i64 [ %i.dn, %.lr.ph.i.i.preheader ], [ %i.eh, %middle.block87 ]
  %.142.i.i.ph = phi ptr [ %.03753.i.i, %.lr.ph.i.i.preheader ], [ %i.dw, %middle.block87 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader132, %.lr.ph.i.i
  %.03543.i.i = phi i64 [ %i.em, %.lr.ph.i.i ], [ %.03543.i.i.ph, %.lr.ph.i.i.preheader132 ]
  %.142.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.142.i.i.ph, %.lr.ph.i.i.preheader132 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 4 ; 3 uses
  %i.ej = load i32, ptr %.142.i.i, align 4, !tbaa !47
  %i.ek = lshr i32 %i.ej, %i.di
  %i.el = zext i32 %i.ek to i64
  %i.em = add i64 %.03543.i.i, %i.el              ; 2 uses
  %i.en = icmp ult ptr %i.ei, %.03654.i.i
  br i1 %i.en, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block87, %bb.e
  %.1.lcssa.i.i = phi ptr [ %.03753.i.i, %bb.e ], [ %i.dw, %middle.block87 ], [ %i.ei, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i64 [ %i.dn, %bb.e ], [ %i.eh, %middle.block87 ], [ %i.em, %.lr.ph.i.i ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i.i
  store i64 %.035.lcssa.i.i, ptr %i.eo, align 8, !tbaa !109
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.036.i.i = getelementptr inbounds [4 x i8], ptr %.03654.i.i, i64 %i.cc
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.split.i.i, label %bb.e, !llvm.loop !241

._crit_edge57.split.i.i:                          ; preds = %._crit_edge.i.i
  %exitcond76.not.i.i = icmp eq i64 %i.dg, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %calc_sum_top.exit.i, label %.lr.ph56.i.i, !llvm.loop !244

calc_sum_top.exit.i:                              ; preds = %._crit_edge57.split.i.i, %._crit_edge48.us.us.i.i, %.lr.ph62.i.i, %._crit_edge.i
  %i.ep = sext i32 %.0.i43 to i64                 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ep
  store i64 4294967295, ptr %i.eq, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.es = icmp eq i32 %.0.i30, %.0.i43
  %i.et = add i32 %i.az, -1                       ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.et to i64  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not15.i.i.i = icmp slt i32 %i.az, 2
  %i.ev = add nsw i32 %i.bx, 1                    ; 2 uses
  %wide.trip.count.i49.i = zext i32 %i.ev to i64  ; 2 uses
  %i.ew = sext i32 %.0.i30 to i64
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ex = icmp eq i32 %i.et, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod139 = trunc i32 %i.et to i1
  %xtraiter141 = and i64 %wide.trip.count.i49.i, 1
  %i.ey = icmp eq i32 %i.bx, 0
  %unroll_iter144 = and i64 %wide.trip.count.i49.i, 2147483646
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod143 = trunc i32 %i.ev to i1
  br label %calc_sum_next.exit.i

calc_sum_next.exit.i:                             ; preds = %calc_sum_next.exit.i.backedge, %calc_sum_top.exit.i
  %indvars.iv68.i = phi i64 [ %i.ew, %calc_sum_top.exit.i ], [ %indvars.iv.next69.i, %calc_sum_next.exit.i.backedge ] ; 7 uses
  %.0.i39 = phi i32 [ %.0.i43, %calc_sum_top.exit.i ], [ %.1.i, %calc_sum_next.exit.i.backedge ] ; 2 uses
  %i.ez = trunc nsw i64 %indvars.iv68.i to i32    ; 5 uses
  %i.fa = shl i32 4, %i.ez
  %i.fb = sext i32 %i.fa to i64                   ; 5 uses
  %i.fc = ashr i32 %i.f, %i.ez                    ; 4 uses
  %i.fd = icmp eq i64 %indvars.iv68.i, 31
  br i1 %i.fd, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %calc_sum_next.exit.i
  %i.fe = shl nuw nsw i32 1, %i.ez
  %i.ff = sub nsw i32 %i.fc, %2                   ; 3 uses
  %wide.trip.count60.i.i = zext nneg i32 %i.fe to i64 ; 5 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i44.i
  %i.fg = load i64, ptr %i.av, align 8, !tbaa !109 ; 2 uses
  %i.fh = ashr i32 %i.ff, 1
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %.not.i.us.peel.i.i = icmp ugt i64 %i.fg, %i.fi
  %i.fj = sub i64 %i.fg, %i.fi                    ; 2 uses
  br i1 %.not.i.us.peel.i.i, label %bb.f, label %find_optimal_param.exit.us.peel.i.i

bb.f:                                             ; preds = %.lr.ph.split.us.preheader.i.i
  %i.fk = sext i32 %i.ff to i64
  %i.fl = udiv i64 %i.fj, %i.fk
  %i.fm = tail call i64 @llvm.smax.i64(i64 %i.fl, i64 -2147483648)
  %i.fn = tail call i64 @llvm.smin.i64(i64 %i.fm, i64 2147483647) ; 2 uses
  %.0.i.i.us.peel.i.i = trunc nsw i64 %i.fn to i32 ; 2 uses
  %.not.i.i.us.peel.i.i = icmp ult i64 %i.fn, 65536 ; 2 uses
  %i.fo = lshr i32 %.0.i.i.us.peel.i.i, 16
  %spec.select.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 %.0.i.i.us.peel.i.i, i32 %i.fo ; 3 uses
  %spec.select12.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.peel.i.i = icmp samesign ult i32 %spec.select.i.i.us.peel.i.i, 256 ; 2 uses
  %i.fp = lshr i32 %spec.select.i.i.us.peel.i.i, 8
  %i.fq = or disjoint i32 %spec.select12.i.i.us.peel.i.i, 8
  %.110.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select.i.i.us.peel.i.i, i32 %i.fp
  %.1.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select12.i.i.us.peel.i.i, i32 %i.fq
  %i.fr = zext nneg i32 %.110.i.i.us.peel.i.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !68
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nuw nsw i32 %.1.i.i.us.peel.i.i, %i.fu
  %i.fw = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.peel.i.i

find_optimal_param.exit.us.peel.i.i:              ; preds = %bb.f, %.lr.ph.split.us.preheader.i.i
  %.0.i.us.peel.i.i = phi i32 [ %i.fw, %bb.f ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 3 uses
  %i.fx = add nsw i32 %.0.i.us.peel.i.i, 1
  %i.fy = mul nsw i32 %i.fx, %i.ff
  %i.fz = sext i32 %i.fy to i64
  %i.ga = zext nneg i32 %.0.i.us.peel.i.i to i64
  %i.gb = lshr i64 %i.fj, %i.ga
  %i.gc = add i64 %i.gb, %i.fb
  %.1.us.peel.i.i = add i64 %i.gc, %i.fz          ; 2 uses
  store i32 %.0.i.us.peel.i.i, ptr %i.eu, align 4, !tbaa !47
  %i.gd = icmp eq i64 %indvars.iv68.i, 0
  br i1 %i.gd, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.peel.next.i.i

.lr.ph.split.us.peel.next.i.i:                    ; preds = %find_optimal_param.exit.us.peel.i.i
  %i.ge = ashr i32 %i.fc, 1
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = sext i32 %i.fc to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %find_optimal_param.exit.us.i.i, %.lr.ph.split.us.peel.next.i.i
  %indvars.iv56.i.i = phi i64 [ 1, %.lr.ph.split.us.peel.next.i.i ], [ %indvars.iv.next57.i.i, %find_optimal_param.exit.us.i.i ] ; 3 uses
  %.040.us.i.i = phi i64 [ %.1.us.peel.i.i, %.lr.ph.split.us.peel.next.i.i ], [ %.1.us.i.i, %find_optimal_param.exit.us.i.i ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv56.i.i
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !109 ; 2 uses
  %.not.i.us.i.i = icmp ugt i64 %i.gi, %i.gf
  %i.gj = sub i64 %i.gi, %i.gf                    ; 2 uses
  br i1 %.not.i.us.i.i, label %bb.g, label %find_optimal_param.exit.us.i.i

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gk = udiv i64 %i.gj, %i.gg
  %i.gl = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 -2147483648)
  %i.gm = tail call i64 @llvm.smin.i64(i64 %i.gl, i64 2147483647) ; 2 uses
  %.0.i.i.us.i.i = trunc nsw i64 %i.gm to i32     ; 2 uses
  %.not.i.i.us.i.i = icmp ult i64 %i.gm, 65536    ; 2 uses
  %i.gn = lshr i32 %.0.i.i.us.i.i, 16
  %spec.select.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 %.0.i.i.us.i.i, i32 %i.gn ; 3 uses
  %spec.select12.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.i.i = icmp samesign ult i32 %spec.select.i.i.us.i.i, 256 ; 2 uses
  %i.go = lshr i32 %spec.select.i.i.us.i.i, 8
  %i.gp = or disjoint i32 %spec.select12.i.i.us.i.i, 8
  %.110.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select.i.i.us.i.i, i32 %i.go
  %.1.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select12.i.i.us.i.i, i32 %i.gp
  %i.gq = zext nneg i32 %.110.i.i.us.i.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !68
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nuw nsw i32 %.1.i.i.us.i.i, %i.gt
  %i.gv = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.i.i

find_optimal_param.exit.us.i.i:                   ; preds = %bb.g, %.lr.ph.split.us.i.i
  %.0.i.us.i.i = phi i32 [ %i.gv, %bb.g ], [ 0, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.gw = add nsw i32 %.0.i.us.i.i, 1
  %i.gx = mul nsw i32 %i.gw, %i.fc
  %i.gy = sext i32 %i.gx to i64
  %i.gz = zext nneg i32 %.0.i.us.i.i to i64
  %i.ha = lshr i64 %i.gj, %i.gz
  %i.hb = add i64 %i.ha, %.040.us.i.i
  %.1.us.i.i = add i64 %i.hb, %i.gy               ; 2 uses
end_hunk_0
