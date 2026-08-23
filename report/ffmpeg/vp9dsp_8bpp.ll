Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_8bpp?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@dc_32x32_c:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %i.l, ptr %i.dv, align 4, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %i.l, ptr %i.dw, align 4, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store i32 %i.l, ptr %i.dx, align 4, !tbaa !11
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 %1 ; 6 uses
  store i32 %i.l, ptr %i.dy, align 4, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store <4 x i32> %i.n, ptr %i.dz, align 4, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  store i32 %i.l, ptr %i.ea, align 4, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i32 %i.l, ptr %i.eb, align 4, !tbaa !11
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  store i32 %i.l, ptr %i.ec, align 4, !tbaa !11
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 %1 ; 6 uses
  store i32 %i.l, ptr %i.ed, align 4, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store <4 x i32> %i.n, ptr %i.ee, align 4, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  store i32 %i.l, ptr %i.ef, align 4, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i32 %i.l, ptr %i.eg, align 4, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  store i32 %i.l, ptr %i.eh, align 4, !tbaa !11
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 %1 ; 5 uses
  store i32 %i.l, ptr %i.ei, align 4, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store <4 x i32> %i.n, ptr %i.ej, align 4, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  store i32 %i.l, ptr %i.ek, align 4, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i32 %i.l, ptr %i.el, align 4, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  store i32 %i.l, ptr %i.em, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @diag_downleft_32x32_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
vector.ph:
  %i.a = alloca [31 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.pre = load i8, ptr %3, align 1, !tbaa !11
  %vector.recur.init = insertelement <8 x i8> poison, i8 %.pre, i64 7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  %wide.load = load <8 x i8>, ptr %i.b, align 1, !tbaa !11 ; 3 uses
  %i.c = shufflevector <8 x i8> %vector.recur.init, <8 x i8> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.d = zext <8 x i8> %i.c to <8 x i16>
  %i.e = zext <8 x i8> %wide.load to <8 x i16>
  %i.f = shl nuw nsw <8 x i16> %i.e, splat (i16 1)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %wide.load34 = load <8 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.h = zext <8 x i8> %wide.load34 to <8 x i16>
  %i.i = add nuw nsw <8 x i16> %i.d, splat (i16 2)
  %i.j = add nuw nsw <8 x i16> %i.i, %i.f
  %i.k = add nuw nsw <8 x i16> %i.j, %i.h
  %i.l = lshr <8 x i16> %i.k, splat (i16 2)
  %i.m = trunc nuw <8 x i16> %i.l to <8 x i8>
  store <8 x i8> %i.m, ptr %i.a, align 16, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9
  %wide.load.1 = load <8 x i8>, ptr %i.n, align 1, !tbaa !11 ; 3 uses
  %i.o = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load.1, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.p = zext <8 x i8> %i.o to <8 x i16>
  %i.q = zext <8 x i8> %wide.load.1 to <8 x i16>
  %i.r = shl nuw nsw <8 x i16> %i.q, splat (i16 1)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 10
  %wide.load34.1 = load <8 x i8>, ptr %i.s, align 1, !tbaa !11
  %i.t = zext <8 x i8> %wide.load34.1 to <8 x i16>
  %i.u = add nuw nsw <8 x i16> %i.p, splat (i16 2)
  %i.v = add nuw nsw <8 x i16> %i.u, %i.r
  %i.w = add nuw nsw <8 x i16> %i.v, %i.t
  %i.x = lshr <8 x i16> %i.w, splat (i16 2)
  %i.y = trunc nuw <8 x i16> %i.x to <8 x i8>
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <8 x i8> %i.y, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 17
  %wide.load.2 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !11 ; 3 uses
  %i.ab = shufflevector <8 x i8> %wide.load.1, <8 x i8> %wide.load.2, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ac = zext <8 x i8> %i.ab to <8 x i16>
  %i.ad = zext <8 x i8> %wide.load.2 to <8 x i16>
  %i.ae = shl nuw nsw <8 x i16> %i.ad, splat (i16 1)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 18
  %wide.load34.2 = load <8 x i8>, ptr %i.af, align 1, !tbaa !11
  %i.ag = zext <8 x i8> %wide.load34.2 to <8 x i16>
  %i.ah = add nuw nsw <8 x i16> %i.ac, splat (i16 2)
  %i.ai = add nuw nsw <8 x i16> %i.ah, %i.ae
  %i.aj = add nuw nsw <8 x i16> %i.ai, %i.ag
  %i.ak = lshr <8 x i16> %i.aj, splat (i16 2)
  %i.al = trunc nuw <8 x i16> %i.ak to <8 x i8>
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i8> %i.al, ptr %i.am, align 16, !tbaa !11
  %vector.recur.extract = extractelement <8 x i8> %wide.load.2, i64 7
  %i.an = zext i8 %vector.recur.extract to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11  ; 2 uses
  %i.aq = zext i8 %i.ap to i16
  %i.ar = shl nuw nsw i16 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = zext i8 %i.at to i16
  %i.av = add nuw nsw i16 %i.an, 2
  %i.aw = add nuw nsw i16 %i.av, %i.ar
  %i.ax = add nuw nsw i16 %i.aw, %i.au
  %i.ay = lshr i16 %i.ax, 2
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.az, ptr %i.ba, align 8, !tbaa !11
  %i.bb = zext i8 %i.ap to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11  ; 2 uses
  %i.be = zext i8 %i.bd to i16
  %i.bf = shl nuw nsw i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = zext i8 %i.bh to i16
  %i.bj = add nuw nsw i16 %i.bb, 2
  %i.bk = add nuw nsw i16 %i.bj, %i.bf
  %i.bl = add nuw nsw i16 %i.bk, %i.bi
  %i.bm = lshr i16 %i.bl, 2
  %i.bn = trunc nuw i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !11
  %i.bp = zext i8 %i.bd to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11  ; 2 uses
  %i.bs = zext i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = zext i8 %i.bv to i16
  %i.bx = add nuw nsw i16 %i.bp, 2
  %i.by = add nuw nsw i16 %i.bx, %i.bt
  %i.bz = add nuw nsw i16 %i.by, %i.bw
  %i.ca = lshr i16 %i.bz, 2
  %i.cb = trunc nuw i16 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 %i.cb, ptr %i.cc, align 2, !tbaa !11
  %i.cd = zext i8 %i.br to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11  ; 2 uses
  %i.cg = zext i8 %i.cf to i16
  %i.ch = shl nuw nsw i16 %i.cg, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = zext i8 %i.cj to i16
  %i.cl = add nuw nsw i16 %i.cd, 2
  %i.cm = add nuw nsw i16 %i.cl, %i.ch
  %i.cn = add nuw nsw i16 %i.cm, %i.ck
  %i.co = lshr i16 %i.cn, 2
  %i.cp = trunc nuw i16 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !11
  %i.cr = zext i8 %i.cf to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11  ; 2 uses
  %i.cu = zext i8 %i.ct to i16
  %i.cv = shl nuw nsw i16 %i.cu, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = zext i8 %i.cx to i16
  %i.cz = add nuw nsw i16 %i.cr, 2
  %i.da = add nuw nsw i16 %i.cz, %i.cv
  %i.db = add nuw nsw i16 %i.da, %i.cy
  %i.dc = lshr i16 %i.db, 2
  %i.dd = trunc nuw i16 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 %i.dd, ptr %i.de, align 4, !tbaa !11
  %i.df = zext i8 %i.ct to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = zext i8 %i.dh to i16
  %i.dj = shl nuw nsw i16 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !11
  %i.dm = zext i8 %i.dl to i16
  %i.dn = add nuw nsw i16 %i.df, 2
  %i.do = add nuw nsw i16 %i.dn, %i.dj
  %i.dp = add nuw nsw i16 %i.do, %i.dm
  %i.dq = lshr i16 %i.dp, 2
  %i.dr = trunc nuw i16 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !11
  %i.dv = zext i8 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !11
  %i.dy = zext i8 %i.dx to i16
  %i.dz = mul nuw nsw i16 %i.dy, 3
  %i.ea = add nuw nsw i16 %i.dv, 2
  %i.eb = add nuw nsw i16 %i.ea, %i.dz
  %i.ec = lshr i16 %i.eb, 2
  %i.ed = trunc nuw i16 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i8 %i.ed, ptr %i.ee, align 2, !tbaa !11
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %vector.ph
  %indvars.iv30 = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next31.1, %bb.a ] ; 8 uses
  %i.ef = mul nsw i64 %1, %indvars.iv30
  %i.eg = getelementptr inbounds i8, ptr %0, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv30
  %i.ei = sub nuw nsw i64 31, %indvars.iv30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, ptr noundef nonnull align 2 dereferenceable(1) %i.eh, i64 %i.ei, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %i.eg, i64 31
  %5 = sub nsw i64 0, %indvars.iv30
  %i.ej = getelementptr inbounds i8, ptr %4, i64 %5
  %i.ek = load i8, ptr %i.dw, align 1, !tbaa !11
  %indvars.iv.next31 = or disjoint i64 %indvars.iv30, 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ej, i8 %i.ek, i64 %indvars.iv.next31, i1 false)
  %i.el = mul nsw i64 %1, %indvars.iv.next31
  %i.em = getelementptr inbounds i8, ptr %0, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next31
  %i.eo = sub nuw nsw i64 30, %indvars.iv30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr nonnull align 1 %i.en, i64 %i.eo, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 31
  %i.eq = xor i64 %indvars.iv30, -1
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 %i.eq
  %i.es = load i8, ptr %i.dw, align 1, !tbaa !11
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv30, 2 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.er, i8 %i.es, i64 %indvars.iv.next31.1, i1 false)
  %exitcond33.not.1 = icmp eq i64 %indvars.iv.next31.1, 32
  br i1 %exitcond33.not.1, label %bb.b, label %bb.a, !llvm.loop !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @diag_downright_32x32_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
vector.ph:
  %.pre43 = load i8, ptr %3, align 1, !tbaa !11   ; 2 uses
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.pre45 = load i8, ptr %.phi.trans.insert44, align 1, !tbaa !11 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 18
  %wide.load52.2 = load <8 x i8>, ptr %i.a, align 1, !tbaa !11 ; 4 uses
  %vector.recur.extract = extractelement <8 x i8> %wide.load52.2, i64 7 ; 2 uses
  %vector.recur.extract53 = extractelement <8 x i8> %wide.load52.2, i64 6
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 18
  %wide.load.2 = load <8 x i8>, ptr %i.b, align 1, !tbaa !11 ; 4 uses
  %vector.recur.extract54 = extractelement <8 x i8> %wide.load.2, i64 7 ; 2 uses
  %vector.recur.extract55 = extractelement <8 x i8> %wide.load.2, i64 6
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2
  %wide.load52 = load <8 x i8>, ptr %i.c, align 1, !tbaa !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10
  %wide.load52.1 = load <8 x i8>, ptr %i.d, align 1, !tbaa !11 ; 3 uses
  %i.e = shufflevector <8 x i8> %wide.load52, <8 x i8> %wide.load52.1, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.f = shufflevector <8 x i8> %wide.load52.1, <8 x i8> %wide.load52.2, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.g = shufflevector <8 x i8> %i.e, <8 x i8> %i.f, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.h = zext <8 x i8> %i.g to <8 x i16>
  %i.i = add nuw nsw <8 x i16> %i.h, splat (i16 2)
  %i.j = zext <8 x i8> %i.f to <8 x i16>
  %i.k = shl nuw nsw <8 x i16> %i.j, splat (i16 1)
  %i.l = add nuw nsw <8 x i16> %i.i, %i.k
  %i.m = zext <8 x i8> %wide.load52.2 to <8 x i16>
  %i.n = add nuw nsw <8 x i16> %i.l, %i.m
  %i.o = lshr <8 x i16> %i.n, splat (i16 2)
  %i.p = trunc nuw <8 x i16> %i.o to <8 x i8>     ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !tbaa !11 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10
  %wide.load.1 = load <8 x i8>, ptr %i.r, align 1, !tbaa !11 ; 3 uses
  %i.s = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load.1, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.t = shufflevector <8 x i8> %wide.load.1, <8 x i8> %wide.load.2, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.u = shufflevector <8 x i8> %i.s, <8 x i8> %i.t, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.v = zext <8 x i8> %i.u to <8 x i16>
  %i.w = add nuw nsw <8 x i16> %i.v, splat (i16 2)
  %i.x = zext <8 x i8> %i.t to <8 x i16>
  %i.y = shl nuw nsw <8 x i16> %i.x, splat (i16 1)
  %i.z = add nuw nsw <8 x i16> %i.w, %i.y
  %i.aa = zext <8 x i8> %wide.load.2 to <8 x i16>
  %i.ab = add nuw nsw <8 x i16> %i.z, %i.aa
  %i.ac = lshr <8 x i16> %i.ab, splat (i16 2)
  %i.ad = trunc nuw <8 x i16> %i.ac to <8 x i8>   ; 24 uses
  %vector.recur.init = insertelement <8 x i8> poison, i8 %.pre45, i64 7
  %i.ae = shufflevector <8 x i8> %vector.recur.init, <8 x i8> %wide.load52, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.af = shufflevector <8 x i8> %i.ae, <8 x i8> %i.e, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ag = zext <8 x i8> %i.af to <8 x i16>
  %i.ah = add nuw nsw <8 x i16> %i.ag, splat (i16 2)
  %i.ai = zext <8 x i8> %i.e to <8 x i16>
  %i.aj = shl nuw nsw <8 x i16> %i.ai, splat (i16 1)
  %i.ak = add nuw nsw <8 x i16> %i.ah, %i.aj
  %i.al = zext <8 x i8> %wide.load52.1 to <8 x i16>
  %i.am = add nuw nsw <8 x i16> %i.ak, %i.al
  %i.an = lshr <8 x i16> %i.am, splat (i16 2)
  %i.ao = trunc nuw <8 x i16> %i.an to <8 x i8>   ; 22 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.pre42 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !11
  %vector.recur.init48 = insertelement <8 x i8> poison, i8 %.pre42, i64 7
  %i.ap = shufflevector <8 x i8> %vector.recur.init48, <8 x i8> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.aq = shufflevector <8 x i8> %i.ap, <8 x i8> %i.s, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ar = zext <8 x i8> %i.aq to <8 x i16>
  %i.as = add nuw nsw <8 x i16> %i.ar, splat (i16 2)
  %i.at = zext <8 x i8> %i.s to <8 x i16>
  %i.au = shl nuw nsw <8 x i16> %i.at, splat (i16 1)
  %i.av = add nuw nsw <8 x i16> %i.as, %i.au
  %i.aw = zext <8 x i8> %wide.load.1 to <8 x i16>
  %i.ax = add nuw nsw <8 x i16> %i.av, %i.aw
  %i.ay = lshr <8 x i16> %i.ax, splat (i16 2)
  %i.az = trunc nuw <8 x i16> %i.ay to <8 x i8>   ; 16 uses
  %vector.recur.init46 = insertelement <8 x i8> poison, i8 %.pre43, i64 7
  %i.ba = shufflevector <8 x i8> %vector.recur.init46, <8 x i8> %i.ae, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bb = zext <8 x i8> %i.ba to <8 x i16>
  %i.bc = add nuw nsw <8 x i16> %i.bb, splat (i16 2)
  %i.bd = zext <8 x i8> %i.ae to <8 x i16>
  %i.be = shl nuw nsw <8 x i16> %i.bd, splat (i16 1)
  %i.bf = add nuw nsw <8 x i16> %i.bc, %i.be
  %i.bg = zext <8 x i8> %wide.load52 to <8 x i16>
  %i.bh = add nuw nsw <8 x i16> %i.bf, %i.bg
  %i.bi = lshr <8 x i16> %i.bh, splat (i16 2)
  %i.bj = trunc nuw <8 x i16> %i.bi to <8 x i8>   ; 30 uses
  %.pre = load i8, ptr %2, align 1, !tbaa !11
  %vector.recur.init50 = insertelement <8 x i8> poison, i8 %.pre, i64 7
  %i.bk = shufflevector <8 x i8> %vector.recur.init50, <8 x i8> %i.ap, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bl = zext <8 x i8> %i.bk to <8 x i16>
  %i.bm = add nuw nsw <8 x i16> %i.bl, splat (i16 2)
  %i.bn = zext <8 x i8> %i.ap to <8 x i16>
  %i.bo = shl nuw nsw <8 x i16> %i.bn, splat (i16 1)
  %i.bp = add nuw nsw <8 x i16> %i.bm, %i.bo
  %i.bq = zext <8 x i8> %wide.load to <8 x i16>
  %i.br = add nuw nsw <8 x i16> %i.bp, %i.bq
  %i.bs = lshr <8 x i16> %i.br, splat (i16 2)
  %i.bt = trunc nuw <8 x i16> %i.bs to <8 x i8>   ; 8 uses
  %i.bu = zext i8 %vector.recur.extract55 to i16
  %i.bv = zext i8 %vector.recur.extract54 to i16
  %i.bw = shl nuw nsw i16 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11  ; 3 uses
  %i.bz = zext i8 %i.by to i16
  %i.ca = add nuw nsw i16 %i.bu, 2
  %i.cb = add nuw nsw i16 %i.ca, %i.bw
  %i.cc = add nuw nsw i16 %i.cb, %i.bz
  %i.cd = lshr i16 %i.cc, 2
  %i.ce = trunc nuw i16 %i.cd to i8               ; 25 uses
  %i.cf = zext i8 %vector.recur.extract53 to i16
  %i.cg = zext i8 %vector.recur.extract to i16
  %i.ch = shl nuw nsw i16 %i.cg, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11  ; 3 uses
  %i.ck = zext i8 %i.cj to i16
  %i.cl = add nuw nsw i16 %i.cf, 2
  %i.cm = add nuw nsw i16 %i.cl, %i.ch
  %i.cn = add nuw nsw i16 %i.cm, %i.ck
  %i.co = lshr i16 %i.cn, 2
  %i.cp = trunc nuw i16 %i.co to i8               ; 6 uses
  %i.cq = zext i8 %vector.recur.extract54 to i16
  %i.cr = zext i8 %i.by to i16
  %i.cs = shl nuw nsw i16 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !11  ; 3 uses
  %i.cv = zext i8 %i.cu to i16
  %i.cw = add nuw nsw i16 %i.cq, 2
  %i.cx = add nuw nsw i16 %i.cw, %i.cs
  %i.cy = add nuw nsw i16 %i.cx, %i.cv
  %i.cz = lshr i16 %i.cy, 2
  %i.da = trunc nuw i16 %i.cz to i8               ; 26 uses
  %i.db = zext i8 %vector.recur.extract to i16
  %i.dc = zext i8 %i.cj to i16
  %i.dd = shl nuw nsw i16 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.df = load i8, ptr %i.de, align 1, !tbaa !11  ; 3 uses
  %i.dg = zext i8 %i.df to i16
  %i.dh = add nuw nsw i16 %i.db, 2
  %i.di = add nuw nsw i16 %i.dh, %i.dd
  %i.dj = add nuw nsw i16 %i.di, %i.dg
  %i.dk = lshr i16 %i.dj, 2
  %i.dl = trunc nuw i16 %i.dk to i8               ; 5 uses
  %i.dm = zext i8 %i.by to i16
  %i.dn = zext i8 %i.cu to i16
  %i.do = shl nuw nsw i16 %i.dn, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11  ; 3 uses
  %i.dr = zext i8 %i.dq to i16
  %i.ds = add nuw nsw i16 %i.dm, 2
  %i.dt = add nuw nsw i16 %i.ds, %i.do
  %i.du = add nuw nsw i16 %i.dt, %i.dr
  %i.dv = lshr i16 %i.du, 2
  %i.dw = trunc nuw i16 %i.dv to i8               ; 27 uses
  %i.dx = zext i8 %i.cj to i16
  %i.dy = zext i8 %i.df to i16
  %i.dz = shl nuw nsw i16 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11  ; 3 uses
  %i.ec = zext i8 %i.eb to i16
  %i.ed = add nuw nsw i16 %i.dx, 2
  %i.ee = add nuw nsw i16 %i.ed, %i.dz
  %i.ef = add nuw nsw i16 %i.ee, %i.ec
  %i.eg = lshr i16 %i.ef, 2
  %i.eh = trunc nuw i16 %i.eg to i8               ; 4 uses
  %i.ei = zext i8 %i.cu to i16
  %i.ej = zext i8 %i.dq to i16
  %i.ek = shl nuw nsw i16 %i.ej, 1
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11  ; 3 uses
  %i.en = zext i8 %i.em to i16
  %i.eo = add nuw nsw i16 %i.ei, 2
  %i.ep = add nuw nsw i16 %i.eo, %i.ek
  %i.eq = add nuw nsw i16 %i.ep, %i.en
  %i.er = lshr i16 %i.eq, 2
  %i.es = trunc nuw i16 %i.er to i8               ; 28 uses
  %i.et = zext i8 %i.df to i16
  %i.eu = zext i8 %i.eb to i16
  %i.ev = shl nuw nsw i16 %i.eu, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11  ; 3 uses
  %i.ey = zext i8 %i.ex to i16
end_hunk_0
