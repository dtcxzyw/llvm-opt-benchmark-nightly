Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_8bpp?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@iwht_iwht_4x4_add_c:bb.a
  %i.cp = ashr exact i32 %i.co, 16
  %i.cq = add nsw i32 %i.cp, %i.cn
  %i.cr = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %.0.i28.3.1 = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 255)
  %.0.i.3.1 = trunc nuw i32 %.0.i28.3.1 to i8
  store i8 %.0.i.3.1, ptr %i.cl, align 1, !tbaa !26
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.ct = extractelement <4 x i16> %i.u, i64 2
  %.0.i23.2 = sext i16 %i.ct to i32
  %i.cu = extractelement <4 x i16> %i.u, i64 1
  %.038.i.2 = sext i16 %i.cu to i32               ; 2 uses
  %i.cv = extractelement <4 x i16> %i.u, i64 3
  %.039.i.2 = sext i16 %i.cv to i32               ; 2 uses
  %i.cw = extractelement <4 x i16> %i.u, i64 0
  %.040.i.2 = sext i16 %i.cw to i32
  %i.cx = add nsw i32 %.038.i.2, %.040.i.2        ; 2 uses
  %i.cy = sub nsw i32 %.0.i23.2, %.039.i.2        ; 2 uses
  %i.cz = sub nsw i32 %i.cx, %i.cy
  %i.da = ashr i32 %i.cz, 1                       ; 2 uses
  %i.db = sub nsw i32 %i.da, %.039.i.2            ; 2 uses
  %i.dc = sub nsw i32 %i.da, %.038.i.2            ; 2 uses
  %i.dd = sub nsw i32 %i.cx, %i.db
  %i.de = add nsw i32 %i.dc, %i.cy
  %i.df = load i8, ptr %i.cs, align 1, !tbaa !26
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl i32 %i.dd, 16
  %i.di = ashr exact i32 %i.dh, 16
  %i.dj = add nsw i32 %i.di, %i.dg
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %.0.i28.242 = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 255)
  %.0.i.243 = trunc nuw i32 %.0.i28.242 to i8
  store i8 %.0.i.243, ptr %i.cs, align 1, !tbaa !26
  %i.dl = getelementptr inbounds i8, ptr %i.cs, i64 %1 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.dn = zext i8 %i.dm to i32
  %i.do = shl i32 %i.db, 16
  %i.dp = ashr exact i32 %i.do, 16
  %i.dq = add nsw i32 %i.dp, %i.dn
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %.0.i28.1.2 = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 255)
  %.0.i.1.2 = trunc nuw i32 %.0.i28.1.2 to i8
  store i8 %.0.i.1.2, ptr %i.dl, align 1, !tbaa !26
  %i.ds = getelementptr inbounds i8, ptr %i.cs, i64 %i.as ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !26
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl i32 %i.dc, 16
  %i.dw = ashr exact i32 %i.dv, 16
  %i.dx = add nsw i32 %i.dw, %i.du
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %.0.i28.2.2 = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 255)
  %.0.i.2.2 = trunc nuw i32 %.0.i28.2.2 to i8
  store i8 %.0.i.2.2, ptr %i.ds, align 1, !tbaa !26
  %i.dz = getelementptr inbounds i8, ptr %i.cs, i64 %i.ba ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !26
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl i32 %i.de, 16
  %i.ed = ashr exact i32 %i.ec, 16
  %i.ee = add nsw i32 %i.ed, %i.eb
  %i.ef = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %.0.i28.3.2 = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 255)
  %.0.i.3.2 = trunc nuw i32 %.0.i28.3.2 to i8
  store i8 %.0.i.3.2, ptr %i.dz, align 1, !tbaa !26
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 5 uses
  %i.eh = extractelement <4 x i16> %i.v, i64 2
  %.0.i23.3 = sext i16 %i.eh to i32
  %i.ei = extractelement <4 x i16> %i.v, i64 1
  %.038.i.3 = sext i16 %i.ei to i32               ; 2 uses
  %i.ej = extractelement <4 x i16> %i.v, i64 3
  %.039.i.3 = sext i16 %i.ej to i32               ; 2 uses
  %i.ek = extractelement <4 x i16> %i.v, i64 0
  %.040.i.3 = sext i16 %i.ek to i32
  %i.el = add nsw i32 %.038.i.3, %.040.i.3        ; 2 uses
  %i.em = sub nsw i32 %.0.i23.3, %.039.i.3        ; 2 uses
  %i.en = sub nsw i32 %i.el, %i.em
  %i.eo = ashr i32 %i.en, 1                       ; 2 uses
  %i.ep = sub nsw i32 %i.eo, %.039.i.3            ; 2 uses
  %i.eq = sub nsw i32 %i.eo, %.038.i.3            ; 2 uses
  %i.er = sub nsw i32 %i.el, %i.ep
  %i.es = add nsw i32 %i.eq, %i.em
  %i.et = load i8, ptr %i.eg, align 1, !tbaa !26
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl i32 %i.er, 16
  %i.ew = ashr exact i32 %i.ev, 16
  %i.ex = add nsw i32 %i.ew, %i.eu
  %i.ey = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 0)
  %.0.i28.344 = tail call i32 @llvm.umin.i32(i32 %i.ey, i32 255)
  %.0.i.345 = trunc nuw i32 %.0.i28.344 to i8
  store i8 %.0.i.345, ptr %i.eg, align 1, !tbaa !26
  %i.ez = getelementptr inbounds i8, ptr %i.eg, i64 %1 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !26
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl i32 %i.ep, 16
  %i.fd = ashr exact i32 %i.fc, 16
  %i.fe = add nsw i32 %i.fd, %i.fb
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %.0.i28.1.3 = tail call i32 @llvm.umin.i32(i32 %i.ff, i32 255)
  %.0.i.1.3 = trunc nuw i32 %.0.i28.1.3 to i8
  store i8 %.0.i.1.3, ptr %i.ez, align 1, !tbaa !26
  %i.fg = getelementptr inbounds i8, ptr %i.eg, i64 %i.as ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !26
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl i32 %i.eq, 16
  %i.fk = ashr exact i32 %i.fj, 16
  %i.fl = add nsw i32 %i.fk, %i.fi
  %i.fm = tail call i32 @llvm.smax.i32(i32 %i.fl, i32 0)
  %.0.i28.2.3 = tail call i32 @llvm.umin.i32(i32 %i.fm, i32 255)
  %.0.i.2.3 = trunc nuw i32 %.0.i28.2.3 to i8
  store i8 %.0.i.2.3, ptr %i.fg, align 1, !tbaa !26
  %i.fn = getelementptr inbounds i8, ptr %i.eg, i64 %i.ba ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !26
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl i32 %i.es, 16
  %i.fr = ashr exact i32 %i.fq, 16
  %i.fs = add nsw i32 %i.fr, %i.fp
  %i.ft = tail call i32 @llvm.smax.i32(i32 %i.fs, i32 0)
  %.0.i28.3.3 = tail call i32 @llvm.umin.i32(i32 %i.ft, i32 255)
  %.0.i.3.3 = trunc nuw i32 %.0.i28.3.3 to i8
  store i8 %.0.i.3.3, ptr %i.fn, align 1, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_4_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i19 = phi ptr [ %0, %bb.a ], [ %i.cc, %.critedge.i ] ; 11 uses
  %.0551.i18 = phi i32 [ 0, %bb.a ], [ %i.cb, %.critedge.i ]
  %i.a = getelementptr inbounds i8, ptr %.0.i19, i64 -4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds i8, ptr %.0.i19, i64 -3
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.0.i19, i64 -2 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.0.i19, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32                      ; 6 uses
  %i.m = load i8, ptr %.0.i19, align 1, !tbaa !26
  %i.n = zext i8 %i.m to i32                      ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i19, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i32                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i19, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i19, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i32
  %i.x = sub nsw i32 %i.c, %i.f
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %.not.i = icmp sgt i32 %i.y, %3
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = sub nsw i32 %i.f, %i.i
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %.not611.i = icmp samesign ugt i32 %i.aa, %3
  br i1 %.not611.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i32 %i.i, %i.l
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true) ; 2 uses
  %.not612.i = icmp samesign ugt i32 %i.ac, %3
  br i1 %.not612.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sub nsw i32 %i.q, %i.n
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true) ; 2 uses
  %.not613.i = icmp samesign ugt i32 %i.ae, %3
  br i1 %.not613.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub nsw i32 %i.t, %i.q
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %.not614.i = icmp samesign ugt i32 %i.ag, %3
  br i1 %.not614.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sub nsw i32 %i.w, %i.t
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ai, %3
  br i1 %.not615.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sub nsw i32 %i.l, %i.n
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = shl nuw nsw i32 %i.ak, 1
  %i.am = sub nsw i32 %i.i, %i.q                  ; 2 uses
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = lshr i32 %i.an, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.al
  %.not = icmp sgt i32 %i.ap, %2
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp sgt i32 %i.ac, %4
  %5 = icmp sgt i32 %i.ae, %4
  %or.cond = or i1 %i.aq, %5
  br i1 %or.cond, label %.critedge631.i, label %bb.j

.critedge631.i:                                   ; preds = %bb.i
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.am, i32 -128)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 127)
  %i.as = sub nsw i32 %i.n, %i.l
  %i.at = mul nsw i32 %i.as, 3
  %i.au = add nsw i32 %.0.i9, %i.at
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.au, i32 -128) ; 2 uses
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.av, i32 123)
  %i.ax = add nsw i32 %i.aw, 4
  %i.ay = ashr i32 %i.ax, 3
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.av, i32 124)
  %i.ba = add nsw i32 %i.az, 3
  %i.bb = ashr i32 %i.ba, 3
  %i.bc = add nsw i32 %i.bb, %i.l
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %.0.i641.i16 = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 255)
  %.0.i641.i = trunc nuw i32 %.0.i641.i16 to i8
  store i8 %.0.i641.i, ptr %i.j, align 1, !tbaa !26
  %i.be = sub nsw i32 %i.n, %i.ay
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.0.i639.i17 = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 255)
  %.0.i639.i = trunc nuw i32 %.0.i639.i17 to i8
  store i8 %.0.i639.i, ptr %.0.i19, align 1, !tbaa !26
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bg = sub nsw i32 %i.n, %i.l                  ; 2 uses
  %i.bh = mul nsw i32 %i.bg, 3                    ; 2 uses
  %i.bi = add nsw i32 %i.bh, 128
  %.not.i10 = icmp ult i32 %i.bi, 256
  %i.bj = icmp sgt i32 %i.bg, -1
  %i.bk = select i1 %i.bj, i32 127, i32 -128
  %.0.i11 = select i1 %.not.i10, i32 %i.bh, i32 %i.bk ; 2 uses
  %i.bl = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 123)
  %i.bm = add nsw i32 %i.bl, 4
  %i.bn = ashr i32 %i.bm, 3                       ; 2 uses
  %i.bo = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 124)
  %i.bp = add nsw i32 %i.bo, 3
  %i.bq = ashr i32 %i.bp, 3
  %i.br = add nsw i32 %i.bq, %i.l
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.br, i32 0)
  %.0.i637.i12 = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 255)
  %.0.i637.i = trunc nuw i32 %.0.i637.i12 to i8
  store i8 %.0.i637.i, ptr %i.j, align 1, !tbaa !26
  %i.bt = sub nsw i32 %i.n, %i.bn
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %.0.i635.i13 = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 255)
  %.0.i635.i = trunc nuw i32 %.0.i635.i13 to i8
  store i8 %.0.i635.i, ptr %.0.i19, align 1, !tbaa !26
  %i.bv = add nsw i32 %i.bn, 1
  %i.bw = ashr i32 %i.bv, 1                       ; 2 uses
  %i.bx = add nsw i32 %i.bw, %i.i
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %.0.i633.i14 = tail call i32 @llvm.umin.i32(i32 %i.by, i32 255)
  %.0.i633.i = trunc nuw i32 %.0.i633.i14 to i8
  store i8 %.0.i633.i, ptr %i.g, align 1, !tbaa !26
  %i.bz = sub nsw i32 %i.q, %i.bw
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %.0.i.i15 = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i.i15 to i8
  store i8 %.0.i.i, ptr %i.o, align 1, !tbaa !26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.critedge631.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.cb = add nuw nsw i32 %.0551.i18, 1           ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.0.i19, i64 %1
  %exitcond.not = icmp eq i32 %i.cb, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !0

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_4_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = mul nsw i64 %1, -4
  %i.b = mul nsw i64 %1, -3
  %i.c = mul nsw i64 %1, -2
  %i.d = sub nsw i64 0, %1
  %i.e = shl nsw i64 %1, 1
  %i.f = mul nsw i64 %1, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i19 = phi ptr [ %0, %bb.a ], [ %i.ci, %.critedge.i ] ; 11 uses
  %.0551.i18 = phi i32 [ 0, %bb.a ], [ %i.ch, %.critedge.i ]
  %i.g = getelementptr inbounds i8, ptr %.0.i19, i64 %i.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds i8, ptr %.0.i19, i64 %i.b
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.0.i19, i64 %i.c ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.0.i19, i64 %i.d ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = zext i8 %i.q to i32                      ; 6 uses
  %i.s = load i8, ptr %.0.i19, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32                      ; 6 uses
  %i.u = getelementptr inbounds i8, ptr %.0.i19, i64 %1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i32                      ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %.0.i19, i64 %i.e
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.0.i19, i64 %i.f
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 %i.i, %i.l
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %.not.i = icmp sgt i32 %i.ae, %3
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = sub nsw i32 %i.l, %i.o
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %.not611.i = icmp samesign ugt i32 %i.ag, %3
  br i1 %.not611.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = sub nsw i32 %i.o, %i.r
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %.not612.i = icmp samesign ugt i32 %i.ai, %3
  br i1 %.not612.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nsw i32 %i.w, %i.t
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true) ; 2 uses
  %.not613.i = icmp samesign ugt i32 %i.ak, %3
  br i1 %.not613.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sub nsw i32 %i.z, %i.w
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.not614.i = icmp samesign ugt i32 %i.am, %3
  br i1 %.not614.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i32 %i.ac, %i.z
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ao, %3
  br i1 %.not615.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.r, %i.t
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = sub nsw i32 %i.o, %i.w                  ; 2 uses
  %i.at = tail call i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %i.au = lshr i32 %i.at, 1
  %i.av = add nuw nsw i32 %i.au, %i.ar
  %.not = icmp sgt i32 %i.av, %2
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp sgt i32 %i.ai, %4
  %5 = icmp sgt i32 %i.ak, %4
  %or.cond = or i1 %i.aw, %5
  br i1 %or.cond, label %.critedge631.i, label %bb.j

.critedge631.i:                                   ; preds = %bb.i
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.as, i32 -128)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 127)
  %i.ay = sub nsw i32 %i.t, %i.r
  %i.az = mul nsw i32 %i.ay, 3
  %i.ba = add nsw i32 %.0.i9, %i.az
  %i.bb = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 -128) ; 2 uses
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 123)
  %i.bd = add nsw i32 %i.bc, 4
  %i.be = ashr i32 %i.bd, 3
  %i.bf = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 124)
  %i.bg = add nsw i32 %i.bf, 3
  %i.bh = ashr i32 %i.bg, 3
  %i.bi = add nsw i32 %i.bh, %i.r
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %.0.i641.i16 = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 255)
  %.0.i641.i = trunc nuw i32 %.0.i641.i16 to i8
  store i8 %.0.i641.i, ptr %i.p, align 1, !tbaa !26
  %i.bk = sub nsw i32 %i.t, %i.be
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %.0.i639.i17 = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 255)
  %.0.i639.i = trunc nuw i32 %.0.i639.i17 to i8
  store i8 %.0.i639.i, ptr %.0.i19, align 1, !tbaa !26
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.bm = sub nsw i32 %i.t, %i.r                  ; 2 uses
  %i.bn = mul nsw i32 %i.bm, 3                    ; 2 uses
  %i.bo = add nsw i32 %i.bn, 128
  %.not.i10 = icmp ult i32 %i.bo, 256
  %i.bp = icmp sgt i32 %i.bm, -1
  %i.bq = select i1 %i.bp, i32 127, i32 -128
  %.0.i11 = select i1 %.not.i10, i32 %i.bn, i32 %i.bq ; 2 uses
  %i.br = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 123)
  %i.bs = add nsw i32 %i.br, 4
  %i.bt = ashr i32 %i.bs, 3                       ; 2 uses
  %i.bu = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 124)
  %i.bv = add nsw i32 %i.bu, 3
  %i.bw = ashr i32 %i.bv, 3
  %i.bx = add nsw i32 %i.bw, %i.r
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %.0.i637.i12 = tail call i32 @llvm.umin.i32(i32 %i.by, i32 255)
  %.0.i637.i = trunc nuw i32 %.0.i637.i12 to i8
  store i8 %.0.i637.i, ptr %i.p, align 1, !tbaa !26
  %i.bz = sub nsw i32 %i.t, %i.bt
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %.0.i635.i13 = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 255)
  %.0.i635.i = trunc nuw i32 %.0.i635.i13 to i8
  store i8 %.0.i635.i, ptr %.0.i19, align 1, !tbaa !26
  %i.cb = add nsw i32 %i.bt, 1
  %i.cc = ashr i32 %i.cb, 1                       ; 2 uses
  %i.cd = add nsw i32 %i.cc, %i.o
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 0)
  %.0.i633.i14 = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 255)
  %.0.i633.i = trunc nuw i32 %.0.i633.i14 to i8
  store i8 %.0.i633.i, ptr %i.m, align 1, !tbaa !26
  %i.cf = sub nsw i32 %i.w, %i.cc
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %.0.i.i15 = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i.i15 to i8
  store i8 %.0.i.i, ptr %i.u, align 1, !tbaa !26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.critedge631.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ch = add nuw nsw i32 %.0551.i18, 1           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i19, i64 1
  %exitcond.not = icmp eq i32 %i.ch, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !0

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_8_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i23 = phi ptr [ %0, %bb.a ], [ %i.el, %.critedge.i ] ; 12 uses
  %.0551.i22 = phi i32 [ 0, %bb.a ], [ %i.ek, %.critedge.i ]
  %i.a = getelementptr inbounds i8, ptr %.0.i23, i64 -4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i32                      ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.0.i23, i64 -3 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i32                      ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %.0.i23, i64 -2 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i32                      ; 9 uses
  %i.j = getelementptr inbounds i8, ptr %.0.i23, i64 -1 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32                      ; 11 uses
  %i.m = load i8, ptr %.0.i23, align 1, !tbaa !26
  %i.n = zext i8 %i.m to i32                      ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i23, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i32                      ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i23, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32                      ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i23, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i32                      ; 6 uses
  %i.x = sub nsw i32 %i.c, %i.f
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %.not.i = icmp sgt i32 %i.y, %3
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = sub nsw i32 %i.f, %i.i
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %.not611.i = icmp samesign ugt i32 %i.aa, %3
  br i1 %.not611.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i32 %i.i, %i.l
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true) ; 3 uses
  %.not612.i = icmp samesign ugt i32 %i.ac, %3
  br i1 %.not612.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sub nsw i32 %i.q, %i.n
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true) ; 3 uses
  %.not613.i = icmp samesign ugt i32 %i.ae, %3
  br i1 %.not613.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub nsw i32 %i.t, %i.q
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %.not614.i = icmp samesign ugt i32 %i.ag, %3
  br i1 %.not614.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sub nsw i32 %i.w, %i.t
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ai, %3
  br i1 %.not615.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sub nsw i32 %i.l, %i.n
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = shl nuw nsw i32 %i.ak, 1
  %i.am = sub nsw i32 %i.i, %i.q                  ; 2 uses
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = lshr i32 %i.an, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.al
  %.not = icmp sgt i32 %i.ap, %2
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw nsw i32 %i.c, 1
  %i.ar = sub nsw i32 %i.aq, %i.l
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.at = add nuw nsw i32 %i.f, 1
  %i.au = sub nsw i32 %i.at, %i.l
  %i.av = icmp ult i32 %i.au, 3
  %5 = or i32 %i.ae, %i.ac
  %i.aw = icmp samesign ult i32 %5, 2
  %or.cond13 = and i1 %i.av, %i.aw
  br i1 %or.cond13, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub nsw i32 %i.t, %i.n
  %i.ax = add nsw i32 %reass.sub, 1
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %reass.sub24 = sub nsw i32 %i.w, %i.n
  %i.az = add nsw i32 %reass.sub24, 1
  %i.ba = icmp ult i32 %i.az, 3
  br i1 %i.ba, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bb = mul nuw nsw i32 %i.c, 3
  %i.bc = shl nuw nsw i32 %i.f, 1
  %i.bd = add nuw nsw i32 %i.bb, 4
  %i.be = add nuw nsw i32 %i.bd, %i.bc
  %i.bf = add nuw nsw i32 %i.be, %i.i
  %i.bg = add nuw nsw i32 %i.bf, %i.l
  %i.bh = add nuw nsw i32 %i.bg, %i.n
  %i.bi = lshr i32 %i.bh, 3
  %i.bj = trunc nuw i32 %i.bi to i8
  store i8 %i.bj, ptr %i.d, align 1, !tbaa !26
  %i.bk = add nuw nsw i32 %i.i, %i.c
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = add nuw nsw i32 %i.l, 4                 ; 3 uses
  %i.bn = add nuw nsw i32 %i.bm, %i.f             ; 2 uses
  %i.bo = add nuw nsw i32 %i.bn, %i.bl
  %i.bp = add nuw nsw i32 %i.bo, %i.n
  %i.bq = add nuw nsw i32 %i.bp, %i.q
  %i.br = lshr i32 %i.bq, 3
  %i.bs = trunc nuw i32 %i.br to i8
  store i8 %i.bs, ptr %i.g, align 1, !tbaa !26
  %i.bt = shl nuw nsw i32 %i.l, 1
  %i.bu = add nuw nsw i32 %i.i, 4
  %i.bv = add nuw nsw i32 %i.bu, %i.c
  %i.bw = add nuw nsw i32 %i.bv, %i.f
  %i.bx = add nuw nsw i32 %i.bw, %i.bt
  %i.by = add nuw nsw i32 %i.bx, %i.n
  %i.bz = add nuw nsw i32 %i.by, %i.q
  %i.ca = add nuw nsw i32 %i.bz, %i.t
  %i.cb = lshr i32 %i.ca, 3
  %i.cc = trunc nuw i32 %i.cb to i8
  store i8 %i.cc, ptr %i.j, align 1, !tbaa !26
  %i.cd = shl nuw nsw i32 %i.n, 1
  %i.ce = add nuw nsw i32 %i.bn, %i.i
  %i.cf = add nuw nsw i32 %i.ce, %i.cd
  %i.cg = add nuw nsw i32 %i.cf, %i.q
  %i.ch = add nuw nsw i32 %i.cg, %i.t
  %i.ci = add nuw nsw i32 %i.ch, %i.w
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = trunc nuw i32 %i.cj to i8
  store i8 %i.ck, ptr %.0.i23, align 1, !tbaa !26
  %reass.add = add nuw nsw i32 %i.w, %i.q
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.cl = add nuw nsw i32 %i.bm, %i.i
  %i.cm = add nuw nsw i32 %i.cl, %i.n
  %i.cn = add nuw nsw i32 %i.cm, %i.t
  %i.co = add nuw nsw i32 %i.cn, %reass.mul
  %i.cp = lshr i32 %i.co, 3
  %i.cq = trunc nuw i32 %i.cp to i8
  store i8 %i.cq, ptr %i.o, align 1, !tbaa !26
  %i.cr = add nuw nsw i32 %i.w, %i.t
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = add nuw nsw i32 %i.bm, %i.n
  %i.cu = add nuw nsw i32 %i.ct, %i.q
  %i.cv = add nuw nsw i32 %i.cu, %i.w
  %i.cw = add nuw nsw i32 %i.cv, %i.cs
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = trunc nuw i32 %i.cx to i8
  store i8 %i.cy, ptr %i.r, align 1, !tbaa !26
  br label %.critedge.i

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.cz = icmp sgt i32 %i.ac, %4
  %6 = icmp sgt i32 %i.ae, %4
  %or.cond14 = or i1 %i.cz, %6
  br i1 %or.cond14, label %.critedge631.i, label %bb.n

.critedge631.i:                                   ; preds = %.thread
  %i.da = tail call i32 @llvm.smax.i32(i32 %i.am, i32 -128)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 127)
  %i.db = sub nsw i32 %i.n, %i.l
  %i.dc = mul nsw i32 %i.db, 3
  %i.dd = add nsw i32 %.0.i9, %i.dc
  %i.de = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 -128) ; 2 uses
  %i.df = tail call i32 @llvm.smin.i32(i32 %i.de, i32 123)
  %i.dg = add nsw i32 %i.df, 4
  %i.dh = ashr i32 %i.dg, 3
  %i.di = tail call i32 @llvm.smin.i32(i32 %i.de, i32 124)
  %i.dj = add nsw i32 %i.di, 3
  %i.dk = ashr i32 %i.dj, 3
  %i.dl = add nsw i32 %i.dk, %i.l
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %.0.i641.i19 = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 255)
  %.0.i641.i = trunc nuw i32 %.0.i641.i19 to i8
  store i8 %.0.i641.i, ptr %i.j, align 1, !tbaa !26
  %i.dn = sub nsw i32 %i.n, %i.dh
  %i.do = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %.0.i639.i20 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 255)
  %.0.i639.i = trunc nuw i32 %.0.i639.i20 to i8
  store i8 %.0.i639.i, ptr %.0.i23, align 1, !tbaa !26
  br label %.critedge.i

bb.n:                                             ; preds = %.thread
  %i.dp = sub nsw i32 %i.n, %i.l                  ; 2 uses
  %i.dq = mul nsw i32 %i.dp, 3                    ; 2 uses
  %i.dr = add nsw i32 %i.dq, 128
  %.not.i10 = icmp ult i32 %i.dr, 256
  %i.ds = icmp sgt i32 %i.dp, -1
  %i.dt = select i1 %i.ds, i32 127, i32 -128
  %.0.i11 = select i1 %.not.i10, i32 %i.dq, i32 %i.dt ; 2 uses
  %i.du = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 123)
  %i.dv = add nsw i32 %i.du, 4
  %i.dw = ashr i32 %i.dv, 3                       ; 2 uses
  %i.dx = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 124)
  %i.dy = add nsw i32 %i.dx, 3
  %i.dz = ashr i32 %i.dy, 3
  %i.ea = add nsw i32 %i.dz, %i.l
  %i.eb = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %.0.i637.i15 = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 255)
  %.0.i637.i = trunc nuw i32 %.0.i637.i15 to i8
  store i8 %.0.i637.i, ptr %i.j, align 1, !tbaa !26
  %i.ec = sub nsw i32 %i.n, %i.dw
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %.0.i635.i16 = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 255)
  %.0.i635.i = trunc nuw i32 %.0.i635.i16 to i8
  store i8 %.0.i635.i, ptr %.0.i23, align 1, !tbaa !26
  %i.ee = add nsw i32 %i.dw, 1
  %i.ef = ashr i32 %i.ee, 1                       ; 2 uses
  %i.eg = add nsw i32 %i.ef, %i.i
  %i.eh = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %.0.i633.i17 = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 255)
  %.0.i633.i = trunc nuw i32 %.0.i633.i17 to i8
  store i8 %.0.i633.i, ptr %i.g, align 1, !tbaa !26
  %i.ei = sub nsw i32 %i.q, %i.ef
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  %.0.i.i18 = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i.i18 to i8
  store i8 %.0.i.i, ptr %i.o, align 1, !tbaa !26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %.critedge631.i, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ek = add nuw nsw i32 %.0551.i22, 1           ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.0.i23, i64 %1
  %exitcond.not = icmp eq i32 %i.ek, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !0

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_8_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = mul nsw i64 %1, -4
  %i.b = mul nsw i64 %1, -3
  %i.c = mul nsw i64 %1, -2
  %i.d = sub nsw i64 0, %1
  %i.e = shl nsw i64 %1, 1
  %i.f = mul nsw i64 %1, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i23 = phi ptr [ %0, %bb.a ], [ %i.er, %.critedge.i ] ; 12 uses
  %.0551.i22 = phi i32 [ 0, %bb.a ], [ %i.eq, %.critedge.i ]
  %i.g = getelementptr inbounds i8, ptr %.0.i23, i64 %i.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i32                      ; 5 uses
  %i.j = getelementptr inbounds i8, ptr %.0.i23, i64 %i.b ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.0.i23, i64 %i.c ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i32                      ; 9 uses
  %i.p = getelementptr inbounds i8, ptr %.0.i23, i64 %i.d ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = zext i8 %i.q to i32                      ; 11 uses
  %i.s = load i8, ptr %.0.i23, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32                      ; 14 uses
  %i.u = getelementptr inbounds i8, ptr %.0.i23, i64 %1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i32                      ; 9 uses
  %i.x = getelementptr inbounds i8, ptr %.0.i23, i64 %i.e ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26
  %i.z = zext i8 %i.y to i32                      ; 7 uses
  %i.aa = getelementptr inbounds i8, ptr %.0.i23, i64 %i.f
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = zext i8 %i.ab to i32                    ; 6 uses
  %i.ad = sub nsw i32 %i.i, %i.l
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %.not.i = icmp sgt i32 %i.ae, %3
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = sub nsw i32 %i.l, %i.o
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %.not611.i = icmp samesign ugt i32 %i.ag, %3
  br i1 %.not611.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = sub nsw i32 %i.o, %i.r
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 3 uses
  %.not612.i = icmp samesign ugt i32 %i.ai, %3
  br i1 %.not612.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nsw i32 %i.w, %i.t
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true) ; 3 uses
  %.not613.i = icmp samesign ugt i32 %i.ak, %3
  br i1 %.not613.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sub nsw i32 %i.z, %i.w
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.not614.i = icmp samesign ugt i32 %i.am, %3
  br i1 %.not614.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = sub nsw i32 %i.ac, %i.z
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ao, %3
  br i1 %.not615.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.r, %i.t
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = sub nsw i32 %i.o, %i.w                  ; 2 uses
  %i.at = tail call i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %i.au = lshr i32 %i.at, 1
  %i.av = add nuw nsw i32 %i.au, %i.ar
  %.not = icmp sgt i32 %i.av, %2
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = add nuw nsw i32 %i.i, 1
  %i.ax = sub nsw i32 %i.aw, %i.r
  %i.ay = icmp ult i32 %i.ax, 3
  br i1 %i.ay, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.az = add nuw nsw i32 %i.l, 1
  %i.ba = sub nsw i32 %i.az, %i.r
  %i.bb = icmp ult i32 %i.ba, 3
  %5 = or i32 %i.ak, %i.ai
  %i.bc = icmp samesign ult i32 %5, 2
  %or.cond13 = and i1 %i.bb, %i.bc
  br i1 %or.cond13, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %reass.sub = sub nsw i32 %i.z, %i.t
  %i.bd = add nsw i32 %reass.sub, 1
  %i.be = icmp ult i32 %i.bd, 3
  br i1 %i.be, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %reass.sub24 = sub nsw i32 %i.ac, %i.t
  %i.bf = add nsw i32 %reass.sub24, 1
  %i.bg = icmp ult i32 %i.bf, 3
  br i1 %i.bg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bh = mul nuw nsw i32 %i.i, 3
  %i.bi = shl nuw nsw i32 %i.l, 1
  %i.bj = add nuw nsw i32 %i.bh, 4
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = add nuw nsw i32 %i.bk, %i.o
  %i.bm = add nuw nsw i32 %i.bl, %i.r
  %i.bn = add nuw nsw i32 %i.bm, %i.t
  %i.bo = lshr i32 %i.bn, 3
  %i.bp = trunc nuw i32 %i.bo to i8
  store i8 %i.bp, ptr %i.j, align 1, !tbaa !26
  %i.bq = add nuw nsw i32 %i.o, %i.i
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = add nuw nsw i32 %i.r, 4                 ; 3 uses
  %i.bt = add nuw nsw i32 %i.bs, %i.l             ; 2 uses
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = add nuw nsw i32 %i.bu, %i.t
  %i.bw = add nuw nsw i32 %i.bv, %i.w
  %i.bx = lshr i32 %i.bw, 3
  %i.by = trunc nuw i32 %i.bx to i8
  store i8 %i.by, ptr %i.m, align 1, !tbaa !26
  %i.bz = shl nuw nsw i32 %i.r, 1
  %i.ca = add nuw nsw i32 %i.o, 4
  %i.cb = add nuw nsw i32 %i.ca, %i.i
  %i.cc = add nuw nsw i32 %i.cb, %i.l
  %i.cd = add nuw nsw i32 %i.cc, %i.bz
  %i.ce = add nuw nsw i32 %i.cd, %i.t
  %i.cf = add nuw nsw i32 %i.ce, %i.w
  %i.cg = add nuw nsw i32 %i.cf, %i.z
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = trunc nuw i32 %i.ch to i8
  store i8 %i.ci, ptr %i.p, align 1, !tbaa !26
  %i.cj = shl nuw nsw i32 %i.t, 1
  %i.ck = add nuw nsw i32 %i.bt, %i.o
  %i.cl = add nuw nsw i32 %i.ck, %i.cj
  %i.cm = add nuw nsw i32 %i.cl, %i.w
  %i.cn = add nuw nsw i32 %i.cm, %i.z
  %i.co = add nuw nsw i32 %i.cn, %i.ac
  %i.cp = lshr i32 %i.co, 3
  %i.cq = trunc nuw i32 %i.cp to i8
  store i8 %i.cq, ptr %.0.i23, align 1, !tbaa !26
  %reass.add = add nuw nsw i32 %i.ac, %i.w
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.cr = add nuw nsw i32 %i.bs, %i.o
  %i.cs = add nuw nsw i32 %i.cr, %i.t
  %i.ct = add nuw nsw i32 %i.cs, %i.z
  %i.cu = add nuw nsw i32 %i.ct, %reass.mul
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = trunc nuw i32 %i.cv to i8
  store i8 %i.cw, ptr %i.u, align 1, !tbaa !26
  %i.cx = add nuw nsw i32 %i.ac, %i.z
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = add nuw nsw i32 %i.bs, %i.t
  %i.da = add nuw nsw i32 %i.cz, %i.w
  %i.db = add nuw nsw i32 %i.da, %i.ac
  %i.dc = add nuw nsw i32 %i.db, %i.cy
  %i.dd = lshr i32 %i.dc, 3
  %i.de = trunc nuw i32 %i.dd to i8
  store i8 %i.de, ptr %i.x, align 1, !tbaa !26
  br label %.critedge.i

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.df = icmp sgt i32 %i.ai, %4
  %6 = icmp sgt i32 %i.ak, %4
  %or.cond14 = or i1 %i.df, %6
  br i1 %or.cond14, label %.critedge631.i, label %bb.n

.critedge631.i:                                   ; preds = %.thread
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.as, i32 -128)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 127)
  %i.dh = sub nsw i32 %i.t, %i.r
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = add nsw i32 %.0.i9, %i.di
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 -128) ; 2 uses
  %i.dl = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 123)
  %i.dm = add nsw i32 %i.dl, 4
  %i.dn = ashr i32 %i.dm, 3
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 124)
  %i.dp = add nsw i32 %i.do, 3
  %i.dq = ashr i32 %i.dp, 3
  %i.dr = add nsw i32 %i.dq, %i.r
  %i.ds = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 0)
  %.0.i641.i19 = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 255)
  %.0.i641.i = trunc nuw i32 %.0.i641.i19 to i8
  store i8 %.0.i641.i, ptr %i.p, align 1, !tbaa !26
  %i.dt = sub nsw i32 %i.t, %i.dn
  %i.du = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %.0.i639.i20 = tail call i32 @llvm.umin.i32(i32 %i.du, i32 255)
  %.0.i639.i = trunc nuw i32 %.0.i639.i20 to i8
  store i8 %.0.i639.i, ptr %.0.i23, align 1, !tbaa !26
  br label %.critedge.i

bb.n:                                             ; preds = %.thread
  %i.dv = sub nsw i32 %i.t, %i.r                  ; 2 uses
  %i.dw = mul nsw i32 %i.dv, 3                    ; 2 uses
  %i.dx = add nsw i32 %i.dw, 128
  %.not.i10 = icmp ult i32 %i.dx, 256
  %i.dy = icmp sgt i32 %i.dv, -1
  %i.dz = select i1 %i.dy, i32 127, i32 -128
  %.0.i11 = select i1 %.not.i10, i32 %i.dw, i32 %i.dz ; 2 uses
  %i.ea = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 123)
  %i.eb = add nsw i32 %i.ea, 4
  %i.ec = ashr i32 %i.eb, 3                       ; 2 uses
  %i.ed = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 124)
  %i.ee = add nsw i32 %i.ed, 3
  %i.ef = ashr i32 %i.ee, 3
  %i.eg = add nsw i32 %i.ef, %i.r
  %i.eh = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %.0.i637.i15 = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 255)
  %.0.i637.i = trunc nuw i32 %.0.i637.i15 to i8
  store i8 %.0.i637.i, ptr %i.p, align 1, !tbaa !26
  %i.ei = sub nsw i32 %i.t, %i.ec
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  %.0.i635.i16 = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 255)
  %.0.i635.i = trunc nuw i32 %.0.i635.i16 to i8
  store i8 %.0.i635.i, ptr %.0.i23, align 1, !tbaa !26
  %i.ek = add nsw i32 %i.ec, 1
  %i.el = ashr i32 %i.ek, 1                       ; 2 uses
  %i.em = add nsw i32 %i.el, %i.o
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.em, i32 0)
  %.0.i633.i17 = tail call i32 @llvm.umin.i32(i32 %i.en, i32 255)
  %.0.i633.i = trunc nuw i32 %.0.i633.i17 to i8
  store i8 %.0.i633.i, ptr %i.m, align 1, !tbaa !26
  %i.eo = sub nsw i32 %i.w, %i.el
  %i.ep = tail call i32 @llvm.smax.i32(i32 %i.eo, i32 0)
  %.0.i.i18 = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i.i18 to i8
  store i8 %.0.i.i, ptr %i.u, align 1, !tbaa !26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %.critedge631.i, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.eq = add nuw nsw i32 %.0551.i22, 1           ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i23, i64 1
  %exitcond.not = icmp eq i32 %i.eq, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !0

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_16_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i30 = phi ptr [ %0, %bb.a ], [ %i.nc, %.critedge.i ] ; 21 uses
  %.0551.i29 = phi i32 [ 0, %bb.a ], [ %i.nb, %.critedge.i ]
  %i.a = getelementptr inbounds i8, ptr %.0.i30, i64 -4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i32                      ; 8 uses
  %i.d = getelementptr inbounds i8, ptr %.0.i30, i64 -3 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = zext i8 %i.e to i32                      ; 11 uses
  %i.g = getelementptr inbounds i8, ptr %.0.i30, i64 -2 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i32                      ; 16 uses
  %i.j = getelementptr inbounds i8, ptr %.0.i30, i64 -1 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32                      ; 24 uses
  %i.m = load i8, ptr %.0.i30, align 1, !tbaa !26
  %i.n = zext i8 %i.m to i32                      ; 28 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i30, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i32                      ; 19 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i30, i64 2 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32                      ; 18 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i30, i64 3 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i32                      ; 17 uses
  %i.x = sub nsw i32 %i.c, %i.f
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %.not.i = icmp sgt i32 %i.y, %3
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = sub nsw i32 %i.f, %i.i
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %.not611.i = icmp samesign ugt i32 %i.aa, %3
  br i1 %.not611.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nsw i32 %i.i, %i.l
  %i.ac = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true) ; 3 uses
  %.not612.i = icmp samesign ugt i32 %i.ac, %3
  br i1 %.not612.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sub nsw i32 %i.q, %i.n
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 true) ; 3 uses
  %.not613.i = icmp samesign ugt i32 %i.ae, %3
  br i1 %.not613.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub nsw i32 %i.t, %i.q
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %.not614.i = icmp samesign ugt i32 %i.ag, %3
  br i1 %.not614.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = sub nsw i32 %i.w, %i.t
  %i.ai = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.ai, %3
  br i1 %.not615.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sub nsw i32 %i.l, %i.n
  %i.ak = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %i.al = shl nuw nsw i32 %i.ak, 1
  %i.am = sub nsw i32 %i.i, %i.q                  ; 2 uses
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = lshr i32 %i.an, 1
  %i.ap = add nuw nsw i32 %i.ao, %i.al
  %.not = icmp sgt i32 %i.ap, %2
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds i8, ptr %.0.i30, i64 -8
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26
  %i.as = zext i8 %i.ar to i32                    ; 8 uses
  %i.at = getelementptr inbounds i8, ptr %.0.i30, i64 -7 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26
  %i.av = zext i8 %i.au to i32                    ; 9 uses
  %i.aw = getelementptr inbounds i8, ptr %.0.i30, i64 -6 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !26
  %i.ay = zext i8 %i.ax to i32                    ; 10 uses
  %i.az = getelementptr inbounds i8, ptr %.0.i30, i64 -5 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i32                    ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i30, i64 4 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !26
  %i.be = zext i8 %i.bd to i32                    ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i30, i64 5 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bh = zext i8 %i.bg to i32                    ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i30, i64 6 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !26
  %i.bk = zext i8 %i.bj to i32                    ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i30, i64 7
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  %i.bn = zext i8 %i.bm to i32                    ; 7 uses
  %reass.sub = sub nsw i32 %i.as, %i.l
  %i.bo = add nsw i32 %reass.sub, 1
  %i.bp = icmp ult i32 %i.bo, 3
  br i1 %i.bp, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %reass.sub31 = sub nsw i32 %i.av, %i.l
  %i.bq = add nsw i32 %reass.sub31, 1
  %i.br = icmp ult i32 %i.bq, 3
  br i1 %i.br, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %reass.sub32 = sub nsw i32 %i.ay, %i.l
  %i.bs = add nsw i32 %reass.sub32, 1
  %i.bt = icmp ult i32 %i.bs, 3
  br i1 %i.bt, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %reass.sub33 = sub nsw i32 %i.bb, %i.l
  %i.bu = add nsw i32 %reass.sub33, 1
  %i.bv = icmp ult i32 %i.bu, 3
  br i1 %i.bv, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %reass.sub34 = sub nsw i32 %i.be, %i.n
  %i.bw = add nsw i32 %reass.sub34, 1
  %i.bx = icmp ult i32 %i.bw, 3
  br i1 %i.bx, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %reass.sub35 = sub nsw i32 %i.bh, %i.n
  %i.by = add nsw i32 %reass.sub35, 1
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %reass.sub36 = sub nsw i32 %i.bk, %i.n
  %i.ca = add nsw i32 %reass.sub36, 1
  %i.cb = icmp ult i32 %i.ca, 3
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %reass.sub37 = sub nsw i32 %i.bn, %i.n
  %i.cc = add nsw i32 %reass.sub37, 1
  %i.cd = icmp ult i32 %i.cc, 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %or.cond.i = phi i1 [ %i.cd, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ]
  %i.ce = add nuw nsw i32 %i.c, 1
  %i.cf = sub nsw i32 %i.ce, %i.l
  %i.cg = icmp ult i32 %i.cf, 3
  br i1 %i.cg, label %bb.r, label %.thread16

bb.r:                                             ; preds = %bb.q
  %i.ch = add nuw nsw i32 %i.f, 1
  %i.ci = sub nsw i32 %i.ch, %i.l
  %i.cj = icmp ult i32 %i.ci, 3
  %5 = or i32 %i.ae, %i.ac
  %i.ck = icmp samesign ult i32 %5, 2
  %or.cond18 = and i1 %i.cj, %i.ck
  br i1 %or.cond18, label %bb.s, label %.thread16

bb.s:                                             ; preds = %bb.r
  %reass.sub38 = sub nsw i32 %i.t, %i.n
  %i.cl = add nsw i32 %reass.sub38, 1
  %i.cm = icmp ult i32 %i.cl, 3
  br i1 %i.cm, label %bb.t, label %.thread16

bb.t:                                             ; preds = %bb.s
  %reass.sub39 = sub nsw i32 %i.w, %i.n
  %i.cn = add nsw i32 %reass.sub39, 1
  %i.co = icmp ult i32 %i.cn, 3                   ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %i.co, i1 false
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cp = mul nuw nsw i32 %i.as, 3
  %i.cq = shl nuw nsw i32 %i.as, 2
  %i.cr = mul nuw nsw i32 %i.as, 5
  %i.cs = mul nuw nsw i32 %i.as, 6
  %i.ct = mul nuw nsw i32 %i.as, 7
  %i.cu = shl nuw nsw i32 %i.av, 1
  %i.cv = add nuw nsw i32 %i.n, %i.l
  %i.cw = add nuw nsw i32 %i.cv, 8
  %i.cx = add nuw nsw i32 %i.cw, %i.c
  %i.cy = add nuw nsw i32 %i.cx, %i.f
  %i.cz = add nuw nsw i32 %i.cy, %i.i
  %i.da = add nuw nsw i32 %i.cz, %i.ct
  %i.db = add nuw nsw i32 %i.da, %i.cu
  %i.dc = add nuw nsw i32 %i.db, %i.ay
  %i.dd = add nuw nsw i32 %i.dc, %i.bb
  %i.de = lshr i32 %i.dd, 4
  %i.df = trunc nuw i32 %i.de to i8
  store i8 %i.df, ptr %i.at, align 1, !tbaa !26
  %i.dg = shl nuw nsw i32 %i.ay, 1
  %i.dh = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %i.di = add nuw nsw i32 %i.dh, %i.f             ; 2 uses
  %i.dj = add nuw nsw i32 %i.di, %i.i             ; 2 uses
  %i.dk = add nuw nsw i32 %i.dj, %i.l             ; 2 uses
  %i.dl = add nuw nsw i32 %i.dk, %i.n             ; 2 uses
  %i.dm = add nuw nsw i32 %i.dl, %i.q             ; 3 uses
  %i.dn = add nuw nsw i32 %i.dm, %i.av
  %i.do = add nuw nsw i32 %i.dn, %i.cs
  %i.dp = add nuw nsw i32 %i.do, %i.dg
  %i.dq = add nuw nsw i32 %i.dp, %i.bb
  %i.dr = lshr i32 %i.dq, 4
  %i.ds = trunc nuw i32 %i.dr to i8
  store i8 %i.ds, ptr %i.aw, align 1, !tbaa !26
  %i.dt = shl nuw nsw i32 %i.bb, 1
  %i.du = add nuw nsw i32 %i.dm, %i.t             ; 2 uses
  %i.dv = add nuw nsw i32 %i.du, %i.av
  %i.dw = add nuw nsw i32 %i.dv, %i.cr
  %i.dx = add nuw nsw i32 %i.dw, %i.ay
  %i.dy = add nuw nsw i32 %i.dx, %i.dt
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = trunc nuw i32 %i.dz to i8
  store i8 %i.ea, ptr %i.az, align 1, !tbaa !26
  %i.eb = shl nuw nsw i32 %i.c, 1
  %i.ec = add nuw nsw i32 %i.eb, 8
  %i.ed = add nuw nsw i32 %i.ec, %i.f
  %i.ee = add nuw nsw i32 %i.ed, %i.i
  %i.ef = add nuw nsw i32 %i.ee, %i.l
  %i.eg = add nuw nsw i32 %i.ef, %i.n
  %i.eh = add nuw nsw i32 %i.eg, %i.q
  %i.ei = add nuw nsw i32 %i.eh, %i.t
  %i.ej = add nuw nsw i32 %i.ei, %i.w
  %i.ek = add nuw nsw i32 %i.ej, %i.av
  %i.el = add nuw nsw i32 %i.ek, %i.cq
  %i.em = add nuw nsw i32 %i.el, %i.ay
  %i.en = add nuw nsw i32 %i.em, %i.bb
  %i.eo = lshr i32 %i.en, 4
  %i.ep = trunc nuw i32 %i.eo to i8
  store i8 %i.ep, ptr %i.a, align 1, !tbaa !26
  %i.eq = shl nuw nsw i32 %i.f, 1
  %i.er = add nuw nsw i32 %i.dh, %i.eq
  %i.es = add nuw nsw i32 %i.er, %i.i
  %i.et = add nuw nsw i32 %i.es, %i.l
  %i.eu = add nuw nsw i32 %i.et, %i.n
  %i.ev = add nuw nsw i32 %i.eu, %i.q
  %i.ew = add nuw nsw i32 %i.ev, %i.t
  %i.ex = add nuw nsw i32 %i.ew, %i.w
  %i.ey = add nuw nsw i32 %i.ex, %i.av
  %i.ez = add nuw nsw i32 %i.ey, %i.cp
  %i.fa = add nuw nsw i32 %i.ez, %i.ay
  %i.fb = add nuw nsw i32 %i.fa, %i.bb
  %i.fc = add nuw nsw i32 %i.fb, %i.be
  %i.fd = lshr i32 %i.fc, 4
  %i.fe = trunc nuw i32 %i.fd to i8
  store i8 %i.fe, ptr %i.d, align 1, !tbaa !26
  %reass.add27 = add nuw nsw i32 %i.as, %i.i
  %reass.mul28 = shl nuw nsw i32 %reass.add27, 1
  %i.ff = add nuw nsw i32 %i.di, %i.l
  %i.fg = add nuw nsw i32 %i.ff, %i.n
  %i.fh = add nuw nsw i32 %i.fg, %i.q
  %i.fi = add nuw nsw i32 %i.fh, %i.t
  %i.fj = add nuw nsw i32 %i.fi, %i.w
  %i.fk = add nuw nsw i32 %i.fj, %i.av
  %i.fl = add nuw nsw i32 %i.fk, %i.ay
  %i.fm = add nuw nsw i32 %i.fl, %reass.mul28
  %i.fn = add nuw nsw i32 %i.fm, %i.bb
  %i.fo = add nuw nsw i32 %i.fn, %i.be
  %i.fp = add nuw nsw i32 %i.fo, %i.bh
  %i.fq = lshr i32 %i.fp, 4
  %i.fr = trunc nuw i32 %i.fq to i8
  store i8 %i.fr, ptr %i.g, align 1, !tbaa !26
  %i.fs = shl nuw nsw i32 %i.l, 1
  %i.ft = add nuw nsw i32 %i.dj, %i.fs
  %i.fu = add nuw nsw i32 %i.ft, %i.n
  %i.fv = add nuw nsw i32 %i.fu, %i.q
  %i.fw = add nuw nsw i32 %i.fv, %i.t
  %i.fx = add nuw nsw i32 %i.fw, %i.w
  %i.fy = add nuw nsw i32 %i.fx, %i.as
  %i.fz = add nuw nsw i32 %i.fy, %i.av
  %i.ga = add nuw nsw i32 %i.fz, %i.ay
  %i.gb = add nuw nsw i32 %i.ga, %i.bb
  %i.gc = add nuw nsw i32 %i.gb, %i.be
  %i.gd = add nuw nsw i32 %i.gc, %i.bh
  %i.ge = add nuw nsw i32 %i.gd, %i.bk
  %i.gf = lshr i32 %i.ge, 4
  %i.gg = trunc nuw i32 %i.gf to i8
  store i8 %i.gg, ptr %i.j, align 1, !tbaa !26
  %i.gh = shl nuw nsw i32 %i.n, 1
  %i.gi = add nuw nsw i32 %i.dk, %i.gh
  %i.gj = add nuw nsw i32 %i.gi, %i.q
  %i.gk = add nuw nsw i32 %i.gj, %i.t
  %i.gl = add nuw nsw i32 %i.gk, %i.w
  %i.gm = add nuw nsw i32 %i.gl, %i.av
  %i.gn = add nuw nsw i32 %i.gm, %i.ay
  %i.go = add nuw nsw i32 %i.gn, %i.bb
  %i.gp = add nuw nsw i32 %i.go, %i.be
  %i.gq = add nuw nsw i32 %i.gp, %i.bh
  %i.gr = add nuw nsw i32 %i.gq, %i.bk
  %i.gs = add nuw nsw i32 %i.gr, %i.bn
  %i.gt = lshr i32 %i.gs, 4
  %i.gu = trunc nuw i32 %i.gt to i8
  store i8 %i.gu, ptr %.0.i30, align 1, !tbaa !26
  %i.gv = shl nuw nsw i32 %i.q, 1
  %reass.add617.i = shl nuw nsw i32 %i.bn, 1      ; 4 uses
  %i.gw = add nuw nsw i32 %i.dl, %i.gv
  %i.gx = add nuw nsw i32 %i.gw, %i.t
  %i.gy = add nuw nsw i32 %i.gx, %i.w
  %i.gz = add nuw nsw i32 %i.gy, %i.ay
  %i.ha = add nuw nsw i32 %i.gz, %i.bb
  %i.hb = add nuw nsw i32 %i.ha, %i.be
  %i.hc = add nuw nsw i32 %i.hb, %i.bh
  %i.hd = add nuw nsw i32 %i.hc, %i.bk
  %i.he = add nuw nsw i32 %i.hd, %reass.add617.i
  %i.hf = lshr i32 %i.he, 4
  %i.hg = trunc nuw i32 %i.hf to i8
  store i8 %i.hg, ptr %i.o, align 1, !tbaa !26
  %i.hh = shl nuw nsw i32 %i.t, 1
  %i.hi = add nuw nsw i32 %i.dm, %i.hh
  %i.hj = add nuw nsw i32 %i.hi, %i.w
  %i.hk = add nuw nsw i32 %i.hj, %i.bb
  %i.hl = add nuw nsw i32 %i.hk, %i.be
  %i.hm = add nuw nsw i32 %i.hl, %i.bh
  %i.hn = add nuw nsw i32 %i.hm, %i.bk
  %i.ho = add nuw nsw i32 %i.hn, %i.bn
  %i.hp = add nuw nsw i32 %i.ho, %reass.add617.i
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = trunc nuw i32 %i.hq to i8
  store i8 %i.hr, ptr %i.r, align 1, !tbaa !26
  %i.hs = shl nuw nsw i32 %i.w, 1
  %i.ht = shl nuw nsw i32 %i.bn, 2                ; 4 uses
  %i.hu = add nuw nsw i32 %i.du, %i.hs
  %i.hv = add nuw nsw i32 %i.hu, %i.be
  %i.hw = add nuw nsw i32 %i.hv, %i.bh
  %i.hx = add nuw nsw i32 %i.hw, %i.bk
  %i.hy = add nuw nsw i32 %i.hx, %i.ht
  %i.hz = lshr i32 %i.hy, 4
  %i.ia = trunc nuw i32 %i.hz to i8
  store i8 %i.ia, ptr %i.u, align 1, !tbaa !26
  %i.ib = shl nuw nsw i32 %i.be, 1
  %i.ic = add nuw nsw i32 %i.f, 8
  %i.id = add nuw nsw i32 %i.ic, %i.i
  %i.ie = add nuw nsw i32 %i.id, %i.l
  %i.if = add nuw nsw i32 %i.ie, %i.n
  %i.ig = add nuw nsw i32 %i.if, %i.q
  %i.ih = add nuw nsw i32 %i.ig, %i.t
  %i.ii = add nuw nsw i32 %i.ih, %i.w
  %i.ij = add nuw nsw i32 %i.ii, %i.ib
  %i.ik = add nuw nsw i32 %i.ij, %i.bh
  %i.il = add nuw nsw i32 %i.ik, %i.bk
  %i.im = add nuw nsw i32 %i.il, %i.bn
  %i.in = add nuw nsw i32 %i.im, %i.ht
  %i.io = lshr i32 %i.in, 4
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.bc, align 1, !tbaa !26
  %i.iq = shl nuw nsw i32 %i.bh, 1
  %i.ir = add nuw nsw i32 %i.i, 8
  %i.is = add nuw nsw i32 %i.ir, %i.l
  %i.it = add nuw nsw i32 %i.is, %i.n
  %i.iu = add nuw nsw i32 %i.it, %i.q
  %i.iv = add nuw nsw i32 %i.iu, %i.t
  %i.iw = add nuw nsw i32 %i.iv, %i.w
  %i.ix = add nuw nsw i32 %i.iw, %i.be
  %i.iy = add nuw nsw i32 %i.ix, %i.iq
  %i.iz = add nuw nsw i32 %i.iy, %i.bk
  %i.ja = add nuw nsw i32 %i.iz, %i.ht
  %i.jb = add nuw nsw i32 %i.ja, %reass.add617.i
  %i.jc = lshr i32 %i.jb, 4
  %i.jd = trunc nuw i32 %i.jc to i8
  store i8 %i.jd, ptr %i.bf, align 1, !tbaa !26
  %i.je = shl nuw nsw i32 %i.bk, 1
  %i.jf = add nuw nsw i32 %i.l, 8
  %i.jg = add nuw nsw i32 %i.jf, %i.n
  %i.jh = add nuw nsw i32 %i.jg, %i.q
  %i.ji = add nuw nsw i32 %i.jh, %i.t
  %i.jj = add nuw nsw i32 %i.ji, %i.w
  %i.jk = add nuw nsw i32 %i.jj, %i.be
  %i.jl = add nuw nsw i32 %i.jk, %i.bh
  %i.jm = add nuw nsw i32 %i.jl, %i.je
  %i.jn = add nuw nsw i32 %i.jm, %i.bn
  %i.jo = add nuw nsw i32 %i.jn, %i.ht
  %i.jp = add nuw nsw i32 %i.jo, %reass.add617.i
  %i.jq = lshr i32 %i.jp, 4
  %i.jr = trunc nuw i32 %i.jq to i8
  store i8 %i.jr, ptr %i.bi, align 1, !tbaa !26
  br label %.critedge.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.co, label %bb.w, label %.thread16

bb.w:                                             ; preds = %bb.v
  %i.js = mul nuw nsw i32 %i.c, 3
  %i.jt = shl nuw nsw i32 %i.f, 1
  %i.ju = add nuw nsw i32 %i.js, 4
  %i.jv = add nuw nsw i32 %i.ju, %i.jt
  %i.jw = add nuw nsw i32 %i.jv, %i.i
  %i.jx = add nuw nsw i32 %i.jw, %i.l
  %i.jy = add nuw nsw i32 %i.jx, %i.n
  %i.jz = lshr i32 %i.jy, 3
  %i.ka = trunc nuw i32 %i.jz to i8
  store i8 %i.ka, ptr %i.d, align 1, !tbaa !26
  %i.kb = add nuw nsw i32 %i.i, %i.c
  %i.kc = shl nuw nsw i32 %i.kb, 1
  %i.kd = add nuw nsw i32 %i.l, 4                 ; 3 uses
  %i.ke = add nuw nsw i32 %i.kd, %i.f             ; 2 uses
  %i.kf = add nuw nsw i32 %i.ke, %i.kc
  %i.kg = add nuw nsw i32 %i.kf, %i.n
  %i.kh = add nuw nsw i32 %i.kg, %i.q
  %i.ki = lshr i32 %i.kh, 3
  %i.kj = trunc nuw i32 %i.ki to i8
  store i8 %i.kj, ptr %i.g, align 1, !tbaa !26
  %i.kk = shl nuw nsw i32 %i.l, 1
  %i.kl = add nuw nsw i32 %i.i, 4
  %i.km = add nuw nsw i32 %i.kl, %i.c
  %i.kn = add nuw nsw i32 %i.km, %i.f
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = add nuw nsw i32 %i.ko, %i.n
  %i.kq = add nuw nsw i32 %i.kp, %i.q
  %i.kr = add nuw nsw i32 %i.kq, %i.t
  %i.ks = lshr i32 %i.kr, 3
  %i.kt = trunc nuw i32 %i.ks to i8
  store i8 %i.kt, ptr %i.j, align 1, !tbaa !26
  %i.ku = shl nuw nsw i32 %i.n, 1
  %i.kv = add nuw nsw i32 %i.ke, %i.i
  %i.kw = add nuw nsw i32 %i.kv, %i.ku
  %i.kx = add nuw nsw i32 %i.kw, %i.q
  %i.ky = add nuw nsw i32 %i.kx, %i.t
  %i.kz = add nuw nsw i32 %i.ky, %i.w
  %i.la = lshr i32 %i.kz, 3
  %i.lb = trunc nuw i32 %i.la to i8
  store i8 %i.lb, ptr %.0.i30, align 1, !tbaa !26
  %reass.add = add nuw nsw i32 %i.w, %i.q
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.lc = add nuw nsw i32 %i.kd, %i.i
  %i.ld = add nuw nsw i32 %i.lc, %i.n
  %i.le = add nuw nsw i32 %i.ld, %i.t
  %i.lf = add nuw nsw i32 %i.le, %reass.mul
  %i.lg = lshr i32 %i.lf, 3
  %i.lh = trunc nuw i32 %i.lg to i8
  store i8 %i.lh, ptr %i.o, align 1, !tbaa !26
  %i.li = add nuw nsw i32 %i.w, %i.t
  %i.lj = shl nuw nsw i32 %i.li, 1
  %i.lk = add nuw nsw i32 %i.kd, %i.n
  %i.ll = add nuw nsw i32 %i.lk, %i.q
  %i.lm = add nuw nsw i32 %i.ll, %i.w
  %i.ln = add nuw nsw i32 %i.lm, %i.lj
  %i.lo = lshr i32 %i.ln, 3
  %i.lp = trunc nuw i32 %i.lo to i8
  store i8 %i.lp, ptr %i.r, align 1, !tbaa !26
  br label %.critedge.i

.thread16:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.v
  %i.lq = icmp sgt i32 %i.ac, %4
  %6 = icmp sgt i32 %i.ae, %4
  %or.cond19 = or i1 %i.lq, %6
  br i1 %or.cond19, label %.critedge631.i, label %bb.x

.critedge631.i:                                   ; preds = %.thread16
  %i.lr = tail call i32 @llvm.smax.i32(i32 %i.am, i32 -128)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.lr, i32 127)
  %i.ls = sub nsw i32 %i.n, %i.l
  %i.lt = mul nsw i32 %i.ls, 3
  %i.lu = add nsw i32 %.0.i9, %i.lt
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.lu, i32 -128) ; 2 uses
  %i.lw = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 123)
  %i.lx = add nsw i32 %i.lw, 4
  %i.ly = ashr i32 %i.lx, 3
  %i.lz = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 124)
  %i.ma = add nsw i32 %i.lz, 3
  %i.mb = ashr i32 %i.ma, 3
  %i.mc = add nsw i32 %i.mb, %i.l
  %i.md = tail call i32 @llvm.smax.i32(i32 %i.mc, i32 0)
  %.0.i641.i24 = tail call i32 @llvm.umin.i32(i32 %i.md, i32 255)
  %.0.i641.i = trunc nuw i32 %.0.i641.i24 to i8
  store i8 %.0.i641.i, ptr %i.j, align 1, !tbaa !26
  %i.me = sub nsw i32 %i.n, %i.ly
  %i.mf = tail call i32 @llvm.smax.i32(i32 %i.me, i32 0)
  %.0.i639.i25 = tail call i32 @llvm.umin.i32(i32 %i.mf, i32 255)
  %.0.i639.i = trunc nuw i32 %.0.i639.i25 to i8
  store i8 %.0.i639.i, ptr %.0.i30, align 1, !tbaa !26
  br label %.critedge.i

bb.x:                                             ; preds = %.thread16
  %i.mg = sub nsw i32 %i.n, %i.l                  ; 2 uses
  %i.mh = mul nsw i32 %i.mg, 3                    ; 2 uses
  %i.mi = add nsw i32 %i.mh, 128
  %.not.i10 = icmp ult i32 %i.mi, 256
  %i.mj = icmp sgt i32 %i.mg, -1
  %i.mk = select i1 %i.mj, i32 127, i32 -128
  %.0.i11 = select i1 %.not.i10, i32 %i.mh, i32 %i.mk ; 2 uses
  %i.ml = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 123)
  %i.mm = add nsw i32 %i.ml, 4
  %i.mn = ashr i32 %i.mm, 3                       ; 2 uses
  %i.mo = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 124)
  %i.mp = add nsw i32 %i.mo, 3
  %i.mq = ashr i32 %i.mp, 3
  %i.mr = add nsw i32 %i.mq, %i.l
  %i.ms = tail call i32 @llvm.smax.i32(i32 %i.mr, i32 0)
  %.0.i637.i20 = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 255)
  %.0.i637.i = trunc nuw i32 %.0.i637.i20 to i8
  store i8 %.0.i637.i, ptr %i.j, align 1, !tbaa !26
  %i.mt = sub nsw i32 %i.n, %i.mn
  %i.mu = tail call i32 @llvm.smax.i32(i32 %i.mt, i32 0)
  %.0.i635.i21 = tail call i32 @llvm.umin.i32(i32 %i.mu, i32 255)
  %.0.i635.i = trunc nuw i32 %.0.i635.i21 to i8
  store i8 %.0.i635.i, ptr %.0.i30, align 1, !tbaa !26
  %i.mv = add nsw i32 %i.mn, 1
  %i.mw = ashr i32 %i.mv, 1                       ; 2 uses
  %i.mx = add nsw i32 %i.mw, %i.i
  %i.my = tail call i32 @llvm.smax.i32(i32 %i.mx, i32 0)
  %.0.i633.i22 = tail call i32 @llvm.umin.i32(i32 %i.my, i32 255)
  %.0.i633.i = trunc nuw i32 %.0.i633.i22 to i8
  store i8 %.0.i633.i, ptr %i.g, align 1, !tbaa !26
  %i.mz = sub nsw i32 %i.q, %i.mw
  %i.na = tail call i32 @llvm.smax.i32(i32 %i.mz, i32 0)
  %.0.i.i23 = tail call i32 @llvm.umin.i32(i32 %i.na, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i.i23 to i8
  store i8 %.0.i.i, ptr %i.o, align 1, !tbaa !26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.x, %.critedge631.i, %bb.w, %bb.u, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.nb = add nuw nsw i32 %.0551.i29, 1           ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %.0.i30, i64 %1
  %exitcond.not = icmp eq i32 %i.nb, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !0

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_16_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = mul nsw i64 %1, -4
  %i.b = mul nsw i64 %1, -3
  %i.c = mul nsw i64 %1, -2
  %i.d = sub nsw i64 0, %1
  %i.e = shl nsw i64 %1, 1
  %i.f = mul nsw i64 %1, 3
  %i.g = mul nsw i64 %1, -8
  %i.h = mul nsw i64 %1, -7
  %i.i = mul nsw i64 %1, -6
  %i.j = mul nsw i64 %1, -5
  %i.k = shl nsw i64 %1, 2
  %i.l = mul nsw i64 %1, 5
  %i.m = mul nsw i64 %1, 6
  %i.n = mul nsw i64 %1, 7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge.i
  %.0.i30 = phi ptr [ %0, %bb.a ], [ %i.nq, %.critedge.i ] ; 21 uses
  %.0551.i29 = phi i32 [ 0, %bb.a ], [ %i.np, %.critedge.i ]
  %i.o = getelementptr inbounds i8, ptr %.0.i30, i64 %i.a ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i32                      ; 8 uses
  %i.r = getelementptr inbounds i8, ptr %.0.i30, i64 %i.b ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32                      ; 11 uses
  %i.u = getelementptr inbounds i8, ptr %.0.i30, i64 %i.c ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i32                      ; 16 uses
  %i.x = getelementptr inbounds i8, ptr %.0.i30, i64 %i.d ; 5 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26
  %i.z = zext i8 %i.y to i32                      ; 24 uses
  %i.aa = load i8, ptr %.0.i30, align 1, !tbaa !26
  %i.ab = zext i8 %i.aa to i32                    ; 28 uses
  %i.ac = getelementptr inbounds i8, ptr %.0.i30, i64 %1 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !26
  %i.ae = zext i8 %i.ad to i32                    ; 19 uses
  %i.af = getelementptr inbounds i8, ptr %.0.i30, i64 %i.e ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !26
  %i.ah = zext i8 %i.ag to i32                    ; 18 uses
  %i.ai = getelementptr inbounds i8, ptr %.0.i30, i64 %i.f ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !26
  %i.ak = zext i8 %i.aj to i32                    ; 17 uses
  %i.al = sub nsw i32 %i.q, %i.t
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true)
  %.not.i = icmp sgt i32 %i.am, %3
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = sub nsw i32 %i.t, %i.w
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %.not611.i = icmp samesign ugt i32 %i.ao, %3
  br i1 %.not611.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = sub nsw i32 %i.w, %i.z
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true) ; 3 uses
  %.not612.i = icmp samesign ugt i32 %i.aq, %3
  br i1 %.not612.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %i.ae, %i.ab
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true) ; 3 uses
  %.not613.i = icmp samesign ugt i32 %i.as, %3
  br i1 %.not613.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = sub nsw i32 %i.ah, %i.ae
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %.not614.i = icmp samesign ugt i32 %i.au, %3
  br i1 %.not614.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sub nsw i32 %i.ak, %i.ah
  %i.aw = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true)
  %.not615.i = icmp samesign ugt i32 %i.aw, %3
  br i1 %.not615.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = sub nsw i32 %i.z, %i.ab
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = sub nsw i32 %i.w, %i.ae                 ; 2 uses
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.az
  %.not = icmp sgt i32 %i.bd, %2
  br i1 %.not, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds i8, ptr %.0.i30, i64 %i.g
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !26
  %i.bg = zext i8 %i.bf to i32                    ; 8 uses
  %i.bh = getelementptr inbounds i8, ptr %.0.i30, i64 %i.h ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  %i.bj = zext i8 %i.bi to i32                    ; 9 uses
  %i.bk = getelementptr inbounds i8, ptr %.0.i30, i64 %i.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = zext i8 %i.bl to i32                    ; 10 uses
  %i.bn = getelementptr inbounds i8, ptr %.0.i30, i64 %i.j ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !26
  %i.bp = zext i8 %i.bo to i32                    ; 11 uses
  %i.bq = getelementptr inbounds i8, ptr %.0.i30, i64 %i.k ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26
  %i.bs = zext i8 %i.br to i32                    ; 11 uses
  %i.bt = getelementptr inbounds i8, ptr %.0.i30, i64 %i.l ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  %i.bv = zext i8 %i.bu to i32                    ; 10 uses
  %i.bw = getelementptr inbounds i8, ptr %.0.i30, i64 %i.m ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !26
  %i.by = zext i8 %i.bx to i32                    ; 9 uses
  %i.bz = getelementptr inbounds i8, ptr %.0.i30, i64 %i.n
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26
  %i.cb = zext i8 %i.ca to i32                    ; 7 uses
  %reass.sub = sub nsw i32 %i.bg, %i.z
  %i.cc = add nsw i32 %reass.sub, 1
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %reass.sub31 = sub nsw i32 %i.bj, %i.z
  %i.ce = add nsw i32 %reass.sub31, 1
  %i.cf = icmp ult i32 %i.ce, 3
  br i1 %i.cf, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %reass.sub32 = sub nsw i32 %i.bm, %i.z
  %i.cg = add nsw i32 %reass.sub32, 1
  %i.ch = icmp ult i32 %i.cg, 3
  br i1 %i.ch, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %reass.sub33 = sub nsw i32 %i.bp, %i.z
  %i.ci = add nsw i32 %reass.sub33, 1
  %i.cj = icmp ult i32 %i.ci, 3
  br i1 %i.cj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %reass.sub34 = sub nsw i32 %i.bs, %i.ab
  %i.ck = add nsw i32 %reass.sub34, 1
  %i.cl = icmp ult i32 %i.ck, 3
  br i1 %i.cl, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %reass.sub35 = sub nsw i32 %i.bv, %i.ab
  %i.cm = add nsw i32 %reass.sub35, 1
  %i.cn = icmp ult i32 %i.cm, 3
  br i1 %i.cn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %reass.sub36 = sub nsw i32 %i.by, %i.ab
  %i.co = add nsw i32 %reass.sub36, 1
  %i.cp = icmp ult i32 %i.co, 3
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %reass.sub37 = sub nsw i32 %i.cb, %i.ab
  %i.cq = add nsw i32 %reass.sub37, 1
  %i.cr = icmp ult i32 %i.cq, 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %or.cond.i = phi i1 [ %i.cr, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ]
  %i.cs = add nuw nsw i32 %i.q, 1
  %i.ct = sub nsw i32 %i.cs, %i.z
  %i.cu = icmp ult i32 %i.ct, 3
  br i1 %i.cu, label %bb.r, label %.thread16

bb.r:                                             ; preds = %bb.q
  %i.cv = add nuw nsw i32 %i.t, 1
  %i.cw = sub nsw i32 %i.cv, %i.z
  %i.cx = icmp ult i32 %i.cw, 3
  %5 = or i32 %i.as, %i.aq
  %i.cy = icmp samesign ult i32 %5, 2
  %or.cond18 = and i1 %i.cx, %i.cy
  br i1 %or.cond18, label %bb.s, label %.thread16

bb.s:                                             ; preds = %bb.r
  %reass.sub38 = sub nsw i32 %i.ah, %i.ab
  %i.cz = add nsw i32 %reass.sub38, 1
  %i.da = icmp ult i32 %i.cz, 3
  br i1 %i.da, label %bb.t, label %.thread16

bb.t:                                             ; preds = %bb.s
  %reass.sub39 = sub nsw i32 %i.ak, %i.ab
  %i.db = add nsw i32 %reass.sub39, 1
  %i.dc = icmp ult i32 %i.db, 3                   ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %i.dc, i1 false
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dd = mul nuw nsw i32 %i.bg, 3
  %i.de = shl nuw nsw i32 %i.bg, 2
  %i.df = mul nuw nsw i32 %i.bg, 5
  %i.dg = mul nuw nsw i32 %i.bg, 6
  %i.dh = mul nuw nsw i32 %i.bg, 7
  %i.di = shl nuw nsw i32 %i.bj, 1
  %i.dj = add nuw nsw i32 %i.ab, %i.z
  %i.dk = add nuw nsw i32 %i.dj, 8
  %i.dl = add nuw nsw i32 %i.dk, %i.q
  %i.dm = add nuw nsw i32 %i.dl, %i.t
  %i.dn = add nuw nsw i32 %i.dm, %i.w
  %i.do = add nuw nsw i32 %i.dn, %i.dh
  %i.dp = add nuw nsw i32 %i.do, %i.di
  %i.dq = add nuw nsw i32 %i.dp, %i.bm
  %i.dr = add nuw nsw i32 %i.dq, %i.bp
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = trunc nuw i32 %i.ds to i8
  store i8 %i.dt, ptr %i.bh, align 1, !tbaa !26
  %i.du = shl nuw nsw i32 %i.bm, 1
  %i.dv = add nuw nsw i32 %i.q, 8                 ; 2 uses
  %i.dw = add nuw nsw i32 %i.dv, %i.t             ; 2 uses
  %i.dx = add nuw nsw i32 %i.dw, %i.w             ; 2 uses
  %i.dy = add nuw nsw i32 %i.dx, %i.z             ; 2 uses
  %i.dz = add nuw nsw i32 %i.dy, %i.ab            ; 2 uses
  %i.ea = add nuw nsw i32 %i.dz, %i.ae            ; 3 uses
  %i.eb = add nuw nsw i32 %i.ea, %i.bj
  %i.ec = add nuw nsw i32 %i.eb, %i.dg
  %i.ed = add nuw nsw i32 %i.ec, %i.du
  %i.ee = add nuw nsw i32 %i.ed, %i.bp
  %i.ef = lshr i32 %i.ee, 4
  %i.eg = trunc nuw i32 %i.ef to i8
  store i8 %i.eg, ptr %i.bk, align 1, !tbaa !26
  %i.eh = shl nuw nsw i32 %i.bp, 1
  %i.ei = add nuw nsw i32 %i.ea, %i.ah            ; 2 uses
  %i.ej = add nuw nsw i32 %i.ei, %i.bj
  %i.ek = add nuw nsw i32 %i.ej, %i.df
  %i.el = add nuw nsw i32 %i.ek, %i.bm
  %i.em = add nuw nsw i32 %i.el, %i.eh
  %i.en = lshr i32 %i.em, 4
  %i.eo = trunc nuw i32 %i.en to i8
  store i8 %i.eo, ptr %i.bn, align 1, !tbaa !26
  %i.ep = shl nuw nsw i32 %i.q, 1
  %i.eq = add nuw nsw i32 %i.ep, 8
  %i.er = add nuw nsw i32 %i.eq, %i.t
  %i.es = add nuw nsw i32 %i.er, %i.w
  %i.et = add nuw nsw i32 %i.es, %i.z
  %i.eu = add nuw nsw i32 %i.et, %i.ab
  %i.ev = add nuw nsw i32 %i.eu, %i.ae
  %i.ew = add nuw nsw i32 %i.ev, %i.ah
  %i.ex = add nuw nsw i32 %i.ew, %i.ak
  %i.ey = add nuw nsw i32 %i.ex, %i.bj
  %i.ez = add nuw nsw i32 %i.ey, %i.de
  %i.fa = add nuw nsw i32 %i.ez, %i.bm
  %i.fb = add nuw nsw i32 %i.fa, %i.bp
  %i.fc = lshr i32 %i.fb, 4
  %i.fd = trunc nuw i32 %i.fc to i8
  store i8 %i.fd, ptr %i.o, align 1, !tbaa !26
  %i.fe = shl nuw nsw i32 %i.t, 1
  %i.ff = add nuw nsw i32 %i.dv, %i.fe
  %i.fg = add nuw nsw i32 %i.ff, %i.w
  %i.fh = add nuw nsw i32 %i.fg, %i.z
  %i.fi = add nuw nsw i32 %i.fh, %i.ab
  %i.fj = add nuw nsw i32 %i.fi, %i.ae
  %i.fk = add nuw nsw i32 %i.fj, %i.ah
  %i.fl = add nuw nsw i32 %i.fk, %i.ak
  %i.fm = add nuw nsw i32 %i.fl, %i.bj
  %i.fn = add nuw nsw i32 %i.fm, %i.dd
  %i.fo = add nuw nsw i32 %i.fn, %i.bm
  %i.fp = add nuw nsw i32 %i.fo, %i.bp
  %i.fq = add nuw nsw i32 %i.fp, %i.bs
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = trunc nuw i32 %i.fr to i8
  store i8 %i.fs, ptr %i.r, align 1, !tbaa !26
  %reass.add27 = add nuw nsw i32 %i.bg, %i.w
  %reass.mul28 = shl nuw nsw i32 %reass.add27, 1
  %i.ft = add nuw nsw i32 %i.dw, %i.z
  %i.fu = add nuw nsw i32 %i.ft, %i.ab
  %i.fv = add nuw nsw i32 %i.fu, %i.ae
  %i.fw = add nuw nsw i32 %i.fv, %i.ah
  %i.fx = add nuw nsw i32 %i.fw, %i.ak
  %i.fy = add nuw nsw i32 %i.fx, %i.bj
  %i.fz = add nuw nsw i32 %i.fy, %i.bm
  %i.ga = add nuw nsw i32 %i.fz, %reass.mul28
  %i.gb = add nuw nsw i32 %i.ga, %i.bp
  %i.gc = add nuw nsw i32 %i.gb, %i.bs
  %i.gd = add nuw nsw i32 %i.gc, %i.bv
  %i.ge = lshr i32 %i.gd, 4
  %i.gf = trunc nuw i32 %i.ge to i8
  store i8 %i.gf, ptr %i.u, align 1, !tbaa !26
  %i.gg = shl nuw nsw i32 %i.z, 1
  %i.gh = add nuw nsw i32 %i.dx, %i.gg
  %i.gi = add nuw nsw i32 %i.gh, %i.ab
  %i.gj = add nuw nsw i32 %i.gi, %i.ae
  %i.gk = add nuw nsw i32 %i.gj, %i.ah
  %i.gl = add nuw nsw i32 %i.gk, %i.ak
  %i.gm = add nuw nsw i32 %i.gl, %i.bg
  %i.gn = add nuw nsw i32 %i.gm, %i.bj
  %i.go = add nuw nsw i32 %i.gn, %i.bm
  %i.gp = add nuw nsw i32 %i.go, %i.bp
  %i.gq = add nuw nsw i32 %i.gp, %i.bs
  %i.gr = add nuw nsw i32 %i.gq, %i.bv
  %i.gs = add nuw nsw i32 %i.gr, %i.by
  %i.gt = lshr i32 %i.gs, 4
  %i.gu = trunc nuw i32 %i.gt to i8
  store i8 %i.gu, ptr %i.x, align 1, !tbaa !26
  %i.gv = shl nuw nsw i32 %i.ab, 1
  %i.gw = add nuw nsw i32 %i.dy, %i.gv
  %i.gx = add nuw nsw i32 %i.gw, %i.ae
  %i.gy = add nuw nsw i32 %i.gx, %i.ah
  %i.gz = add nuw nsw i32 %i.gy, %i.ak
  %i.ha = add nuw nsw i32 %i.gz, %i.bj
  %i.hb = add nuw nsw i32 %i.ha, %i.bm
  %i.hc = add nuw nsw i32 %i.hb, %i.bp
  %i.hd = add nuw nsw i32 %i.hc, %i.bs
  %i.he = add nuw nsw i32 %i.hd, %i.bv
  %i.hf = add nuw nsw i32 %i.he, %i.by
  %i.hg = add nuw nsw i32 %i.hf, %i.cb
  %i.hh = lshr i32 %i.hg, 4
  %i.hi = trunc nuw i32 %i.hh to i8
  store i8 %i.hi, ptr %.0.i30, align 1, !tbaa !26
  %i.hj = shl nuw nsw i32 %i.ae, 1
  %reass.add617.i = shl nuw nsw i32 %i.cb, 1      ; 4 uses
  %i.hk = add nuw nsw i32 %i.dz, %i.hj
  %i.hl = add nuw nsw i32 %i.hk, %i.ah
  %i.hm = add nuw nsw i32 %i.hl, %i.ak
  %i.hn = add nuw nsw i32 %i.hm, %i.bm
  %i.ho = add nuw nsw i32 %i.hn, %i.bp
  %i.hp = add nuw nsw i32 %i.ho, %i.bs
  %i.hq = add nuw nsw i32 %i.hp, %i.bv
  %i.hr = add nuw nsw i32 %i.hq, %i.by
  %i.hs = add nuw nsw i32 %i.hr, %reass.add617.i
  %i.ht = lshr i32 %i.hs, 4
  %i.hu = trunc nuw i32 %i.ht to i8
  store i8 %i.hu, ptr %i.ac, align 1, !tbaa !26
  %i.hv = shl nuw nsw i32 %i.ah, 1
  %i.hw = add nuw nsw i32 %i.ea, %i.hv
  %i.hx = add nuw nsw i32 %i.hw, %i.ak
  %i.hy = add nuw nsw i32 %i.hx, %i.bp
  %i.hz = add nuw nsw i32 %i.hy, %i.bs
  %i.ia = add nuw nsw i32 %i.hz, %i.bv
  %i.ib = add nuw nsw i32 %i.ia, %i.by
  %i.ic = add nuw nsw i32 %i.ib, %i.cb
  %i.id = add nuw nsw i32 %i.ic, %reass.add617.i
  %i.ie = lshr i32 %i.id, 4
  %i.if = trunc nuw i32 %i.ie to i8
  store i8 %i.if, ptr %i.af, align 1, !tbaa !26
  %i.ig = shl nuw nsw i32 %i.ak, 1
  %i.ih = shl nuw nsw i32 %i.cb, 2                ; 4 uses
  %i.ii = add nuw nsw i32 %i.ei, %i.ig
  %i.ij = add nuw nsw i32 %i.ii, %i.bs
  %i.ik = add nuw nsw i32 %i.ij, %i.bv
  %i.il = add nuw nsw i32 %i.ik, %i.by
  %i.im = add nuw nsw i32 %i.il, %i.ih
  %i.in = lshr i32 %i.im, 4
  %i.io = trunc nuw i32 %i.in to i8
  store i8 %i.io, ptr %i.ai, align 1, !tbaa !26
  %i.ip = shl nuw nsw i32 %i.bs, 1
  %i.iq = add nuw nsw i32 %i.t, 8
  %i.ir = add nuw nsw i32 %i.iq, %i.w
  %i.is = add nuw nsw i32 %i.ir, %i.z
  %i.it = add nuw nsw i32 %i.is, %i.ab
  %i.iu = add nuw nsw i32 %i.it, %i.ae
  %i.iv = add nuw nsw i32 %i.iu, %i.ah
  %i.iw = add nuw nsw i32 %i.iv, %i.ak
  %i.ix = add nuw nsw i32 %i.iw, %i.ip
  %i.iy = add nuw nsw i32 %i.ix, %i.bv
  %i.iz = add nuw nsw i32 %i.iy, %i.by
  %i.ja = add nuw nsw i32 %i.iz, %i.cb
  %i.jb = add nuw nsw i32 %i.ja, %i.ih
  %i.jc = lshr i32 %i.jb, 4
  %i.jd = trunc nuw i32 %i.jc to i8
  store i8 %i.jd, ptr %i.bq, align 1, !tbaa !26
  %i.je = shl nuw nsw i32 %i.bv, 1
  %i.jf = add nuw nsw i32 %i.w, 8
  %i.jg = add nuw nsw i32 %i.jf, %i.z
  %i.jh = add nuw nsw i32 %i.jg, %i.ab
  %i.ji = add nuw nsw i32 %i.jh, %i.ae
  %i.jj = add nuw nsw i32 %i.ji, %i.ah
  %i.jk = add nuw nsw i32 %i.jj, %i.ak
  %i.jl = add nuw nsw i32 %i.jk, %i.bs
  %i.jm = add nuw nsw i32 %i.jl, %i.je
  %i.jn = add nuw nsw i32 %i.jm, %i.by
  %i.jo = add nuw nsw i32 %i.jn, %i.ih
  %i.jp = add nuw nsw i32 %i.jo, %reass.add617.i
  %i.jq = lshr i32 %i.jp, 4
  %i.jr = trunc nuw i32 %i.jq to i8
  store i8 %i.jr, ptr %i.bt, align 1, !tbaa !26
  %i.js = shl nuw nsw i32 %i.by, 1
  %i.jt = add nuw nsw i32 %i.z, 8
  %i.ju = add nuw nsw i32 %i.jt, %i.ab
  %i.jv = add nuw nsw i32 %i.ju, %i.ae
  %i.jw = add nuw nsw i32 %i.jv, %i.ah
  %i.jx = add nuw nsw i32 %i.jw, %i.ak
  %i.jy = add nuw nsw i32 %i.jx, %i.bs
  %i.jz = add nuw nsw i32 %i.jy, %i.bv
  %i.ka = add nuw nsw i32 %i.jz, %i.js
  %i.kb = add nuw nsw i32 %i.ka, %i.cb
  %i.kc = add nuw nsw i32 %i.kb, %i.ih
  %i.kd = add nuw nsw i32 %i.kc, %reass.add617.i
  %i.ke = lshr i32 %i.kd, 4
  %i.kf = trunc nuw i32 %i.ke to i8
  store i8 %i.kf, ptr %i.bw, align 1, !tbaa !26
  br label %.critedge.i

bb.v:                                             ; preds = %bb.t
  br i1 %i.dc, label %bb.w, label %.thread16

bb.w:                                             ; preds = %bb.v
  %i.kg = mul nuw nsw i32 %i.q, 3
  %i.kh = shl nuw nsw i32 %i.t, 1
  %i.ki = add nuw nsw i32 %i.kg, 4
  %i.kj = add nuw nsw i32 %i.ki, %i.kh
  %i.kk = add nuw nsw i32 %i.kj, %i.w
  %i.kl = add nuw nsw i32 %i.kk, %i.z
  %i.km = add nuw nsw i32 %i.kl, %i.ab
  %i.kn = lshr i32 %i.km, 3
  %i.ko = trunc nuw i32 %i.kn to i8
  store i8 %i.ko, ptr %i.r, align 1, !tbaa !26
  %i.kp = add nuw nsw i32 %i.w, %i.q
  %i.kq = shl nuw nsw i32 %i.kp, 1
  %i.kr = add nuw nsw i32 %i.z, 4                 ; 3 uses
  %i.ks = add nuw nsw i32 %i.kr, %i.t             ; 2 uses
  %i.kt = add nuw nsw i32 %i.ks, %i.kq
  %i.ku = add nuw nsw i32 %i.kt, %i.ab
  %i.kv = add nuw nsw i32 %i.ku, %i.ae
  %i.kw = lshr i32 %i.kv, 3
  %i.kx = trunc nuw i32 %i.kw to i8
  store i8 %i.kx, ptr %i.u, align 1, !tbaa !26
  %i.ky = shl nuw nsw i32 %i.z, 1
  %i.kz = add nuw nsw i32 %i.w, 4
  %i.la = add nuw nsw i32 %i.kz, %i.q
  %i.lb = add nuw nsw i32 %i.la, %i.t
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %i.ld = add nuw nsw i32 %i.lc, %i.ab
  %i.le = add nuw nsw i32 %i.ld, %i.ae
  %i.lf = add nuw nsw i32 %i.le, %i.ah
  %i.lg = lshr i32 %i.lf, 3
  %i.lh = trunc nuw i32 %i.lg to i8
  store i8 %i.lh, ptr %i.x, align 1, !tbaa !26
  %i.li = shl nuw nsw i32 %i.ab, 1
  %i.lj = add nuw nsw i32 %i.ks, %i.w
  %i.lk = add nuw nsw i32 %i.lj, %i.li
  %i.ll = add nuw nsw i32 %i.lk, %i.ae
  %i.lm = add nuw nsw i32 %i.ll, %i.ah
  %i.ln = add nuw nsw i32 %i.lm, %i.ak
  %i.lo = lshr i32 %i.ln, 3
  %i.lp = trunc nuw i32 %i.lo to i8
  store i8 %i.lp, ptr %.0.i30, align 1, !tbaa !26
  %reass.add = add nuw nsw i32 %i.ak, %i.ae
  %reass.mul = shl nuw nsw i32 %reass.add, 1
  %i.lq = add nuw nsw i32 %i.kr, %i.w
  %i.lr = add nuw nsw i32 %i.lq, %i.ab
  %i.ls = add nuw nsw i32 %i.lr, %i.ah
  %i.lt = add nuw nsw i32 %i.ls, %reass.mul
  %i.lu = lshr i32 %i.lt, 3
  %i.lv = trunc nuw i32 %i.lu to i8
  store i8 %i.lv, ptr %i.ac, align 1, !tbaa !26
  %i.lw = add nuw nsw i32 %i.ak, %i.ah
  %i.lx = shl nuw nsw i32 %i.lw, 1
  %i.ly = add nuw nsw i32 %i.kr, %i.ab
  %i.lz = add nuw nsw i32 %i.ly, %i.ae
  %i.ma = add nuw nsw i32 %i.lz, %i.ak
  %i.mb = add nuw nsw i32 %i.ma, %i.lx
  %i.mc = lshr i32 %i.mb, 3
  %i.md = trunc nuw i32 %i.mc to i8
  store i8 %i.md, ptr %i.af, align 1, !tbaa !26
  br label %.critedge.i

.thread16:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.v
  %i.me = icmp sgt i32 %i.aq, %4
  %6 = icmp sgt i32 %i.as, %4
  %or.cond19 = or i1 %i.me, %6
  br i1 %or.cond19, label %.critedge631.i, label %bb.x

.critedge631.i:                                   ; preds = %.thread16
  %i.mf = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 -128)
  %.0.i9 = tail call i32 @llvm.smin.i32(i32 %i.mf, i32 127)
  %i.mg = sub nsw i32 %i.ab, %i.z
  %i.mh = mul nsw i32 %i.mg, 3
  %i.mi = add nsw i32 %.0.i9, %i.mh
  %i.mj = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 -128) ; 2 uses
  %i.mk = tail call i32 @llvm.smin.i32(i32 %i.mj, i32 123)
  %i.ml = add nsw i32 %i.mk, 4
  %i.mm = ashr i32 %i.ml, 3
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.mj, i32 124)
  %i.mo = add nsw i32 %i.mn, 3
  %i.mp = ashr i32 %i.mo, 3
  %i.mq = add nsw i32 %i.mp, %i.z
  %i.mr = tail call i32 @llvm.smax.i32(i32 %i.mq, i32 0)
  %.0.i641.i24 = tail call i32 @llvm.umin.i32(i32 %i.mr, i32 255)
  %.0.i641.i = trunc nuw i32 %.0.i641.i24 to i8
  store i8 %.0.i641.i, ptr %i.x, align 1, !tbaa !26
  %i.ms = sub nsw i32 %i.ab, %i.mm
  %i.mt = tail call i32 @llvm.smax.i32(i32 %i.ms, i32 0)
  %.0.i639.i25 = tail call i32 @llvm.umin.i32(i32 %i.mt, i32 255)
  %.0.i639.i = trunc nuw i32 %.0.i639.i25 to i8
  store i8 %.0.i639.i, ptr %.0.i30, align 1, !tbaa !26
  br label %.critedge.i

bb.x:                                             ; preds = %.thread16
  %i.mu = sub nsw i32 %i.ab, %i.z                 ; 2 uses
  %i.mv = mul nsw i32 %i.mu, 3                    ; 2 uses
  %i.mw = add nsw i32 %i.mv, 128
  %.not.i10 = icmp ult i32 %i.mw, 256
  %i.mx = icmp sgt i32 %i.mu, -1
  %i.my = select i1 %i.mx, i32 127, i32 -128
  %.0.i11 = select i1 %.not.i10, i32 %i.mv, i32 %i.my ; 2 uses
  %i.mz = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 123)
  %i.na = add nsw i32 %i.mz, 4
  %i.nb = ashr i32 %i.na, 3                       ; 2 uses
  %i.nc = tail call i32 @llvm.smin.i32(i32 %.0.i11, i32 124)
  %i.nd = add nsw i32 %i.nc, 3
  %i.ne = ashr i32 %i.nd, 3
  %i.nf = add nsw i32 %i.ne, %i.z
  %i.ng = tail call i32 @llvm.smax.i32(i32 %i.nf, i32 0)
  %.0.i637.i20 = tail call i32 @llvm.umin.i32(i32 %i.ng, i32 255)
  %.0.i637.i = trunc nuw i32 %.0.i637.i20 to i8
  store i8 %.0.i637.i, ptr %i.x, align 1, !tbaa !26
  %i.nh = sub nsw i32 %i.ab, %i.nb
  %i.ni = tail call i32 @llvm.smax.i32(i32 %i.nh, i32 0)
  %.0.i635.i21 = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 255)
  %.0.i635.i = trunc nuw i32 %.0.i635.i21 to i8
  store i8 %.0.i635.i, ptr %.0.i30, align 1, !tbaa !26
  %i.nj = add nsw i32 %i.nb, 1
  %i.nk = ashr i32 %i.nj, 1                       ; 2 uses
  %i.nl = add nsw i32 %i.nk, %i.w
  %i.nm = tail call i32 @llvm.smax.i32(i32 %i.nl, i32 0)
  %.0.i633.i22 = tail call i32 @llvm.umin.i32(i32 %i.nm, i32 255)
  %.0.i633.i = trunc nuw i32 %.0.i633.i22 to i8
  store i8 %.0.i633.i, ptr %i.u, align 1, !tbaa !26
  %i.nn = sub nsw i32 %i.ae, %i.nk
  %i.no = tail call i32 @llvm.smax.i32(i32 %i.nn, i32 0)
  %.0.i.i23 = tail call i32 @llvm.umin.i32(i32 %i.no, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i.i23 to i8
  store i8 %.0.i.i, ptr %i.ac, align 1, !tbaa !26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.x, %.critedge631.i, %bb.w, %bb.u, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.np = add nuw nsw i32 %.0551.i29, 1           ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i30, i64 1
  %exitcond.not = icmp eq i32 %i.np, 8
  br i1 %exitcond.not, label %loop_filter.exit, label %bb.b, !llvm.loop !0

loop_filter.exit:                                 ; preds = %.critedge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_16_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  tail call void @loop_filter_h_16_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.a = shl nsw i64 %1, 3
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  tail call void @loop_filter_h_16_8_c(ptr noundef %i.b, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_16_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  tail call void @loop_filter_v_16_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @loop_filter_v_16_8_c(ptr noundef nonnull %i.a, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_44_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_4_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_44_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_v_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %3, 8
  %i.g = ashr i32 %4, 8
  tail call void @loop_filter_v_4_8_c(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_48_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_8_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_48_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_v_4_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %3, 8
  %i.g = ashr i32 %4, 8
  tail call void @loop_filter_v_8_8_c(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_84_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_8_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_4_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_v_84_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_v_8_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %3, 8
  %i.g = ashr i32 %4, 8
  tail call void @loop_filter_v_4_8_c(ptr noundef nonnull %i.d, i64 noundef %1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @loop_filter_h_88_16_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i32 %2, 255
  %i.b = and i32 %3, 255
  %i.c = and i32 %4, 255
  tail call void @loop_filter_h_8_8_c(ptr noundef %0, i64 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c)
  %i.d = shl nsw i64 %1, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = ashr i32 %2, 8
  %i.g = ashr i32 %3, 8
  %i.h = ashr i32 %4, 8
  tail call void @loop_filter_h_8_8_c(ptr noundef %i.e, i64 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h)
end_hunk_0
