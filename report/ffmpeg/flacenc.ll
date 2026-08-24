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
  %6 = add i64 %5, 1183
  %7 = shl nsw i64 %i.cc, 2
  br label %.lr.ph56.i.i

.lr.ph56.us.i.i:                                  ; preds = %.lr.ph62.split.i.i
  %wide.trip.count81.i.i = zext nneg i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = add i64 %i.ce, %i.a
  %i.cg = add i64 %i.cf, 1183
  %i.ch = shl nsw i64 %i.cc, 2
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge48.us.us.i.i, %.lr.ph56.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge48.us.us.i.i ], [ 0, %.lr.ph56.us.i.i ] ; 3 uses
  %.03654.us.us.i.i = phi ptr [ %.036.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %.03651.i.i, %.lr.ph56.us.i.i ] ; 3 uses
  %.03753.us.us.i.i = phi ptr [ %.2.lcssa.us.us.i.i, %._crit_edge48.us.us.i.i ], [ %i.ca, %.lr.ph56.us.i.i ] ; 6 uses
  %i.ci = icmp ult ptr %.03753.us.us.i.i, %.03654.us.us.i.i
  br i1 %i.ci, label %.lr.ph47.us.us.i.i.preheader, label %._crit_edge48.us.us.i.i

.lr.ph47.us.us.i.i.preheader:                     ; preds = %.preheader.us.us.i.i
  %.03753.us.us.i.i90 = ptrtoaddr ptr %.03753.us.us.i.i to i64
  %i.cj = mul i64 %i.ch, %indvars.iv77.i.i
  %i.ck = add i64 %i.cg, %i.cj
  %8 = sub i64 %i.ck, %.03753.us.us.i.i90         ; 2 uses
  %i.cl = lshr i64 %8, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check92 = icmp ult i64 %8, 12
  br i1 %min.iters.check92, label %.lr.ph47.us.us.i.i.preheader127, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph47.us.us.i.i.preheader
  %n.vec94 = and i64 %i.cm, 9223372036854775804   ; 3 uses
  %i.cn = shl i64 %n.vec94, 2
  %i.co = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cn ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body95 ] ; 2 uses
  %vec.phi97 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.ct, %vector.body95 ]
  %vec.phi98 = phi <2 x i64> [ zeroinitializer, %vector.ph93 ], [ %i.cu, %vector.body95 ]
  %i.cp = shl i64 %index96, 2
  %next.gep99 = getelementptr i8, ptr %.03753.us.us.i.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep99, i64 8
  %wide.load100 = load <2 x i32>, ptr %next.gep99, align 4, !tbaa !47
  %wide.load101 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !47
  %i.cr = zext <2 x i32> %wide.load100 to <2 x i64>
  %i.cs = zext <2 x i32> %wide.load101 to <2 x i64>
  %i.ct = add <2 x i64> %vec.phi97, %i.cr         ; 2 uses
  %i.cu = add <2 x i64> %vec.phi98, %i.cs         ; 2 uses
  %index.next102 = add nuw i64 %index96, 4        ; 2 uses
  %i.cv = icmp eq i64 %index.next102, %n.vec94
  br i1 %i.cv, label %middle.block103, label %vector.body95, !llvm.loop !239

middle.block103:                                  ; preds = %vector.body95
  %bin.rdx104 = add <2 x i64> %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx104) ; 2 uses
  %cmp.n105 = icmp eq i64 %i.cm, %n.vec94
  br i1 %cmp.n105, label %._crit_edge48.us.us.i.i, label %.lr.ph47.us.us.i.i.preheader127

.lr.ph47.us.us.i.i.preheader127:                  ; preds = %.lr.ph47.us.us.i.i.preheader, %middle.block103
  %.046.us.us.i.i.ph = phi i64 [ 0, %.lr.ph47.us.us.i.i.preheader ], [ %i.cw, %middle.block103 ]
  %.245.us.us.i.i.ph = phi ptr [ %.03753.us.us.i.i, %.lr.ph47.us.us.i.i.preheader ], [ %i.co, %middle.block103 ]
  br label %.lr.ph47.us.us.i.i

.lr.ph47.us.us.i.i:                               ; preds = %.lr.ph47.us.us.i.i.preheader127, %.lr.ph47.us.us.i.i
  %.046.us.us.i.i = phi i64 [ %i.da, %.lr.ph47.us.us.i.i ], [ %.046.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader127 ]
  %.245.us.us.i.i = phi ptr [ %i.cx, %.lr.ph47.us.us.i.i ], [ %.245.us.us.i.i.ph, %.lr.ph47.us.us.i.i.preheader127 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.245.us.us.i.i, i64 4 ; 3 uses
  %i.cy = load i32, ptr %.245.us.us.i.i, align 4, !tbaa !47
  %i.cz = zext i32 %i.cy to i64
  %i.da = add i64 %.046.us.us.i.i, %i.cz          ; 2 uses
  %i.db = icmp ult ptr %i.cx, %.03654.us.us.i.i
  br i1 %i.db, label %.lr.ph47.us.us.i.i, label %._crit_edge48.us.us.i.i, !llvm.loop !240

._crit_edge48.us.us.i.i:                          ; preds = %.lr.ph47.us.us.i.i, %middle.block103, %.preheader.us.us.i.i
  %.2.lcssa.us.us.i.i = phi ptr [ %.03753.us.us.i.i, %.preheader.us.us.i.i ], [ %i.co, %middle.block103 ], [ %i.cx, %.lr.ph47.us.us.i.i ]
  %.0.lcssa.us.us.i.i = phi i64 [ 0, %.preheader.us.us.i.i ], [ %i.cw, %middle.block103 ], [ %i.da, %.lr.ph47.us.us.i.i ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv77.i.i
  store i64 %.0.lcssa.us.us.i.i, ptr %i.dc, align 8, !tbaa !109
  %indvars.iv.next78.i.i = add nuw nsw i64 %indvars.iv77.i.i, 1 ; 2 uses
  %.036.us.us.i.i = getelementptr inbounds [4 x i8], ptr %.03654.us.us.i.i, i64 %i.cc
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next78.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %calc_sum_top.exit.i, label %.preheader.us.us.i.i, !llvm.loop !241

.lr.ph56.i.i:                                     ; preds = %._crit_edge57.split.i.i, %.lr.ph56.preheader.i.i
  %indvars.iv72.i.i = phi i64 [ 0, %.lr.ph56.preheader.i.i ], [ %i.dd, %._crit_edge57.split.i.i ] ; 3 uses
  %i.dd = add nuw nsw i64 %indvars.iv72.i.i, 1    ; 3 uses
  %i.de = getelementptr inbounds nuw [2048 x i8], ptr %i.av, i64 %indvars.iv72.i.i
  %i.df = trunc nuw nsw i64 %indvars.iv72.i.i to i32 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph56.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph56.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03654.i.i = phi ptr [ %.03651.i.i, %.lr.ph56.i.i ], [ %.036.i.i, %._crit_edge.i.i ] ; 4 uses
  %.03753.i.i = phi ptr [ %i.ca, %.lr.ph56.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.dg = ptrtoint ptr %.03654.i.i to i64
  %i.dh = ptrtoint ptr %.03753.i.i to i64         ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = mul nsw i64 %i.dj, %i.dd                ; 3 uses
  %i.dl = icmp ult ptr %.03753.i.i, %.03654.i.i
  br i1 %i.dl, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %9 = mul i64 %7, %indvars.iv.i.i
  %10 = add i64 %6, %9
  %11 = sub i64 %10, %i.dh                        ; 2 uses
  %i.dm = lshr i64 %11, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %11, 12
  br i1 %min.iters.check78, label %.lr.ph.i.i.preheader132, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec80 = and i64 %i.dn, 9223372036854775804   ; 3 uses
  %i.do = shl i64 %n.vec80, 2
  %i.dp = getelementptr i8, ptr %.03753.i.i, i64 %i.do ; 2 uses
  %i.dq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dk, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next86, %vector.body81 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dq, %vector.ph79 ], [ %i.dx, %vector.body81 ]
  %vec.phi83 = phi <2 x i64> [ zeroinitializer, %vector.ph79 ], [ %i.dy, %vector.body81 ]
  %i.dr = shl i64 %index82, 2
  %next.gep = getelementptr i8, ptr %.03753.i.i, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep, i64 8
  %wide.load84 = load <2 x i32>, ptr %next.gep, align 4, !tbaa !47
  %wide.load85 = load <2 x i32>, ptr %i.ds, align 4, !tbaa !47
  %i.dt = lshr <2 x i32> %wide.load84, %broadcast.splat
  %i.du = lshr <2 x i32> %wide.load85, %broadcast.splat
  %i.dv = zext <2 x i32> %i.dt to <2 x i64>
  %i.dw = zext <2 x i32> %i.du to <2 x i64>
  %i.dx = add <2 x i64> %vec.phi, %i.dv           ; 2 uses
  %i.dy = add <2 x i64> %vec.phi83, %i.dw         ; 2 uses
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next86, %n.vec80
  br i1 %i.dz, label %middle.block87, label %vector.body81, !llvm.loop !242

middle.block87:                                   ; preds = %vector.body81
  %bin.rdx = add <2 x i64> %i.dy, %i.dx
  %i.ea = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n88 = icmp eq i64 %i.dn, %n.vec80
  br i1 %cmp.n88, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader132

.lr.ph.i.i.preheader132:                          ; preds = %.lr.ph.i.i.preheader, %middle.block87
  %.03543.i.i.ph = phi i64 [ %i.dk, %.lr.ph.i.i.preheader ], [ %i.ea, %middle.block87 ]
  %.142.i.i.ph = phi ptr [ %.03753.i.i, %.lr.ph.i.i.preheader ], [ %i.dp, %middle.block87 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader132, %.lr.ph.i.i
  %.03543.i.i = phi i64 [ %i.ef, %.lr.ph.i.i ], [ %.03543.i.i.ph, %.lr.ph.i.i.preheader132 ]
  %.142.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %.142.i.i.ph, %.lr.ph.i.i.preheader132 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.142.i.i, i64 4 ; 3 uses
  %i.ec = load i32, ptr %.142.i.i, align 4, !tbaa !47
  %i.ed = lshr i32 %i.ec, %i.df
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add i64 %.03543.i.i, %i.ee              ; 2 uses
  %i.eg = icmp ult ptr %i.eb, %.03654.i.i
  br i1 %i.eg, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block87, %bb.e
  %.1.lcssa.i.i = phi ptr [ %.03753.i.i, %bb.e ], [ %i.dp, %middle.block87 ], [ %i.eb, %.lr.ph.i.i ]
  %.035.lcssa.i.i = phi i64 [ %i.dk, %bb.e ], [ %i.ea, %middle.block87 ], [ %i.ef, %.lr.ph.i.i ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i.i
  store i64 %.035.lcssa.i.i, ptr %i.eh, align 8, !tbaa !109
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.036.i.i = getelementptr inbounds [4 x i8], ptr %.03654.i.i, i64 %i.cc
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.split.i.i, label %bb.e, !llvm.loop !241

._crit_edge57.split.i.i:                          ; preds = %._crit_edge.i.i
  %exitcond76.not.i.i = icmp eq i64 %i.dd, %wide.trip.count75.i.i
  br i1 %exitcond76.not.i.i, label %calc_sum_top.exit.i, label %.lr.ph56.i.i, !llvm.loop !244

calc_sum_top.exit.i:                              ; preds = %._crit_edge57.split.i.i, %._crit_edge48.us.us.i.i, %.lr.ph62.i.i, %._crit_edge.i
  %i.ei = sext i32 %.0.i43 to i64                 ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ei
  store i64 4294967295, ptr %i.ej, align 8, !tbaa !109
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.el = icmp eq i32 %.0.i30, %.0.i43
  %i.em = add i32 %i.az, -1                       ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.em to i64  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not15.i.i.i = icmp slt i32 %i.az, 2
  %i.eo = add nsw i32 %i.bx, 1                    ; 2 uses
  %wide.trip.count.i49.i = zext i32 %i.eo to i64  ; 2 uses
  %i.ep = sext i32 %.0.i30 to i64
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.eq = icmp eq i32 %i.em, 1
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod139 = trunc i32 %i.em to i1
  %xtraiter141 = and i64 %wide.trip.count.i49.i, 1
  %i.er = icmp eq i32 %i.bx, 0
  %unroll_iter144 = and i64 %wide.trip.count.i49.i, 2147483646
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod143 = trunc i32 %i.eo to i1
  br label %calc_sum_next.exit.i

calc_sum_next.exit.i:                             ; preds = %calc_sum_next.exit.i.backedge, %calc_sum_top.exit.i
  %indvars.iv68.i = phi i64 [ %i.ep, %calc_sum_top.exit.i ], [ %indvars.iv.next69.i, %calc_sum_next.exit.i.backedge ] ; 7 uses
  %.0.i39 = phi i32 [ %.0.i43, %calc_sum_top.exit.i ], [ %.1.i, %calc_sum_next.exit.i.backedge ] ; 2 uses
  %i.es = trunc nsw i64 %indvars.iv68.i to i32    ; 5 uses
  %i.et = shl i32 4, %i.es
  %i.eu = sext i32 %i.et to i64                   ; 5 uses
  %i.ev = ashr i32 %i.f, %i.es                    ; 4 uses
  %i.ew = icmp eq i64 %indvars.iv68.i, 31
  br i1 %i.ew, label %calc_optimal_rice_params.exit.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %calc_sum_next.exit.i
  %i.ex = shl nuw nsw i32 1, %i.es
  %i.ey = sub nsw i32 %i.ev, %2                   ; 3 uses
  %wide.trip.count60.i.i = zext nneg i32 %i.ex to i64 ; 5 uses
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i44.i
  %i.ez = load i64, ptr %i.av, align 8, !tbaa !109 ; 2 uses
  %i.fa = ashr i32 %i.ey, 1
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %.not.i.us.peel.i.i = icmp ugt i64 %i.ez, %i.fb
  %i.fc = sub i64 %i.ez, %i.fb                    ; 2 uses
  br i1 %.not.i.us.peel.i.i, label %bb.f, label %find_optimal_param.exit.us.peel.i.i

bb.f:                                             ; preds = %.lr.ph.split.us.preheader.i.i
  %i.fd = sext i32 %i.ey to i64
  %i.fe = udiv i64 %i.fc, %i.fd
  %i.ff = tail call i64 @llvm.smax.i64(i64 %i.fe, i64 -2147483648)
  %i.fg = tail call i64 @llvm.smin.i64(i64 %i.ff, i64 2147483647) ; 2 uses
  %.0.i.i.us.peel.i.i = trunc nsw i64 %i.fg to i32 ; 2 uses
  %.not.i.i.us.peel.i.i = icmp ult i64 %i.fg, 65536 ; 2 uses
  %i.fh = lshr i32 %.0.i.i.us.peel.i.i, 16
  %spec.select.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 %.0.i.i.us.peel.i.i, i32 %i.fh ; 3 uses
  %spec.select12.i.i.us.peel.i.i = select i1 %.not.i.i.us.peel.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.peel.i.i = icmp samesign ult i32 %spec.select.i.i.us.peel.i.i, 256 ; 2 uses
  %i.fi = lshr i32 %spec.select.i.i.us.peel.i.i, 8
  %i.fj = or disjoint i32 %spec.select12.i.i.us.peel.i.i, 8
  %.110.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select.i.i.us.peel.i.i, i32 %i.fi
  %.1.i.i.us.peel.i.i = select i1 %.not11.i.i.us.peel.i.i, i32 %spec.select12.i.i.us.peel.i.i, i32 %i.fj
  %i.fk = zext nneg i32 %.110.i.i.us.peel.i.i to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !68
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add nuw nsw i32 %.1.i.i.us.peel.i.i, %i.fn
  %i.fp = tail call i32 @llvm.smin.i32(i32 %i.fo, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.peel.i.i

find_optimal_param.exit.us.peel.i.i:              ; preds = %bb.f, %.lr.ph.split.us.preheader.i.i
  %.0.i.us.peel.i.i = phi i32 [ %i.fp, %bb.f ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 3 uses
  %i.fq = add nsw i32 %.0.i.us.peel.i.i, 1
  %i.fr = mul nsw i32 %i.fq, %i.ey
  %i.fs = sext i32 %i.fr to i64
  %i.ft = zext nneg i32 %.0.i.us.peel.i.i to i64
  %i.fu = lshr i64 %i.fc, %i.ft
  %i.fv = add i64 %i.fu, %i.eu
  %.1.us.peel.i.i = add i64 %i.fv, %i.fs          ; 2 uses
  store i32 %.0.i.us.peel.i.i, ptr %i.en, align 4, !tbaa !47
  %i.fw = icmp eq i64 %indvars.iv68.i, 0
  br i1 %i.fw, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.peel.next.i.i

.lr.ph.split.us.peel.next.i.i:                    ; preds = %find_optimal_param.exit.us.peel.i.i
  %i.fx = ashr i32 %i.ev, 1
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = sext i32 %i.ev to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %find_optimal_param.exit.us.i.i, %.lr.ph.split.us.peel.next.i.i
  %indvars.iv56.i.i = phi i64 [ 1, %.lr.ph.split.us.peel.next.i.i ], [ %indvars.iv.next57.i.i, %find_optimal_param.exit.us.i.i ] ; 3 uses
  %.040.us.i.i = phi i64 [ %.1.us.peel.i.i, %.lr.ph.split.us.peel.next.i.i ], [ %.1.us.i.i, %find_optimal_param.exit.us.i.i ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv56.i.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !109 ; 2 uses
  %.not.i.us.i.i = icmp ugt i64 %i.gb, %i.fy
  %i.gc = sub i64 %i.gb, %i.fy                    ; 2 uses
  br i1 %.not.i.us.i.i, label %bb.g, label %find_optimal_param.exit.us.i.i

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.gd = udiv i64 %i.gc, %i.fz
  %i.ge = tail call i64 @llvm.smax.i64(i64 %i.gd, i64 -2147483648)
  %i.gf = tail call i64 @llvm.smin.i64(i64 %i.ge, i64 2147483647) ; 2 uses
  %.0.i.i.us.i.i = trunc nsw i64 %i.gf to i32     ; 2 uses
  %.not.i.i.us.i.i = icmp ult i64 %i.gf, 65536    ; 2 uses
  %i.gg = lshr i32 %.0.i.i.us.i.i, 16
  %spec.select.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 %.0.i.i.us.i.i, i32 %i.gg ; 3 uses
  %spec.select12.i.i.us.i.i = select i1 %.not.i.i.us.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.us.i.i = icmp samesign ult i32 %spec.select.i.i.us.i.i, 256 ; 2 uses
  %i.gh = lshr i32 %spec.select.i.i.us.i.i, 8
  %i.gi = or disjoint i32 %spec.select12.i.i.us.i.i, 8
  %.110.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select.i.i.us.i.i, i32 %i.gh
  %.1.i.i.us.i.i = select i1 %.not11.i.i.us.i.i, i32 %spec.select12.i.i.us.i.i, i32 %i.gi
  %i.gj = zext nneg i32 %.110.i.i.us.i.i to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !68
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add nuw nsw i32 %.1.i.i.us.i.i, %i.gm
  %i.go = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 range(i32 -2147483648, 2147483646) %i.ba)
  br label %find_optimal_param.exit.us.i.i

find_optimal_param.exit.us.i.i:                   ; preds = %bb.g, %.lr.ph.split.us.i.i
  %.0.i.us.i.i = phi i32 [ %i.go, %bb.g ], [ 0, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.gp = add nsw i32 %.0.i.us.i.i, 1
  %i.gq = mul nsw i32 %i.gp, %i.ev
  %i.gr = sext i32 %i.gq to i64
  %i.gs = zext nneg i32 %.0.i.us.i.i to i64
  %i.gt = lshr i64 %i.gc, %i.gs
  %i.gu = add i64 %i.gt, %.040.us.i.i
  %.1.us.i.i = add i64 %i.gu, %i.gr               ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv56.i.i
  store i32 %.0.i.us.i.i, ptr %i.gv, align 4, !tbaa !47
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i, label %calc_optimal_rice_params.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !245
end_hunk_0
begin_hunk_1_@lpc_encode_choose_datapath:bb.a

scalar.ph143.prol.loopexit:                       ; preds = %scalar.ph143.prol, %scalar.ph143.preheader
  %.lcssa207.unr = phi i64 [ poison, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %indvars.iv60.i74.unr = phi i64 [ %indvars.iv60.i74.ph, %scalar.ph143.preheader ], [ %indvars.iv.next61.i77.prol, %scalar.ph143.prol ]
  %.03344.us.i75.unr = phi i64 [ %.03344.us.i75.ph, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %i.fm = icmp eq i64 %indvars.iv60.i74.ph, %i.ea
  br i1 %i.fm, label %._crit_edge.us.i79, label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143
  %indvars.iv60.i74 = phi i64 [ %indvars.iv.next61.i77.1, %scalar.ph143 ], [ %indvars.iv60.i74.unr, %scalar.ph143.prol.loopexit ] ; 5 uses
  %.03344.us.i75 = phi i64 [ %i.gi, %scalar.ph143 ], [ %.03344.us.i75.unr, %scalar.ph143.prol.loopexit ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !47
  %i.fp = sext i32 %i.fo to i64
  %i.fq = xor i64 %indvars.iv60.i74, -1
  %i.fr = add nsw i64 %indvars.iv65.i73, %i.fq
  %sext.i76 = shl i64 %i.fr, 32
  %i.fs = ashr exact i64 %sext.i76, 30
  %i.ft = getelementptr inbounds i8, ptr %3, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !47
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fv, %i.fp
  %i.fx = add nsw i64 %i.fw, %.03344.us.i75
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  %i.gb = sext i32 %i.ga to i64
  %reass.sub = sub i64 %indvars.iv65.i73, %indvars.iv60.i74
  %i.gc = shl i64 %reass.sub, 32
  %sext.i76.1 = add i64 %i.gc, -8589934592
  %i.gd = ashr exact i64 %sext.i76.1, 30
  %i.ge = getelementptr inbounds i8, ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %i.gg, %i.gb
  %i.gi = add nsw i64 %i.gh, %i.fx                ; 2 uses
  %indvars.iv.next61.i77.1 = add nuw nsw i64 %indvars.iv60.i74, 2 ; 2 uses
  %exitcond64.not.i78.1 = icmp eq i64 %indvars.iv.next61.i77.1, %wide.trip.count.i63
  br i1 %exitcond64.not.i78.1, label %._crit_edge.us.i79, label %scalar.ph143, !llvm.loop !264

bb.e:                                             ; preds = %._crit_edge.us.i79
  %i.gj = trunc nsw i64 %i.gp to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i73
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !47
  %indvars.iv.next66.i81 = add nuw nsw i64 %indvars.iv65.i73, 1 ; 2 uses
  %exitcond69.not.i82 = icmp eq i64 %indvars.iv.next66.i81, %wide.trip.count68.i70
  %indvar.next = add i34 %indvar, 1
  br i1 %exitcond69.not.i82, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i72, !llvm.loop !194

._crit_edge.us.i79:                               ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143, %middle.block157
  %.lcssa127 = phi i64 [ %i.fa, %middle.block157 ], [ %.lcssa207.unr, %scalar.ph143.prol.loopexit ], [ %i.gi, %scalar.ph143 ]
  %i.gl = ashr i64 %.lcssa127, %i.dg
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv65.i73
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !47
  %i.go = sext i32 %i.gn to i64
  %i.gp = sub nsw i64 %i.go, %i.gl                ; 2 uses
  %i.gq = add i64 %i.gp, 2147483647
  %or.cond.us.i80 = icmp ult i64 %i.gq, 4294967295
  br i1 %or.cond.us.i80, label %bb.e, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66.3, %.lr.ph.i64 ], [ %indvars.iv.i65.unr, %.lr.ph.i64.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !47
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !47
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !47
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !47
  %indvars.iv.next.i66.1 = add nuw nsw i64 %indvars.iv.i65, 2 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.1
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !47
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.1
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !47
  %indvars.iv.next.i66.2 = add nuw nsw i64 %indvars.iv.i65, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.2
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !47
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.2
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !47
  %indvars.iv.next.i66.3 = add nuw nsw i64 %indvars.iv.i65, 4 ; 2 uses
  %exitcond.not.i67.3 = icmp eq i64 %indvars.iv.next.i66.3, %wide.trip.count.i63
  br i1 %exitcond.not.i67.3, label %.preheader42.i68, label %.lr.ph.i64, !llvm.loop !265

.preheader.i57:                                   ; preds = %bb.f, %.preheader.preheader.i55
  %indvars.iv55.i58 = phi i64 [ %i.eb, %.preheader.preheader.i55 ], [ %indvars.iv.next56.i60, %bb.f ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv55.i58
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !47 ; 2 uses
  %.not.i59 = icmp eq i32 %i.he, -2147483648
  br i1 %.not.i59, label %lpc_encode_with_residual_limit_33bps.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i57
  %i.hf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i58
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !47
  %indvars.iv.next56.i60 = add nsw i64 %indvars.iv55.i58, 1 ; 2 uses
  %exitcond59.not.i61 = icmp eq i64 %indvars.iv.next56.i60, %wide.trip.count58.i56
  br i1 %exitcond59.not.i61, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i57, !llvm.loop !194

lpc_encode_with_residual_limit_33bps.exit.sink.split: ; preds = %.thread109, %bb.d
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !148
  %.not.i = icmp ult i32 %6, 65536                ; 2 uses
  %i.hi = lshr i32 %6, 16
  %spec.select.i = select i1 %.not.i, i32 %6, i32 %i.hi ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.hj = lshr i32 %spec.select.i, 8
  %i.hk = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.hj
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.hk
  %i.hl = zext nneg i32 %.110.i to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !68
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nsw i32 %.1.i, %1
  %i.hq = add i32 %i.hp, %i.hh
  %i.hr = add i32 %i.hq, %i.ho
  %i.hs = icmp slt i32 %i.hr, 33
  %. = select i1 %i.hs, i64 7387800, i64 7387808
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !196
  tail call void %i.hu(ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #13
  br label %lpc_encode_with_residual_limit_33bps.exit

lpc_encode_with_residual_limit_33bps.exit:        ; preds = %bb.f, %.preheader.i57, %bb.c, %.preheader.i, %bb.e, %._crit_edge.us.i79, %bb.b, %._crit_edge.us.i, %lpc_encode_with_residual_limit_33bps.exit.sink.split, %.preheader42.i68, %.preheader42.i
  %.050 = phi i32 [ 0, %.preheader42.i ], [ 0, %lpc_encode_with_residual_limit_33bps.exit.sink.split ], [ 0, %.preheader42.i68 ], [ 0, %bb.c ], [ 1, %._crit_edge.us.i79 ], [ 1, %._crit_edge.us.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.preheader.i ], [ 0, %bb.f ], [ 1, %.preheader.i57 ]
  ret i32 %.050
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #9

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ff_lpc_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 344}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 356}
!30 = !{!10, !12, i64 32}
!31 = !{!32, !36, i64 7350000}
!32 = !{!"FlacEncodeContext", !11, i64 0, !33, i64 8, !6, i64 40, !6, i64 44, !7, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !15, i64 80, !7, i64 88, !34, i64 104, !35, i64 7349944, !36, i64 7350000, !37, i64 7350016, !39, i64 7387760, !16, i64 7387768, !6, i64 7387776, !40, i64 7387784, !41, i64 7387800, !6, i64 7387816, !15, i64 7387824}
!33 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !16, i64 8, !16, i64 16, !16, i64 24}
!34 = !{!"FlacFrame", !7, i64 0, !7, i64 6825536, !6, i64 7349816, !7, i64 7349820, !7, i64 7349828, !6, i64 7349832, !6, i64 7349836}
!35 = !{!"CompressionOptions", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!36 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!37 = !{!"LPCContext", !6, i64 0, !6, i64 4, !6, i64 8, !38, i64 16, !38, i64 24, !12, i64 32, !12, i64 40, !7, i64 48}
!38 = !{!"p1 double", !12, i64 0}
!39 = !{!"p1 _ZTS5AVMD5", !12, i64 0}
!40 = !{!"BswapDSPContext", !12, i64 0, !12, i64 8}
!41 = !{!"FLACEncDSPContext", !12, i64 0, !12, i64 8}
!42 = !{!10, !6, i64 348}
!43 = !{!10, !6, i64 652}
!44 = !{!10, !6, i64 516}
!45 = !{!32, !6, i64 56}
!46 = !{!32, !6, i64 40}
!47 = !{!6, !6, i64 0}
!48 = !{!32, !6, i64 44}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!10, !6, i64 424}
!52 = !{!32, !6, i64 7349944}
!53 = !{!32, !6, i64 7349948}
!54 = !{!32, !6, i64 7349952}
!55 = !{!32, !6, i64 7349964}
!56 = !{!32, !6, i64 7349968}
!57 = !{!32, !6, i64 7349972}
!58 = !{!32, !6, i64 7349976}
!59 = !{!32, !6, i64 7349980}
!60 = !{!10, !6, i64 376}
!61 = !{!32, !6, i64 60}
!62 = !{!32, !6, i64 68}
!63 = !{!32, !39, i64 7387760}
!64 = !{!10, !16, i64 72}
!65 = !{!10, !6, i64 80}
!66 = !{!32, !6, i64 76}
!67 = !{!32, !6, i64 64}
!68 = !{!7, !7, i64 0}
!69 = !{!20, !12, i64 16}
!70 = !{!10, !6, i64 352}
!71 = !{!32, !6, i64 72}
!72 = !{!32, !15, i64 80}
!73 = !{!32, !6, i64 7387816}
!74 = !{!32, !15, i64 7387824}
!75 = !{!76, !15, i64 8}
!76 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!77 = !{!78, !6, i64 112}
!78 = !{!"AVFrame", !7, i64 0, !7, i64 64, !79, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !80, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !81, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!79 = !{!"p2 omnipotent char", !28, i64 0}
!80 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!81 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!82 = !{!32, !6, i64 7349920}
!83 = !{!34, !6, i64 7349816}
!84 = !{!85, !6, i64 12}
!85 = !{!"FlacSubframe", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 148, !86, i64 152, !7, i64 1184, !7, i64 263328, !7, i64 328864, !7, i64 591004}
!86 = !{!"RiceContext", !6, i64 0, !6, i64 4, !7, i64 8}
!87 = !{!85, !6, i64 8}
!88 = !{!85, !6, i64 152}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !91}
!93 = !{!34, !6, i64 7349836}
!94 = !{!16, !16, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"short", !7, i64 0}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !91}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = !{!32, !6, i64 7349984}
!103 = distinct !{!103, !50, !104, !105}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = distinct !{!106, !50, !104, !105}
!107 = distinct !{!107, !50, !105, !104}
!108 = distinct !{!108, !50, !105, !104}
!109 = !{!15, !15, i64 0}
!110 = !{!34, !6, i64 7349832}
!111 = distinct !{!111, !50, !104, !105}
!112 = distinct !{!112, !50, !104, !105}
!113 = distinct !{!113, !50, !104, !105}
!114 = distinct !{!114, !50, !105, !104}
!115 = distinct !{!115, !50, !105, !104}
!116 = distinct !{!116, !50, !105, !104}
!117 = distinct !{!117, !50, !104, !105}
!118 = distinct !{!118, !50, !104, !105}
!119 = distinct !{!119, !50, !104, !105}
!120 = distinct !{!120, !50, !105, !104}
!121 = distinct !{!121, !50, !105, !104}
!122 = distinct !{!122, !50, !105, !104}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50}
!128 = !{!32, !6, i64 7349940}
!129 = !{!76, !16, i64 24}
!130 = !{!76, !6, i64 32}
!131 = !{!33, !16, i64 8}
!132 = !{!33, !16, i64 24}
!133 = !{!33, !16, i64 16}
!134 = !{!33, !6, i64 0}
!135 = !{!33, !6, i64 4}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = !{!32, !16, i64 16}
!139 = !{!85, !6, i64 4}
!140 = !{!85, !6, i64 0}
!141 = distinct !{!141, !50}
!142 = distinct !{!142, !50}
!143 = distinct !{!143, !50}
!144 = !{!85, !6, i64 16}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50}
!147 = distinct !{!147, !50}
!148 = !{!32, !6, i64 7349960}
!149 = !{!85, !6, i64 148}
!150 = distinct !{!150, !50}
!151 = !{!85, !6, i64 156}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = !{!32, !16, i64 7387768}
!157 = distinct !{!157, !50}
!158 = distinct !{!158, !50}
!159 = !{!78, !15, i64 136}
!160 = !{!35, !6, i64 0}
!161 = !{!35, !6, i64 8}
!162 = !{!35, !6, i64 12}
!163 = !{!35, !6, i64 20}
!164 = !{!35, !6, i64 24}
!165 = !{!35, !6, i64 28}
!166 = !{!35, !6, i64 32}
!167 = !{!35, !6, i64 36}
!168 = !{!35, !6, i64 16}
!169 = distinct !{!169, !50}
!170 = distinct !{!170, !50}
!171 = distinct !{!171, !50}
!172 = distinct !{!172, !50, !104, !105}
!173 = distinct !{!173, !50, !105, !104}
!174 = distinct !{!174, !50}
!175 = distinct !{!175, !50, !104, !105}
!176 = distinct !{!176, !50, !105, !104}
end_hunk_1
