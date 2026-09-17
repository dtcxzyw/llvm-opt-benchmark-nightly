Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ra144?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 28
begin_hunk_0_@ff_eval_coefs:._crit_edge.9
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !12
  %i.dt = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.du = mul i32 %i.cv, %i.dt
  %i.dv = ashr i32 %i.du, 12
  %i.dw = add nsw i32 %i.dv, %i.cv                ; 3 uses
  store i32 %i.dw, ptr %i.w, align 4, !tbaa !12
  %i.dx = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.dy = mul i32 %i.cs, %i.dx
  %i.dz = ashr i32 %i.dy, 12
  %i.ea = add nsw i32 %i.dz, %i.cy
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !12
  %i.ec = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.ed = mul i32 %i.cn, %i.ec
  %i.ee = ashr i32 %i.ed, 12
  %i.ef = add nsw i32 %i.ee, %i.db                ; 3 uses
  store i32 %i.ef, ptr %i.bf, align 4, !tbaa !12
  %i.eg = load i32, ptr %i.dc, align 4, !tbaa !12
  %i.eh = mul i32 %i.ci, %i.eg
  %i.ei = ashr i32 %i.eh, 12
  %i.ej = add nsw i32 %i.ei, %i.ce
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = load i32, ptr %i.el, align 4, !tbaa !12 ; 9 uses
  %i.en = shl nsw i32 %i.em, 4                    ; 2 uses
  %i.eo = mul i32 %i.de, %i.em
  %i.ep = ashr i32 %i.eo, 12
  %i.eq = load i32, ptr %0, align 4, !tbaa !12    ; 2 uses
  %i.er = add nsw i32 %i.ep, %i.eq                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12 ; 2 uses
  %i.eu = mul i32 %i.et, %i.em
  %i.ev = ashr i32 %i.eu, 12
  %i.ew = add nsw i32 %i.ev, %i.dn                ; 2 uses
  %i.ex = mul i32 %i.ef, %i.em
  %i.ey = ashr i32 %i.ex, 12
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12 ; 2 uses
  %i.fb = add nsw i32 %i.ey, %i.fa                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !12 ; 2 uses
  %i.fe = mul i32 %i.fd, %i.em
  %i.ff = ashr i32 %i.fe, 12
  %i.fg = add nsw i32 %i.ff, %i.dw                ; 2 uses
  %i.fh = mul i32 %i.dw, %i.em
  %i.fi = ashr i32 %i.fh, 12
  %i.fj = add nsw i32 %i.fi, %i.fd                ; 2 uses
  %i.fk = mul i32 %i.fa, %i.em
  %i.fl = ashr i32 %i.fk, 12
  %i.fm = add nsw i32 %i.fl, %i.ef                ; 2 uses
  %i.fn = mul i32 %i.dn, %i.em
  %i.fo = ashr i32 %i.fn, 12
  %i.fp = add nsw i32 %i.fo, %i.et                ; 2 uses
  %i.fq = mul i32 %i.eq, %i.em
  %i.fr = ashr i32 %i.fq, 12
  %i.fs = add nsw i32 %i.fr, %i.de                ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 10 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !12 ; 2 uses
  %i.fv = shl nsw i32 %i.fu, 4
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !12
  %i.fx = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.fy = mul i32 %i.en, %i.fx
  %i.fz = ashr i32 %i.fy, 12
  %i.ga = add nsw i32 %i.fz, %i.er                ; 2 uses
  store i32 %i.ga, ptr %0, align 4, !tbaa !12
  %i.gb = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.gc = mul i32 %i.fs, %i.gb
  %i.gd = ashr i32 %i.gc, 12
  %i.ge = add nsw i32 %i.gd, %i.ew                ; 2 uses
  store i32 %i.ge, ptr %i.f, align 4, !tbaa !12
  %i.gf = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.gg = mul i32 %i.fp, %i.gf
  %i.gh = ashr i32 %i.gg, 12
  %i.gi = add nsw i32 %i.gh, %i.fb                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !12
  %i.gk = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.gl = mul i32 %i.fm, %i.gk
  %i.gm = ashr i32 %i.gl, 12
  %i.gn = add nsw i32 %i.gm, %i.fg                ; 2 uses
  store i32 %i.gn, ptr %i.w, align 4, !tbaa !12
  %i.go = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.gp = mul i32 %i.fj, %i.go
  %i.gq = ashr i32 %i.gp, 12
  %i.gr = add nsw i32 %i.gq, %i.fj                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !12
  %i.gt = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.gu = mul i32 %i.fg, %i.gt
  %i.gv = ashr i32 %i.gu, 12
  %i.gw = add nsw i32 %i.gv, %i.fm                ; 2 uses
  store i32 %i.gw, ptr %i.bf, align 4, !tbaa !12
  %i.gx = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.gy = mul i32 %i.fb, %i.gx
  %i.gz = ashr i32 %i.gy, 12
  %i.ha = add nsw i32 %i.gz, %i.fp                ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !12
  %i.hc = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.hd = mul i32 %i.ew, %i.hc
  %i.he = ashr i32 %i.hd, 12
  %i.hf = add nsw i32 %i.he, %i.fs                ; 2 uses
  store i32 %i.hf, ptr %i.df, align 4, !tbaa !12
  %i.hg = load i32, ptr %i.ft, align 4, !tbaa !12
  %i.hh = mul i32 %i.er, %i.hg
  %i.hi = ashr i32 %i.hh, 12
  %i.hj = add nsw i32 %i.hi, %i.en
  %i.hk = ashr i32 %i.ga, 4
  store i32 %i.hk, ptr %0, align 4, !tbaa !12
  %i.hl = ashr i32 %i.ge, 4
  store i32 %i.hl, ptr %i.f, align 4, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = ashr i32 %i.gi, 4
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !12
  %i.ho = ashr i32 %i.gn, 4
  store i32 %i.ho, ptr %i.w, align 4, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = ashr i32 %i.gr, 4
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !12
  %i.hr = ashr i32 %i.gw, 4
  store i32 %i.hr, ptr %i.bf, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ht = ashr i32 %i.ha, 4
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !12
  %i.hu = ashr i32 %i.hf, 4
  store i32 %i.hu, ptr %i.df, align 4, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hw = ashr i32 %i.hj, 4
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !12
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_int_to_int16(ptr nofree noundef writeonly captures(none) initializes((0, 20)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <8 x i32>, ptr %1, align 4, !tbaa !12
  %i.d = trunc <8 x i32> %i.c to <8 x i16>
  store <8 x i16> %i.d, ptr %0, align 2, !tbaa !11
  %i.e = load <2 x i32>, ptr %i.a, align 4, !tbaa !12
  %i.f = trunc <2 x i32> %i.e to <2 x i16>
  store <2 x i16> %i.f, ptr %i.b, align 2, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i32 @ff_t_sqrt(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 4095
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.b, %.lr.ph ], [ 2, %bb.a ]
  %.056 = phi i32 [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.b = add nuw nsw i32 %.07, 1                  ; 2 uses
  %i.c = lshr i32 %.056, 2                        ; 2 uses
  %i.d = icmp ugt i32 %.056, 16383
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.05.lcssa = phi i32 [ %0, %bb.a ], [ %i.c, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 2, %bb.a ], [ %i.b, %.lr.ph ]
  %i.e = shl nuw i32 %.05.lcssa, 20               ; 4 uses
  %i.f = icmp eq i32 %.05.lcssa, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -1
  %i.m = ashr i32 %i.l, 4
  br label %ff_sqrt.exit

bb.c:                                             ; preds = %._crit_edge
  %.not.i.i = icmp samesign ult i32 %.05.lcssa, 16 ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %i.e, %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.n = zext nneg i32 %spec.select.i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32
  %i.r = add nuw nsw i32 %spec.select7.i.i, %i.q
  %i.s = lshr i32 %i.r, 1                         ; 3 uses
  %i.t = add nuw nsw i32 %i.s, 2
  %i.u = lshr i32 %i.e, %i.t                      ; 2 uses
  %i.v = add nuw nsw i32 %i.s, 8
  %i.w = lshr i32 %i.u, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = zext i8 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %1 = tail call i32 @llvm.umulh.i32(i32 %i.u, i32 %i.ad)
  %i.ae = shl i32 %i.aa, %i.s
  %i.af = add i32 %1, %i.ae                       ; 3 uses
  %i.ag = mul i32 %i.af, %i.af
  %i.ah = icmp ult i32 %i.e, %i.ag
  %.neg.i = sext i1 %i.ah to i32
  %i.ai = add i32 %i.af, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %i.ai, %bb.c ]
  %i.aj = shl i32 %.0.i, %.0.lcssa
  ret i32 %i.aj
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ff_rms(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  %i.b = mul nsw i32 %i.a, %i.a
  %i.c = shl i32 %i.b, 4
  %i.d = sub i32 268435456, %i.c                  ; 2 uses
  %i.e = and i32 %i.d, -65536                     ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = lshr exact i32 %i.e, 12                  ; 2 uses
  %i.h = icmp ult i32 %i.d, 67108864
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.122 = phi i32 [ %i.i, %.lr.ph ], [ 10, %.preheader ]
  %.11421 = phi i32 [ %i.j, %.lr.ph ], [ %i.g, %.preheader ] ; 2 uses
  %i.i = add nuw nsw i32 %.122, 1                 ; 2 uses
  %i.j = shl nuw nsw i32 %.11421, 2               ; 2 uses
  %i.k = icmp samesign ult i32 %.11421, 4096
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.114.lcssa = phi i32 [ %i.g, %.preheader ], [ %i.j, %.lr.ph ]
  %.1.lcssa = phi i32 [ 10, %.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12   ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.m
  %i.o = sub nsw i32 16777216, %i.n
  %i.p = ashr i32 %i.o, 12
  %i.q = mul i32 %i.p, %.114.lcssa                ; 2 uses
  %i.r = lshr i32 %i.q, 12                        ; 3 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge
  %i.t = icmp ult i32 %i.q, 67108864
  br i1 %i.t, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %.preheader.1, %.lr.ph.1
  %.122.1 = phi i32 [ %i.u, %.lr.ph.1 ], [ %.1.lcssa, %.preheader.1 ]
  %.11421.1 = phi i32 [ %i.v, %.lr.ph.1 ], [ %i.r, %.preheader.1 ] ; 2 uses
  %i.u = add nsw i32 %.122.1, 1                   ; 2 uses
  %i.v = shl nuw nsw i32 %.11421.1, 2             ; 2 uses
  %i.w = icmp samesign ult i32 %.11421.1, 4096
  br i1 %i.w, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !18

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.preheader.1
  %.114.lcssa.1 = phi i32 [ %i.r, %.preheader.1 ], [ %i.v, %.lr.ph.1 ]
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.preheader.1 ], [ %i.u, %.lr.ph.1 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12   ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = sub nsw i32 16777216, %i.z
  %i.ab = ashr i32 %i.aa, 12
  %i.ac = mul i32 %i.ab, %.114.lcssa.1            ; 2 uses
  %i.ad = lshr i32 %i.ac, 12                      ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %._crit_edge.1
  %i.af = icmp ult i32 %i.ac, 67108864
  br i1 %i.af, label %.lr.ph.2, label %._crit_edge.2

.lr.ph.2:                                         ; preds = %.preheader.2, %.lr.ph.2
  %.122.2 = phi i32 [ %i.ag, %.lr.ph.2 ], [ %.1.lcssa.1, %.preheader.2 ]
  %.11421.2 = phi i32 [ %i.ah, %.lr.ph.2 ], [ %i.ad, %.preheader.2 ] ; 2 uses
  %i.ag = add nsw i32 %.122.2, 1                  ; 2 uses
  %i.ah = shl nuw nsw i32 %.11421.2, 2            ; 2 uses
  %i.ai = icmp samesign ult i32 %.11421.2, 4096
  br i1 %i.ai, label %.lr.ph.2, label %._crit_edge.2, !llvm.loop !18

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.preheader.2
  %.114.lcssa.2 = phi i32 [ %i.ad, %.preheader.2 ], [ %i.ah, %.lr.ph.2 ]
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %.preheader.2 ], [ %i.ag, %.lr.ph.2 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12 ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.ak
  %i.am = sub nsw i32 16777216, %i.al
  %i.an = ashr i32 %i.am, 12
  %i.ao = mul i32 %i.an, %.114.lcssa.2            ; 2 uses
  %i.ap = lshr i32 %i.ao, 12                      ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %._crit_edge.2
  %i.ar = icmp ult i32 %i.ao, 67108864
  br i1 %i.ar, label %.lr.ph.3, label %._crit_edge.3

.lr.ph.3:                                         ; preds = %.preheader.3, %.lr.ph.3
  %.122.3 = phi i32 [ %i.as, %.lr.ph.3 ], [ %.1.lcssa.2, %.preheader.3 ]
  %.11421.3 = phi i32 [ %i.at, %.lr.ph.3 ], [ %i.ap, %.preheader.3 ] ; 2 uses
  %i.as = add nsw i32 %.122.3, 1                  ; 2 uses
  %i.at = shl nuw nsw i32 %.11421.3, 2            ; 2 uses
  %i.au = icmp samesign ult i32 %.11421.3, 4096
  br i1 %i.au, label %.lr.ph.3, label %._crit_edge.3, !llvm.loop !18

._crit_edge.3:                                    ; preds = %.lr.ph.3, %.preheader.3
  %.114.lcssa.3 = phi i32 [ %i.ap, %.preheader.3 ], [ %i.at, %.lr.ph.3 ]
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %.preheader.3 ], [ %i.as, %.lr.ph.3 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.aw
  %i.ay = sub nsw i32 16777216, %i.ax
  %i.az = ashr i32 %i.ay, 12
  %i.ba = mul i32 %i.az, %.114.lcssa.3            ; 2 uses
  %i.bb = lshr i32 %i.ba, 12                      ; 3 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %._crit_edge.3
  %i.bd = icmp ult i32 %i.ba, 67108864
  br i1 %i.bd, label %.lr.ph.4, label %._crit_edge.4

.lr.ph.4:                                         ; preds = %.preheader.4, %.lr.ph.4
  %.122.4 = phi i32 [ %i.be, %.lr.ph.4 ], [ %.1.lcssa.3, %.preheader.4 ]
  %.11421.4 = phi i32 [ %i.bf, %.lr.ph.4 ], [ %i.bb, %.preheader.4 ] ; 2 uses
  %i.be = add nsw i32 %.122.4, 1                  ; 2 uses
  %i.bf = shl nuw nsw i32 %.11421.4, 2            ; 2 uses
  %i.bg = icmp samesign ult i32 %.11421.4, 4096
  br i1 %i.bg, label %.lr.ph.4, label %._crit_edge.4, !llvm.loop !18

._crit_edge.4:                                    ; preds = %.lr.ph.4, %.preheader.4
  %.114.lcssa.4 = phi i32 [ %i.bb, %.preheader.4 ], [ %i.bf, %.lr.ph.4 ]
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %.preheader.4 ], [ %i.be, %.lr.ph.4 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12 ; 2 uses
  %i.bj = mul nsw i32 %i.bi, %i.bi
  %i.bk = sub nsw i32 16777216, %i.bj
  %i.bl = ashr i32 %i.bk, 12
  %i.bm = mul i32 %i.bl, %.114.lcssa.4            ; 2 uses
  %i.bn = lshr i32 %i.bm, 12                      ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %._crit_edge.4
  %i.bp = icmp ult i32 %i.bm, 67108864
  br i1 %i.bp, label %.lr.ph.5, label %._crit_edge.5

.lr.ph.5:                                         ; preds = %.preheader.5, %.lr.ph.5
  %.122.5 = phi i32 [ %i.bq, %.lr.ph.5 ], [ %.1.lcssa.4, %.preheader.5 ]
  %.11421.5 = phi i32 [ %i.br, %.lr.ph.5 ], [ %i.bn, %.preheader.5 ] ; 2 uses
  %i.bq = add nsw i32 %.122.5, 1                  ; 2 uses
  %i.br = shl nuw nsw i32 %.11421.5, 2            ; 2 uses
  %i.bs = icmp samesign ult i32 %.11421.5, 4096
  br i1 %i.bs, label %.lr.ph.5, label %._crit_edge.5, !llvm.loop !18

._crit_edge.5:                                    ; preds = %.lr.ph.5, %.preheader.5
  %.114.lcssa.5 = phi i32 [ %i.bn, %.preheader.5 ], [ %i.br, %.lr.ph.5 ]
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %.preheader.5 ], [ %i.bq, %.lr.ph.5 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12 ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bu
  %i.bw = sub nsw i32 16777216, %i.bv
  %i.bx = ashr i32 %i.bw, 12
  %i.by = mul i32 %i.bx, %.114.lcssa.5            ; 2 uses
  %i.bz = lshr i32 %i.by, 12                      ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %._crit_edge.5
  %i.cb = icmp ult i32 %i.by, 67108864
  br i1 %i.cb, label %.lr.ph.6, label %._crit_edge.6

.lr.ph.6:                                         ; preds = %.preheader.6, %.lr.ph.6
  %.122.6 = phi i32 [ %i.cc, %.lr.ph.6 ], [ %.1.lcssa.5, %.preheader.6 ]
  %.11421.6 = phi i32 [ %i.cd, %.lr.ph.6 ], [ %i.bz, %.preheader.6 ] ; 2 uses
  %i.cc = add nsw i32 %.122.6, 1                  ; 2 uses
  %i.cd = shl nuw nsw i32 %.11421.6, 2            ; 2 uses
  %i.ce = icmp samesign ult i32 %.11421.6, 4096
  br i1 %i.ce, label %.lr.ph.6, label %._crit_edge.6, !llvm.loop !18

._crit_edge.6:                                    ; preds = %.lr.ph.6, %.preheader.6
  %.114.lcssa.6 = phi i32 [ %i.bz, %.preheader.6 ], [ %i.cd, %.lr.ph.6 ]
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %.preheader.6 ], [ %i.cc, %.lr.ph.6 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12 ; 2 uses
  %i.ch = mul nsw i32 %i.cg, %i.cg
  %i.ci = sub nsw i32 16777216, %i.ch
  %i.cj = ashr i32 %i.ci, 12
  %i.ck = mul i32 %i.cj, %.114.lcssa.6            ; 2 uses
  %i.cl = lshr i32 %i.ck, 12                      ; 3 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %._crit_edge.6
  %i.cn = icmp ult i32 %i.ck, 67108864
  br i1 %i.cn, label %.lr.ph.7, label %._crit_edge.7

.lr.ph.7:                                         ; preds = %.preheader.7, %.lr.ph.7
  %.122.7 = phi i32 [ %i.co, %.lr.ph.7 ], [ %.1.lcssa.6, %.preheader.7 ]
  %.11421.7 = phi i32 [ %i.cp, %.lr.ph.7 ], [ %i.cl, %.preheader.7 ] ; 2 uses
  %i.co = add nsw i32 %.122.7, 1                  ; 2 uses
  %i.cp = shl nuw nsw i32 %.11421.7, 2            ; 2 uses
  %i.cq = icmp samesign ult i32 %.11421.7, 4096
  br i1 %i.cq, label %.lr.ph.7, label %._crit_edge.7, !llvm.loop !18

._crit_edge.7:                                    ; preds = %.lr.ph.7, %.preheader.7
  %.114.lcssa.7 = phi i32 [ %i.cl, %.preheader.7 ], [ %i.cp, %.lr.ph.7 ]
  %.1.lcssa.7 = phi i32 [ %.1.lcssa.6, %.preheader.7 ], [ %i.co, %.lr.ph.7 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !12 ; 2 uses
  %i.ct = mul nsw i32 %i.cs, %i.cs
  %i.cu = sub nsw i32 16777216, %i.ct
  %i.cv = ashr i32 %i.cu, 12
  %i.cw = mul i32 %i.cv, %.114.lcssa.7            ; 2 uses
  %i.cx = lshr i32 %i.cw, 12                      ; 3 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %._crit_edge.7
  %i.cz = icmp ult i32 %i.cw, 67108864
  br i1 %i.cz, label %.lr.ph.8, label %._crit_edge.8

.lr.ph.8:                                         ; preds = %.preheader.8, %.lr.ph.8
  %.122.8 = phi i32 [ %i.da, %.lr.ph.8 ], [ %.1.lcssa.7, %.preheader.8 ]
  %.11421.8 = phi i32 [ %i.db, %.lr.ph.8 ], [ %i.cx, %.preheader.8 ] ; 2 uses
  %i.da = add nsw i32 %.122.8, 1                  ; 2 uses
  %i.db = shl nuw nsw i32 %.11421.8, 2            ; 2 uses
  %i.dc = icmp samesign ult i32 %.11421.8, 4096
  br i1 %i.dc, label %.lr.ph.8, label %._crit_edge.8, !llvm.loop !18

._crit_edge.8:                                    ; preds = %.lr.ph.8, %.preheader.8
  %.114.lcssa.8 = phi i32 [ %i.cx, %.preheader.8 ], [ %i.db, %.lr.ph.8 ]
  %.1.lcssa.8 = phi i32 [ %.1.lcssa.7, %.preheader.8 ], [ %i.da, %.lr.ph.8 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !12 ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.de
  %i.dg = sub nsw i32 16777216, %i.df
  %i.dh = ashr i32 %i.dg, 12
  %i.di = mul i32 %i.dh, %.114.lcssa.8            ; 2 uses
  %i.dj = lshr i32 %i.di, 12                      ; 3 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %._crit_edge.8
  %i.dl = icmp ult i32 %i.di, 67108864
  br i1 %i.dl, label %.lr.ph.9, label %._crit_edge.9

.lr.ph.9:                                         ; preds = %.preheader.9, %.lr.ph.9
  %.122.9 = phi i32 [ %i.dm, %.lr.ph.9 ], [ %.1.lcssa.8, %.preheader.9 ]
  %.11421.9 = phi i32 [ %i.dn, %.lr.ph.9 ], [ %i.dj, %.preheader.9 ] ; 2 uses
  %i.dm = add nsw i32 %.122.9, 1                  ; 2 uses
  %i.dn = shl nuw nsw i32 %.11421.9, 2            ; 2 uses
  %i.do = icmp samesign ult i32 %.11421.9, 4096
  br i1 %i.do, label %.lr.ph.9, label %._crit_edge.9, !llvm.loop !18

._crit_edge.9:                                    ; preds = %.lr.ph.9, %.preheader.9
  %.114.lcssa.9 = phi i32 [ %i.dj, %.preheader.9 ], [ %i.dn, %.lr.ph.9 ]
  %.1.lcssa.9 = phi i32 [ %.1.lcssa.8, %.preheader.9 ], [ %i.dm, %.lr.ph.9 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.9, %.lr.ph.i
  %.07.i = phi i32 [ %i.dp, %.lr.ph.i ], [ 2, %._crit_edge.9 ]
  %.056.i = phi i32 [ %i.dq, %.lr.ph.i ], [ %.114.lcssa.9, %._crit_edge.9 ] ; 3 uses
  %i.dp = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.dq = lshr i32 %.056.i, 2                     ; 3 uses
  %i.dr = icmp samesign ugt i32 %.056.i, 16383
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ds = shl nuw i32 %i.dq, 20                   ; 4 uses
  %i.dt = icmp eq i32 %i.dq, 0
  br i1 %i.dt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.du = zext nneg i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -1
  %i.ea = ashr i32 %i.dz, 4
  br label %ff_t_sqrt.exit

bb.c:                                             ; preds = %._crit_edge.i
  %.not.i.i.i = icmp samesign ult i32 %.056.i, 64 ; 2 uses
  %spec.select.i.v.i.i = select i1 %.not.i.i.i, i32 16, i32 24
  %spec.select.i.i.i = lshr i32 %i.ds, %spec.select.i.v.i.i
  %spec.select7.i.i.i = select i1 %.not.i.i.i, i32 0, i32 8
  %i.eb = zext nneg i32 %spec.select.i.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !14
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nuw nsw i32 %spec.select7.i.i.i, %i.ee
  %i.eg = lshr i32 %i.ef, 1                       ; 3 uses
  %i.eh = add nuw nsw i32 %i.eg, 2
  %i.ei = lshr i32 %i.ds, %i.eh                   ; 2 uses
  %i.ej = add nuw nsw i32 %i.eg, 8
  %i.ek = lshr i32 %i.ei, %i.ej
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14  ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = zext i8 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !12
  %1 = tail call i32 @llvm.umulh.i32(i32 %i.ei, i32 %i.er)
  %i.es = shl i32 %i.eo, %i.eg
  %i.et = add i32 %1, %i.es                       ; 3 uses
  %i.eu = mul i32 %i.et, %i.et
  %i.ev = icmp ult i32 %i.ds, %i.eu
  %.neg.i.i = sext i1 %i.ev to i32
  %i.ew = add i32 %i.et, %.neg.i.i
  br label %ff_t_sqrt.exit

ff_t_sqrt.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.ea, %bb.b ], [ %i.ew, %bb.c ]
  %i.ex = shl i32 %.0.i.i, %i.dp
  %i.ey = ashr i32 %i.ex, %.1.lcssa.9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.4, %._crit_edge.5, %._crit_edge.6, %._crit_edge.7, %._crit_edge.8, %ff_t_sqrt.exit
  %.016 = phi i32 [ %i.ey, %ff_t_sqrt.exit ], [ 0, %._crit_edge.8 ], [ 0, %._crit_edge.7 ], [ 0, %._crit_edge.6 ], [ 0, %._crit_edge.5 ], [ 0, %._crit_edge.4 ], [ 0, %._crit_edge.3 ], [ 0, %._crit_edge.2 ], [ 0, %._crit_edge.1 ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4194304) i32 @ff_interp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 20)) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = sub nsw i32 4, %2                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37896 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 37904
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = load <8 x i32>, ptr %i.d, align 4, !tbaa !12
  %i.h = insertelement <8 x i32> poison, i32 %2, i64 0
  %i.i = shufflevector <8 x i32> %i.h, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.j = mul <8 x i32> %i.g, %i.i
  %i.k = load <8 x i32>, ptr %i.f, align 4, !tbaa !12
  %i.l = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.m = shufflevector <8 x i32> %i.l, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.n = mul <8 x i32> %i.k, %i.m
  %i.o = add <8 x i32> %i.n, %i.j
  %i.p = lshr <8 x i32> %i.o, splat (i32 2)
  %i.q = trunc <8 x i32> %i.p to <8 x i16>
  store <8 x i16> %i.q, ptr %1, align 2, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !12
  %i.t = mul i32 %i.s, %2
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = mul i32 %i.v, %i.b
  %i.x = add i32 %i.w, %i.t
  %i.y = lshr i32 %i.x, 2
  %i.z = trunc i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = mul i32 %i.ac, %2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = mul i32 %i.af, %i.b
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !11
  %i.al = load ptr, ptr %0, align 16, !tbaa !27
  %i.am = call i32 @ff_eval_refl(ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef %i.al)
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = sext i32 %3 to i64                      ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load <8 x i32>, ptr %i.ap, align 4, !tbaa !12
  %i.as = trunc <8 x i32> %i.ar to <8 x i16>
  store <8 x i16> %i.as, ptr %1, align 2, !tbaa !11
  %i.at = load <2 x i32>, ptr %i.aq, align 4, !tbaa !12
  %i.au = trunc <2 x i32> %i.at to <2 x i16>
  store <2 x i16> %i.au, ptr %i.aa, align 2, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 37912
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.an
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ay = call i32 @ff_rms(ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi i32 [ %i.ax, %bb.b ], [ %i.ay, %bb.c ]
  %.020.in = mul i32 %.pn, %4
  %.020 = lshr i32 %.020.in, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.020
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 4194304) i32 @ff_rescale_rms(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = mul i32 %1, %0
  %i.b = lshr i32 %i.a, 10
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 -536870912, 536870913) i32 @ff_irms(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = tail call i32 %i.a(ptr noundef %1, ptr noundef %1, i32 noundef 40) #9 ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %i.b, 4095
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.b
  %i.e = shl nuw i32 %i.b, 20
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i32 [ %i.f, %.lr.ph.i ], [ 2, %bb.b ]
  %.056.i = phi i32 [ %i.g, %.lr.ph.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.f = add nuw nsw i32 %.07.i, 1                ; 3 uses
  %i.g = lshr i32 %.056.i, 2                      ; 4 uses
  %i.h = icmp ugt i32 %.056.i, 16383
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.i = shl nuw i32 %i.g, 20                     ; 2 uses
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = ashr i32 %i.p, 4
  br label %ff_t_sqrt.exit

bb.d:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.r = phi i32 [ %i.e, %._crit_edge.i.thread ], [ %i.i, %._crit_edge.i ] ; 3 uses
  %.0.lcssa.i10 = phi i32 [ 2, %._crit_edge.i.thread ], [ %i.f, %._crit_edge.i ]
  %.05.lcssa.i8 = phi i32 [ %i.b, %._crit_edge.i.thread ], [ %i.g, %._crit_edge.i ]
  %.not.i.i.i = icmp samesign ult i32 %.05.lcssa.i8, 16 ; 2 uses
  %spec.select.i.v.i.i = select i1 %.not.i.i.i, i32 16, i32 24
  %spec.select.i.i.i = lshr i32 %i.r, %spec.select.i.v.i.i
  %spec.select7.i.i.i = select i1 %.not.i.i.i, i32 0, i32 8
  %i.s = zext nneg i32 %spec.select.i.i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %spec.select7.i.i.i, %i.v
  %i.x = lshr i32 %i.w, 1                         ; 3 uses
  %i.y = add nuw nsw i32 %i.x, 2
  %i.z = lshr i32 %i.r, %i.y                      ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, 8
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = zext i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %2 = tail call i32 @llvm.umulh.i32(i32 %i.z, i32 %i.ai)
  %i.aj = shl i32 %i.af, %i.x
  %i.ak = add i32 %2, %i.aj                       ; 3 uses
  %i.al = mul i32 %i.ak, %i.ak
  %i.am = icmp ult i32 %i.r, %i.al
  %.neg.i.i = sext i1 %i.am to i32
  %i.an = add i32 %i.ak, %.neg.i.i
  br label %ff_t_sqrt.exit

ff_t_sqrt.exit:                                   ; preds = %bb.c, %bb.d
  %.0.lcssa.i9 = phi i32 [ %i.f, %bb.c ], [ %.0.lcssa.i10, %bb.d ]
  %.0.i.i = phi i32 [ %i.q, %bb.c ], [ %i.an, %bb.d ]
  %i.ao = shl i32 %.0.i.i, %.0.lcssa.i9
  %i.ap = ashr i32 %i.ao, 8
  %i.aq = sdiv i32 536870912, %i.ap
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %ff_t_sqrt.exit
  %.0 = phi i32 [ %i.aq, %ff_t_sqrt.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @ff_subblock_synthesis(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 9 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, 19                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 38640 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 38340
  %i.f = sub nsw i32 127, %2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = icmp slt i32 %2, 21
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.c, i32 40)
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.d, ptr nonnull readonly align 2 %i.h, i64 %i.l, i1 false)
  br i1 %i.i, label %bb.c, label %ff_copy_and_dup.exit

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.c to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.m
  %i.o = shl i32 %i.c, 1
  %i.p = sub i32 80, %i.o
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.n, ptr nonnull readonly align 2 %i.h, i64 %i.q, i1 false)
  br label %ff_copy_and_dup.exit

ff_copy_and_dup.exit:                             ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i32 noundef 40) #9, !inline_history !38 ; 5 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %ff_irms.exit, label %bb.d

bb.d:                                             ; preds = %ff_copy_and_dup.exit
  %i.v = icmp ugt i32 %i.t, 4095
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %bb.d
  %i.w = shl nuw i32 %i.t, 20
  br label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.x, %.lr.ph.i.i ], [ 2, %bb.d ]
  %.056.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = add nuw nsw i32 %.07.i.i, 1              ; 3 uses
  %i.y = lshr i32 %.056.i.i, 2                    ; 4 uses
  %i.z = icmp ugt i32 %.056.i.i, 16383
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = shl nuw i32 %i.y, 20                    ; 2 uses
  %i.ab = icmp eq i32 %i.y, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = ashr i32 %i.ah, 4
  br label %ff_t_sqrt.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i, %._crit_edge.i.thread.i
  %i.aj = phi i32 [ %i.w, %._crit_edge.i.thread.i ], [ %i.aa, %._crit_edge.i.i ] ; 3 uses
  %.0.lcssa.i10.i = phi i32 [ 2, %._crit_edge.i.thread.i ], [ %i.x, %._crit_edge.i.i ]
  %.05.lcssa.i8.i = phi i32 [ %i.t, %._crit_edge.i.thread.i ], [ %i.y, %._crit_edge.i.i ]
  %.not.i.i.i.i = icmp samesign ult i32 %.05.lcssa.i8.i, 16 ; 2 uses
  %spec.select.i.v.i.i.i = select i1 %.not.i.i.i.i, i32 16, i32 24
  %spec.select.i.i.i.i = lshr i32 %i.aj, %spec.select.i.v.i.i.i
  %spec.select7.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 8
  %i.ak = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %spec.select7.i.i.i.i, %i.an
  %i.ap = lshr i32 %i.ao, 1                       ; 3 uses
  %i.aq = add nuw nsw i32 %i.ap, 2
  %i.ar = lshr i32 %i.aj, %i.aq                   ; 2 uses
  %i.as = add nuw nsw i32 %i.ap, 8
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %7 = tail call i32 @llvm.umulh.i32(i32 %i.ar, i32 %i.ba)
  %i.bb = shl i32 %i.ax, %i.ap
  %i.bc = add i32 %7, %i.bb                       ; 3 uses
  %i.bd = mul i32 %i.bc, %i.bc
  %i.be = icmp ult i32 %i.aj, %i.bd
  %.neg.i.i.i = sext i1 %i.be to i32
  %i.bf = add i32 %i.bc, %.neg.i.i.i
  br label %ff_t_sqrt.exit.i

ff_t_sqrt.exit.i:                                 ; preds = %bb.f, %bb.e
  %.0.lcssa.i9.i = phi i32 [ %i.x, %bb.e ], [ %.0.lcssa.i10.i, %bb.f ]
  %.0.i.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.bf, %bb.f ]
  %i.bg = shl i32 %.0.i.i.i, %.0.lcssa.i9.i
  %i.bh = ashr i32 %i.bg, 8
  %i.bi = sdiv i32 536870912, %i.bh
  %i.bj = mul i32 %i.bi, %5
  %i.bk = lshr i32 %i.bj, 12
  br label %ff_irms.exit

ff_irms.exit:                                     ; preds = %ff_copy_and_dup.exit, %ff_t_sqrt.exit.i
  %.0.i = phi i32 [ %i.bk, %ff_t_sqrt.exit.i ], [ 0, %ff_copy_and_dup.exit ]
  %i.bl = icmp eq i32 %i.c, 0
  %i.bm = zext i1 %i.bl to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %ff_irms.exit
  %storemerge = phi i32 [ %.0.i, %ff_irms.exit ], [ 0, %bb.a ]
  %.0 = phi i64 [ %i.bm, %ff_irms.exit ], [ 1, %bb.a ] ; 6 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !12
  %i.bn = sext i32 %3 to i64                      ; 3 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr @ff_cb1_base, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !11
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nsw i32 %5, %i.bq
  %i.bs = ashr i32 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !12
  %i.bu = sext i32 %4 to i64                      ; 3 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr @ff_cb2_base, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !11
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nsw i32 %5, %i.bx
  %i.bz = ashr i32 %i.by, 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 38340
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 38420
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %i.cb, ptr noundef nonnull align 4 dereferenceable(212) %i.cc, i64 212, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.cd = sext i32 %6 to i64                      ; 2 uses
  %i.ce = getelementptr inbounds [6 x i8], ptr @ff_gain_val_tab, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr @ff_gain_exp_tab, i64 %i.cd
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %i.ch = zext nneg i8 %i.cg to i32               ; 3 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %.0
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !11
  %i.ck = sext i16 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !12
  %i.cn = mul i32 %i.cm, %i.ck
  %i.co = lshr i32 %i.cn, %i.ch
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %.0, 1     ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.next.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !11
  %i.cs = sext i16 %i.cr to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12
  %i.cv = mul i32 %i.cu, %i.cs
  %i.cw = lshr i32 %i.cv, %i.ch
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !12
  %exitcond.not.i.1.not = icmp eq i64 %.0, 0
  br i1 %exitcond.not.i.1.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.1 = or disjoint i64 %.0, 2   ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.next.i.1
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !11
  %i.da = sext i16 %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  %i.dd = mul i32 %i.dc, %i.da
  %i.de = lshr i32 %i.dd, %i.ch
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  store i32 %i.de, ptr %i.df, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.dg = getelementptr i8, ptr %0, i64 38552     ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 38640 ; 3 uses
  %i.di = getelementptr [40 x i8], ptr @ff_cb1_vects, i64 %i.bn ; 16 uses
  %i.dj = getelementptr [40 x i8], ptr @ff_cb2_vects, i64 %i.bu ; 16 uses
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %.not26.i = icmp eq i32 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !12 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !12 ; 6 uses
  %i.dp = mul nsw i64 %i.bn, 40
  %i.dq = getelementptr i8, ptr @ff_cb1_vects, i64 %i.dp
  %scevgep55 = getelementptr i8, ptr %i.dq, i64 40
  %i.dr = mul nsw i64 %i.bu, 40
  %i.ds = getelementptr i8, ptr @ff_cb2_vects, i64 %i.dr
  %scevgep56 = getelementptr i8, ptr %i.ds, i64 40
  %bound057 = icmp ult ptr %i.dg, %scevgep55      ; 2 uses
  %bound060 = icmp ult ptr %i.dg, %scevgep56      ; 2 uses
  br i1 %.not26.i, label %vector.memcheck53, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.j
  %scevgep = getelementptr i8, ptr %0, i64 38720  ; 2 uses
  %bound1 = icmp ult ptr %i.di, %scevgep
  %found.conflict = and i1 %bound057, %bound1
  %bound145 = icmp ult ptr %i.dj, %scevgep
  %found.conflict46 = and i1 %bound060, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.preheader27.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert49 = insertelement <8 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat50 = shufflevector <8 x i32> %broadcast.splatinsert49, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert47 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat48 = shufflevector <8 x i32> %broadcast.splatinsert47, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dk, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.load = load <8 x i16>, ptr %i.dh, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.dt = sext <8 x i16> %wide.load to <8 x i32>
  %i.du = mul <8 x i32> %broadcast.splat, %i.dt
  %wide.load51 = load <8 x i8>, ptr %i.di, align 8, !tbaa !14, !alias.scope !41
  %i.dv = sext <8 x i8> %wide.load51 to <8 x i32>
  %i.dw = mul nsw <8 x i32> %broadcast.splat48, %i.dv
  %i.dx = add <8 x i32> %i.dw, %i.du
  %wide.load52 = load <8 x i8>, ptr %i.dj, align 8, !tbaa !14, !alias.scope !42
  %i.dy = sext <8 x i8> %wide.load52 to <8 x i32>
  %i.dz = mul nsw <8 x i32> %broadcast.splat50, %i.dy
  %i.ea = add <8 x i32> %i.dx, %i.dz
  %i.eb = lshr <8 x i32> %i.ea, splat (i32 12)
  %i.ec = trunc <8 x i32> %i.eb to <8 x i16>
  store <8 x i16> %i.ec, ptr %i.dg, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 38656
  %wide.load.1 = load <8 x i16>, ptr %i.ed, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ee = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.ef = mul <8 x i32> %broadcast.splat, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %wide.load51.1 = load <8 x i8>, ptr %i.eg, align 8, !tbaa !14, !alias.scope !41
  %i.eh = sext <8 x i8> %wide.load51.1 to <8 x i32>
  %i.ei = mul nsw <8 x i32> %broadcast.splat48, %i.eh
  %i.ej = add <8 x i32> %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %wide.load52.1 = load <8 x i8>, ptr %i.ek, align 8, !tbaa !14, !alias.scope !42
  %i.el = sext <8 x i8> %wide.load52.1 to <8 x i32>
  %i.em = mul nsw <8 x i32> %broadcast.splat50, %i.el
  %i.en = add <8 x i32> %i.ej, %i.em
  %i.eo = lshr <8 x i32> %i.en, splat (i32 12)
  %i.ep = trunc <8 x i32> %i.eo to <8 x i16>
  %i.eq = getelementptr i8, ptr %0, i64 38568
  store <8 x i16> %i.ep, ptr %i.eq, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 38672
  %wide.load.2 = load <8 x i16>, ptr %i.er, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.es = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.et = mul <8 x i32> %broadcast.splat, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load51.2 = load <8 x i8>, ptr %i.eu, align 8, !tbaa !14, !alias.scope !41
  %i.ev = sext <8 x i8> %wide.load51.2 to <8 x i32>
  %i.ew = mul nsw <8 x i32> %broadcast.splat48, %i.ev
  %i.ex = add <8 x i32> %i.ew, %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load52.2 = load <8 x i8>, ptr %i.ey, align 8, !tbaa !14, !alias.scope !42
  %i.ez = sext <8 x i8> %wide.load52.2 to <8 x i32>
  %i.fa = mul nsw <8 x i32> %broadcast.splat50, %i.ez
  %i.fb = add <8 x i32> %i.ex, %i.fa
  %i.fc = lshr <8 x i32> %i.fb, splat (i32 12)
  %i.fd = trunc <8 x i32> %i.fc to <8 x i16>
  %i.fe = getelementptr i8, ptr %0, i64 38584
  store <8 x i16> %i.fd, ptr %i.fe, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 38688
  %wide.load.3 = load <8 x i16>, ptr %i.ff, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fg = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.fh = mul <8 x i32> %broadcast.splat, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %wide.load51.3 = load <8 x i8>, ptr %i.fi, align 8, !tbaa !14, !alias.scope !41
  %i.fj = sext <8 x i8> %wide.load51.3 to <8 x i32>
  %i.fk = mul nsw <8 x i32> %broadcast.splat48, %i.fj
  %i.fl = add <8 x i32> %i.fk, %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %wide.load52.3 = load <8 x i8>, ptr %i.fm, align 8, !tbaa !14, !alias.scope !42
  %i.fn = sext <8 x i8> %wide.load52.3 to <8 x i32>
  %i.fo = mul nsw <8 x i32> %broadcast.splat50, %i.fn
  %i.fp = add <8 x i32> %i.fl, %i.fo
  %i.fq = lshr <8 x i32> %i.fp, splat (i32 12)
  %i.fr = trunc <8 x i32> %i.fq to <8 x i16>
  %i.fs = getelementptr i8, ptr %0, i64 38600
  store <8 x i16> %i.fr, ptr %i.fs, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 38704
  %wide.load.4 = load <8 x i16>, ptr %i.ft, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  %i.fu = sext <8 x i16> %wide.load.4 to <8 x i32>
  %i.fv = mul <8 x i32> %broadcast.splat, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %wide.load51.4 = load <8 x i8>, ptr %i.fw, align 8, !tbaa !14, !alias.scope !41
  %i.fx = sext <8 x i8> %wide.load51.4 to <8 x i32>
  %i.fy = mul nsw <8 x i32> %broadcast.splat48, %i.fx
  %i.fz = add <8 x i32> %i.fy, %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %wide.load52.4 = load <8 x i8>, ptr %i.ga, align 8, !tbaa !14, !alias.scope !42
  %i.gb = sext <8 x i8> %wide.load52.4 to <8 x i32>
  %i.gc = mul nsw <8 x i32> %broadcast.splat50, %i.gb
  %i.gd = add <8 x i32> %i.fz, %i.gc
  %i.ge = lshr <8 x i32> %i.gd, splat (i32 12)
  %i.gf = trunc <8 x i32> %i.ge to <8 x i16>
  %i.gg = getelementptr i8, ptr %0, i64 38616
  store <8 x i16> %i.gf, ptr %i.gg, align 4, !tbaa !11, !alias.scope !39, !noalias !40
  br label %add_wav.exit

vector.memcheck53:                                ; preds = %bb.j
  %scevgep54 = getelementptr i8, ptr %0, i64 38632 ; 2 uses
  %bound158 = icmp ult ptr %i.di, %scevgep54
  %found.conflict59 = and i1 %bound057, %bound158
  %bound161 = icmp ult ptr %i.dj, %scevgep54
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %found.conflict59, %found.conflict62
  br i1 %conflict.rdx63, label %.preheader.i, label %vector.body70

vector.body70:                                    ; preds = %vector.memcheck53
  %broadcast.splatinsert68 = insertelement <8 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat69 = shufflevector <8 x i32> %broadcast.splatinsert68, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert66 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat67 = shufflevector <8 x i32> %broadcast.splatinsert66, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.load72 = load <8 x i8>, ptr %i.di, align 8, !tbaa !14, !alias.scope !43
  %i.gh = sext <8 x i8> %wide.load72 to <8 x i32>
  %i.gi = mul nsw <8 x i32> %broadcast.splat67, %i.gh
  %wide.load73 = load <8 x i8>, ptr %i.dj, align 8, !tbaa !14, !alias.scope !44
  %i.gj = sext <8 x i8> %wide.load73 to <8 x i32>
  %i.gk = mul nsw <8 x i32> %broadcast.splat69, %i.gj
  %i.gl = add nsw <8 x i32> %i.gk, %i.gi
  %i.gm = lshr <8 x i32> %i.gl, splat (i32 12)
  %i.gn = trunc <8 x i32> %i.gm to <8 x i16>
  store <8 x i16> %i.gn, ptr %i.dg, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.go = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %wide.load72.1 = load <8 x i8>, ptr %i.go, align 8, !tbaa !14, !alias.scope !43
  %i.gp = sext <8 x i8> %wide.load72.1 to <8 x i32>
  %i.gq = mul nsw <8 x i32> %broadcast.splat67, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %wide.load73.1 = load <8 x i8>, ptr %i.gr, align 8, !tbaa !14, !alias.scope !44
  %i.gs = sext <8 x i8> %wide.load73.1 to <8 x i32>
  %i.gt = mul nsw <8 x i32> %broadcast.splat69, %i.gs
  %i.gu = add nsw <8 x i32> %i.gt, %i.gq
  %i.gv = lshr <8 x i32> %i.gu, splat (i32 12)
  %i.gw = trunc <8 x i32> %i.gv to <8 x i16>
  %i.gx = getelementptr i8, ptr %0, i64 38568
  store <8 x i16> %i.gw, ptr %i.gx, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.gy = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load72.2 = load <8 x i8>, ptr %i.gy, align 8, !tbaa !14, !alias.scope !43
  %i.gz = sext <8 x i8> %wide.load72.2 to <8 x i32>
  %i.ha = mul nsw <8 x i32> %broadcast.splat67, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load73.2 = load <8 x i8>, ptr %i.hb, align 8, !tbaa !14, !alias.scope !44
  %i.hc = sext <8 x i8> %wide.load73.2 to <8 x i32>
  %i.hd = mul nsw <8 x i32> %broadcast.splat69, %i.hc
  %i.he = add nsw <8 x i32> %i.hd, %i.ha
  %i.hf = lshr <8 x i32> %i.he, splat (i32 12)
  %i.hg = trunc <8 x i32> %i.hf to <8 x i16>
  %i.hh = getelementptr i8, ptr %0, i64 38584
  store <8 x i16> %i.hg, ptr %i.hh, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hi = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %wide.load72.3 = load <8 x i8>, ptr %i.hi, align 8, !tbaa !14, !alias.scope !43
  %i.hj = sext <8 x i8> %wide.load72.3 to <8 x i32>
  %i.hk = mul nsw <8 x i32> %broadcast.splat67, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %wide.load73.3 = load <8 x i8>, ptr %i.hl, align 8, !tbaa !14, !alias.scope !44
  %i.hm = sext <8 x i8> %wide.load73.3 to <8 x i32>
  %i.hn = mul nsw <8 x i32> %broadcast.splat69, %i.hm
  %i.ho = add nsw <8 x i32> %i.hn, %i.hk
  %i.hp = lshr <8 x i32> %i.ho, splat (i32 12)
  %i.hq = trunc <8 x i32> %i.hp to <8 x i16>
  %i.hr = getelementptr i8, ptr %0, i64 38600
  store <8 x i16> %i.hq, ptr %i.hr, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  %i.hs = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %wide.load72.4 = load <8 x i8>, ptr %i.hs, align 8, !tbaa !14, !alias.scope !43
  %i.ht = sext <8 x i8> %wide.load72.4 to <8 x i32>
  %i.hu = mul nsw <8 x i32> %broadcast.splat67, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %wide.load73.4 = load <8 x i8>, ptr %i.hv, align 8, !tbaa !14, !alias.scope !44
  %i.hw = sext <8 x i8> %wide.load73.4 to <8 x i32>
  %i.hx = mul nsw <8 x i32> %broadcast.splat69, %i.hw
  %i.hy = add nsw <8 x i32> %i.hx, %i.hu
  %i.hz = lshr <8 x i32> %i.hy, splat (i32 12)
  %i.ia = trunc <8 x i32> %i.hz to <8 x i16>
  %i.ib = getelementptr i8, ptr %0, i64 38616
  store <8 x i16> %i.ia, ptr %i.ib, align 4, !tbaa !11, !alias.scope !45, !noalias !46
  br label %add_wav.exit

.preheader27.i:                                   ; preds = %vector.memcheck, %.preheader27.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.1, %.preheader27.i ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv34.i
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !11
  %i.ie = sext i16 %i.id to i32
  %i.if = mul i32 %i.dk, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv34.i
  %i.ih = load i8, ptr %i.ig, align 2, !tbaa !14
  %i.ii = sext i8 %i.ih to i32
  %i.ij = mul nsw i32 %i.dm, %i.ii
  %i.ik = add i32 %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv34.i
  %i.im = load i8, ptr %i.il, align 2, !tbaa !14
  %i.in = sext i8 %i.im to i32
  %i.io = mul nsw i32 %i.do, %i.in
  %i.ip = add i32 %i.ik, %i.io
  %i.iq = lshr i32 %i.ip, 12
  %i.ir = trunc i32 %i.iq to i16
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv34.i
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !11
  %indvars.iv.next35.i = or disjoint i64 %indvars.iv34.i, 1 ; 4 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next35.i
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !11
  %i.iv = sext i16 %i.iu to i32
  %i.iw = mul i32 %i.dk, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next35.i
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !14
  %i.iz = sext i8 %i.iy to i32
  %i.ja = mul nsw i32 %i.dm, %i.iz
  %i.jb = add i32 %i.ja, %i.iw
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next35.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !14
  %i.je = sext i8 %i.jd to i32
  %i.jf = mul nsw i32 %i.do, %i.je
  %i.jg = add i32 %i.jb, %i.jf
  %i.jh = lshr i32 %i.jg, 12
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.next35.i
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !11
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2 ; 2 uses
  %exitcond37.not.i.1 = icmp eq i64 %indvars.iv.next35.i.1, 40
  br i1 %exitcond37.not.i.1, label %add_wav.exit, label %.preheader27.i, !llvm.loop !36

.preheader.i:                                     ; preds = %vector.memcheck53, %.preheader.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i.1, %.preheader.i ], [ 0, %vector.memcheck53 ] ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv38.i
  %i.jl = load i8, ptr %i.jk, align 2, !tbaa !14
  %i.jm = sext i8 %i.jl to i32
  %i.jn = mul nsw i32 %i.dm, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv38.i
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !14
  %i.jq = sext i8 %i.jp to i32
  %i.jr = mul nsw i32 %i.do, %i.jq
  %i.js = add nsw i32 %i.jr, %i.jn
  %i.jt = lshr i32 %i.js, 12
  %i.ju = trunc i32 %i.jt to i16
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv38.i
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !11
  %indvars.iv.next39.i = or disjoint i64 %indvars.iv38.i, 1 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next39.i
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !14
  %i.jy = sext i8 %i.jx to i32
  %i.jz = mul nsw i32 %i.dm, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next39.i
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !14
  %i.kc = sext i8 %i.kb to i32
  %i.kd = mul nsw i32 %i.do, %i.kc
  %i.ke = add nsw i32 %i.kd, %i.jz
  %i.kf = lshr i32 %i.ke, 12
  %i.kg = trunc i32 %i.kf to i16
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.next39.i
  store i16 %i.kg, ptr %i.kh, align 2, !tbaa !11
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next39.i.1, 40
  br i1 %exitcond41.not.i.1, label %add_wav.exit, label %.preheader.i, !llvm.loop !37

add_wav.exit:                                     ; preds = %.preheader27.i, %.preheader.i, %vector.body, %vector.body70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 38240 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 38320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.ki, ptr noundef nonnull align 16 dereferenceable(20) %i.kj, i64 20, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 38260
  %i.kl = tail call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.kk, ptr noundef %1, ptr noundef nonnull %i.dg, i32 noundef 40, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 4095) #9
  %.not29 = icmp eq i32 %i.kl, 0
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %add_wav.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.ki, i8 0, i64 100, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %add_wav.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @ff_celp_lp_synthesis_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"AudioDSPContext", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = distinct !{!18, !13}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS14AVCodecContext", !15, i64 0}
!22 = !{!"p1 double", !15, i64 0}
!23 = !{!"LPCContext", !7, i64 0, !7, i64 4, !7, i64 8, !22, i64 16, !22, i64 24, !15, i64 32, !15, i64 40, !6, i64 48}
!24 = !{!"p1 _ZTS10AudioFrame", !15, i64 0}
!25 = !{!"AudioFrameQueue", !21, i64 0, !7, i64 8, !7, i64 12, !24, i64 16, !7, i64 24, !7, i64 28}
!26 = !{!"RA144Context", !21, i64 0, !16, i64 8, !23, i64 32, !25, i64 37776, !7, i64 37808, !7, i64 37812, !6, i64 37816, !6, i64 37896, !6, i64 37912, !6, i64 37920, !6, i64 38240, !6, i64 38340, !6, i64 38640}
!27 = !{!26, !21, i64 0}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !13, !47}
!37 = distinct !{!37, !13, !47}
!38 = !{ptr @ff_irms}
!39 = !{!29}
!40 = !{!31, !30}
!41 = !{!31}
!42 = !{!30}
!43 = !{!33}
!44 = !{!34}
!45 = !{!35}
!46 = !{!33, !34}
!47 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
