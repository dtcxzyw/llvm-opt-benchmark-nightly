Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/me_cmp?download=true
inline.NumInlined: 20
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@hadamard8_intra8x8_c:bb.a
  %i.dy = add nsw <4 x i32> %i.du, %i.dq
  %i.dz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dy, i1 true)
  %i.ea = sub nsw <4 x i32> %i.dq, %i.du
  %i.eb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ea, i1 true)
  %i.ec = add nsw <4 x i32> %i.dw, %i.ds
  %i.ed = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ec, i1 true)
  %i.ee = sub nsw <4 x i32> %i.ds, %i.dw
  %i.ef = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ee, i1 true)
  %i.eg = add nsw <4 x i32> %i.dv, %i.dr
  %i.eh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.eg, i1 true)
  %i.ei = sub nsw <4 x i32> %i.dr, %i.dv
  %i.ej = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ei, i1 true)
  %i.ek = add nsw <4 x i32> %i.dx, %i.dt
  %i.el = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ek, i1 true)
  %i.em = sub nsw <4 x i32> %i.dt, %i.dx
  %i.en = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.em, i1 true)
  %i.eo = add <4 x i32> %i.en, %i.cz
  %i.ep = add <4 x i32> %i.eo, %i.el
  %i.eq = add <4 x i32> %i.ep, %i.ej
  %i.er = add <4 x i32> %i.eq, %i.eh
  %i.es = add <4 x i32> %i.er, %i.eb
  %i.et = add <4 x i32> %i.es, %i.dz
  %i.eu = add <4 x i32> %i.et, %i.ef
  %i.ev = add <4 x i32> %i.eu, %i.ed
  %i.ew = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ev)
  %i.ex = load i32, ptr %i.a, align 16, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ez = load i32, ptr %i.ey, align 16, !tbaa !16
  %i.fa = add nsw i32 %i.ez, %i.ex
  %i.fb = tail call i32 @llvm.abs.i32(i32 %i.fa, i1 true)
  %i.fc = sub nsw i32 %i.ew, %i.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.fc
}

; Function Attrs: nounwind uwtable
define internal i32 @dct_sad16_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #7 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 5 uses
  %i.b = alloca [64 x i16], align 16              ; 5 uses
  %i.c = alloca [64 x i16], align 16              ; 5 uses
  %i.d = alloca [64 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.f(ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11, !inline_history !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.h(ptr noundef nonnull %i.d) #11, !inline_history !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6632 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = call i32 %i.j(ptr noundef nonnull %i.d) #11, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.n(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %3) #11, !inline_history !93
  %i.o = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.o(ptr noundef nonnull %i.c) #11, !inline_history !93
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.q = call i32 %i.p(ptr noundef nonnull %i.c) #11, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.r = add nsw i32 %i.q, %i.k                   ; 2 uses
  %i.s = icmp eq i32 %4, 16
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = shl nsw i64 %3, 3                        ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.t ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.w(ptr noundef nonnull %i.b, ptr noundef %i.u, ptr noundef %i.v, i64 noundef %3) #11, !inline_history !93
  %i.x = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.x(ptr noundef nonnull %i.b) #11, !inline_history !93
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.z = call i32 %i.y(ptr noundef nonnull %i.b) #11, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.aa = add nsw i32 %i.z, %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.ad(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i64 noundef %3) #11, !inline_history !93
  %i.ae = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.ae(ptr noundef nonnull %i.a) #11, !inline_history !93
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.ag = call i32 %i.af(ptr noundef nonnull %i.a) #11, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ah = add nsw i32 %i.aa, %i.ag
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.ah, %bb.b ], [ %i.r, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @dct_sad8x8_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 %4) #7 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  call void %i.c(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !52
  call void %i.e(ptr noundef nonnull %i.a) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6632
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = call i32 %i.g(ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 131073) i32 @dct_max16_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) #7 {
vector.ph:
  %i.a = alloca [64 x i16], align 16              ; 20 uses
  %i.b = alloca [64 x i16], align 16              ; 20 uses
  %i.c = alloca [64 x i16], align 16              ; 20 uses
  %i.d = alloca [64 x i16], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.f(ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11, !inline_history !94
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.h(ptr noundef nonnull %i.d) #11, !inline_history !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.load = load <4 x i16>, ptr %i.d, align 16, !tbaa !14
  %wide.load44 = load <4 x i16>, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.j, align 16, !tbaa !14
  %wide.load44.1 = load <4 x i16>, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %wide.load.2 = load <4 x i16>, ptr %i.l, align 16, !tbaa !14
  %wide.load44.2 = load <4 x i16>, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.n, align 16, !tbaa !14
  %wide.load44.3 = load <4 x i16>, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.p, align 16, !tbaa !14
  %wide.load44.4 = load <4 x i16>, ptr %i.q, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.r, align 16, !tbaa !14
  %wide.load44.5 = load <4 x i16>, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.t, align 16, !tbaa !14
  %wide.load44.6 = load <4 x i16>, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.v, align 16, !tbaa !14
  %wide.load44.7 = load <4 x i16>, ptr %i.w, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.z(ptr noundef nonnull %i.c, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %3) #11, !inline_history !94
  %i.aa = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.aa(ptr noundef nonnull %i.c) #11, !inline_history !94
  %i.ab = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load, i1 false)
  %i.ac = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.1, i1 false)
  %i.ad = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ab, <4 x i16> %i.ac)
  %i.ae = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.2, i1 false)
  %i.af = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ad, <4 x i16> %i.ae)
  %i.ag = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.3, i1 false)
  %i.ah = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.af, <4 x i16> %i.ag)
  %i.ai = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.4, i1 false)
  %i.aj = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ah, <4 x i16> %i.ai)
  %i.ak = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.5, i1 false)
  %i.al = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.aj, <4 x i16> %i.ak)
  %i.am = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.6, i1 false)
  %i.an = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.al, <4 x i16> %i.am)
  %i.ao = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.7, i1 false)
  %i.ap = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.an, <4 x i16> %i.ao)
  %i.aq = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44, i1 false)
  %i.ar = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.1, i1 false)
  %i.as = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.aq, <4 x i16> %i.ar)
  %i.at = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.2, i1 false)
  %i.au = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.as, <4 x i16> %i.at)
  %i.av = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.3, i1 false)
  %i.aw = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.au, <4 x i16> %i.av)
  %i.ax = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.4, i1 false)
  %i.ay = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.aw, <4 x i16> %i.ax)
  %i.az = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.5, i1 false)
  %i.ba = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ay, <4 x i16> %i.az)
  %i.bb = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.6, i1 false)
  %i.bc = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ba, <4 x i16> %i.bb)
  %i.bd = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load44.7, i1 false)
  %i.be = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bc, <4 x i16> %i.bd)
  %i.bf = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ap, <4 x i16> %i.be)
  %rdx.minmax = zext <4 x i16> %i.bf to <4 x i32>
  %5 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load50 = load <4 x i16>, ptr %i.c, align 16, !tbaa !14
  %wide.load51 = load <4 x i16>, ptr %i.bg, align 8, !tbaa !14
  %i.bh = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50, i1 false)
  %i.bi = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %wide.load50.1 = load <4 x i16>, ptr %i.bj, align 16, !tbaa !14
  %wide.load51.1 = load <4 x i16>, ptr %i.bk, align 8, !tbaa !14
  %i.bl = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.1, i1 false)
  %i.bm = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.1, i1 false)
  %i.bn = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bh, <4 x i16> %i.bl)
  %i.bo = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bi, <4 x i16> %i.bm)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %wide.load50.2 = load <4 x i16>, ptr %i.bp, align 16, !tbaa !14
  %wide.load51.2 = load <4 x i16>, ptr %i.bq, align 8, !tbaa !14
  %i.br = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.2, i1 false)
  %i.bs = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.2, i1 false)
  %i.bt = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bn, <4 x i16> %i.br)
  %i.bu = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bo, <4 x i16> %i.bs)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %wide.load50.3 = load <4 x i16>, ptr %i.bv, align 16, !tbaa !14
  %wide.load51.3 = load <4 x i16>, ptr %i.bw, align 8, !tbaa !14
  %i.bx = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.3, i1 false)
  %i.by = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.3, i1 false)
  %i.bz = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bt, <4 x i16> %i.bx)
  %i.ca = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bu, <4 x i16> %i.by)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %wide.load50.4 = load <4 x i16>, ptr %i.cb, align 16, !tbaa !14
  %wide.load51.4 = load <4 x i16>, ptr %i.cc, align 8, !tbaa !14
  %i.cd = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.4, i1 false)
  %i.ce = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.4, i1 false)
  %i.cf = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.bz, <4 x i16> %i.cd)
  %i.cg = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ca, <4 x i16> %i.ce)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %wide.load50.5 = load <4 x i16>, ptr %i.ch, align 16, !tbaa !14
  %wide.load51.5 = load <4 x i16>, ptr %i.ci, align 8, !tbaa !14
  %i.cj = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.5, i1 false)
  %i.ck = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.5, i1 false)
  %i.cl = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cf, <4 x i16> %i.cj)
  %i.cm = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cg, <4 x i16> %i.ck)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %wide.load50.6 = load <4 x i16>, ptr %i.cn, align 16, !tbaa !14
  %wide.load51.6 = load <4 x i16>, ptr %i.co, align 8, !tbaa !14
  %i.cp = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.6, i1 false)
  %i.cq = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.6, i1 false)
  %i.cr = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cl, <4 x i16> %i.cp)
  %i.cs = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cm, <4 x i16> %i.cq)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %wide.load50.7 = load <4 x i16>, ptr %i.ct, align 16, !tbaa !14
  %wide.load51.7 = load <4 x i16>, ptr %i.cu, align 8, !tbaa !14
  %i.cv = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load50.7, i1 false)
  %i.cw = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load51.7, i1 false)
  %i.cx = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cr, <4 x i16> %i.cv)
  %i.cy = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cs, <4 x i16> %i.cw)
  %i.cz = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.cx, <4 x i16> %i.cy)
  %rdx.minmax54 = zext <4 x i16> %i.cz to <4 x i32>
  %6 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.da = add nuw nsw i32 %6, %5                  ; 2 uses
  %i.db = icmp eq i32 %4, 16
  br i1 %i.db, label %vector.ph55, label %bb.a

vector.ph55:                                      ; preds = %vector.ph
  %i.dc = shl nsw i64 %3, 3                       ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %1, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %2, i64 %i.dc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.df(ptr noundef nonnull %i.b, ptr noundef %i.dd, ptr noundef %i.de, i64 noundef %3) #11, !inline_history !94
  %i.dg = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.dg(ptr noundef nonnull %i.b) #11, !inline_history !94
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.load60 = load <4 x i16>, ptr %i.b, align 16, !tbaa !14
  %wide.load61 = load <4 x i16>, ptr %i.dh, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %wide.load60.1 = load <4 x i16>, ptr %i.di, align 16, !tbaa !14
  %wide.load61.1 = load <4 x i16>, ptr %i.dj, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %wide.load60.2 = load <4 x i16>, ptr %i.dk, align 16, !tbaa !14
  %wide.load61.2 = load <4 x i16>, ptr %i.dl, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %wide.load60.3 = load <4 x i16>, ptr %i.dm, align 16, !tbaa !14
  %wide.load61.3 = load <4 x i16>, ptr %i.dn, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %wide.load60.4 = load <4 x i16>, ptr %i.do, align 16, !tbaa !14
  %wide.load61.4 = load <4 x i16>, ptr %i.dp, align 8, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %wide.load60.5 = load <4 x i16>, ptr %i.dq, align 16, !tbaa !14
  %wide.load61.5 = load <4 x i16>, ptr %i.dr, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %wide.load60.6 = load <4 x i16>, ptr %i.ds, align 16, !tbaa !14
  %wide.load61.6 = load <4 x i16>, ptr %i.dt, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %wide.load60.7 = load <4 x i16>, ptr %i.du, align 16, !tbaa !14
  %wide.load61.7 = load <4 x i16>, ptr %i.dv, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !51
  call void %i.dy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, i64 noundef %3) #11, !inline_history !94
  %i.dz = load ptr, ptr %i.g, align 16, !tbaa !52
  call void %i.dz(ptr noundef nonnull %i.a) #11, !inline_history !94
  %i.ea = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60, i1 false)
  %i.eb = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.1, i1 false)
  %i.ec = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ea, <4 x i16> %i.eb)
  %i.ed = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.2, i1 false)
  %i.ee = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ec, <4 x i16> %i.ed)
  %i.ef = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.3, i1 false)
  %i.eg = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ee, <4 x i16> %i.ef)
  %i.eh = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.4, i1 false)
  %i.ei = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.eg, <4 x i16> %i.eh)
  %i.ej = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.5, i1 false)
  %i.ek = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ei, <4 x i16> %i.ej)
  %i.el = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.6, i1 false)
  %i.em = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ek, <4 x i16> %i.el)
  %i.en = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load60.7, i1 false)
  %i.eo = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.em, <4 x i16> %i.en)
  %i.ep = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61, i1 false)
  %i.eq = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.1, i1 false)
  %i.er = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ep, <4 x i16> %i.eq)
  %i.es = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.2, i1 false)
  %i.et = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.er, <4 x i16> %i.es)
  %i.eu = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.3, i1 false)
  %i.ev = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.et, <4 x i16> %i.eu)
  %i.ew = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.4, i1 false)
  %i.ex = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ev, <4 x i16> %i.ew)
  %i.ey = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.5, i1 false)
  %i.ez = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ex, <4 x i16> %i.ey)
  %i.fa = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.6, i1 false)
  %i.fb = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ez, <4 x i16> %i.fa)
  %i.fc = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load61.7, i1 false)
  %i.fd = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fb, <4 x i16> %i.fc)
  %i.fe = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.eo, <4 x i16> %i.fd)
  %rdx.minmax64 = zext <4 x i16> %i.fe to <4 x i32>
  %7 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax64)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load70 = load <4 x i16>, ptr %i.a, align 16, !tbaa !14
  %wide.load71 = load <4 x i16>, ptr %i.ff, align 8, !tbaa !14
  %i.fg = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70, i1 false)
  %i.fh = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load70.1 = load <4 x i16>, ptr %i.fi, align 16, !tbaa !14
  %wide.load71.1 = load <4 x i16>, ptr %i.fj, align 8, !tbaa !14
  %i.fk = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.1, i1 false)
  %i.fl = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.1, i1 false)
  %i.fm = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fg, <4 x i16> %i.fk)
  %i.fn = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fh, <4 x i16> %i.fl)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load70.2 = load <4 x i16>, ptr %i.fo, align 16, !tbaa !14
  %wide.load71.2 = load <4 x i16>, ptr %i.fp, align 8, !tbaa !14
  %i.fq = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.2, i1 false)
  %i.fr = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.2, i1 false)
  %i.fs = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fm, <4 x i16> %i.fq)
  %i.ft = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fn, <4 x i16> %i.fr)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %wide.load70.3 = load <4 x i16>, ptr %i.fu, align 16, !tbaa !14
  %wide.load71.3 = load <4 x i16>, ptr %i.fv, align 8, !tbaa !14
  %i.fw = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.3, i1 false)
  %i.fx = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.3, i1 false)
  %i.fy = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fs, <4 x i16> %i.fw)
  %i.fz = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ft, <4 x i16> %i.fx)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %wide.load70.4 = load <4 x i16>, ptr %i.ga, align 16, !tbaa !14
  %wide.load71.4 = load <4 x i16>, ptr %i.gb, align 8, !tbaa !14
  %i.gc = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.4, i1 false)
  %i.gd = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.4, i1 false)
  %i.ge = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fy, <4 x i16> %i.gc)
  %i.gf = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.fz, <4 x i16> %i.gd)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %wide.load70.5 = load <4 x i16>, ptr %i.gg, align 16, !tbaa !14
  %wide.load71.5 = load <4 x i16>, ptr %i.gh, align 8, !tbaa !14
  %i.gi = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.5, i1 false)
  %i.gj = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.5, i1 false)
  %i.gk = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ge, <4 x i16> %i.gi)
  %i.gl = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gf, <4 x i16> %i.gj)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %wide.load70.6 = load <4 x i16>, ptr %i.gm, align 16, !tbaa !14
  %wide.load71.6 = load <4 x i16>, ptr %i.gn, align 8, !tbaa !14
  %i.go = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.6, i1 false)
  %i.gp = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.6, i1 false)
  %i.gq = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gk, <4 x i16> %i.go)
  %i.gr = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gl, <4 x i16> %i.gp)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %wide.load70.7 = load <4 x i16>, ptr %i.gs, align 16, !tbaa !14
  %wide.load71.7 = load <4 x i16>, ptr %i.gt, align 8, !tbaa !14
  %i.gu = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load70.7, i1 false)
  %i.gv = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load71.7, i1 false)
  %i.gw = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gq, <4 x i16> %i.gu)
  %i.gx = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gr, <4 x i16> %i.gv)
  %i.gy = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.gw, <4 x i16> %i.gx)
  %rdx.minmax74 = zext <4 x i16> %i.gy to <4 x i32>
  %8 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax74)
  %i.gz = add nuw nsw i32 %7, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ha = add nuw nsw i32 %i.gz, %8
  br label %bb.a

bb.a:                                             ; preds = %vector.ph55, %vector.ph
  %.0 = phi i32 [ %i.ha, %vector.ph55 ], [ %i.da, %vector.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 32769) i32 @dct_max8x8_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 %4) #7 {
vector.ph:
  %i.a = alloca [64 x i16], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  call void %i.c(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2, i64 noundef %3) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !52
  call void %i.e(ptr noundef nonnull %i.a) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load = load <4 x i16>, ptr %i.a, align 16, !tbaa !14
  %wide.load31 = load <4 x i16>, ptr %i.f, align 8, !tbaa !14
  %i.g = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load, i1 false)
  %i.h = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.i, align 16, !tbaa !14
  %wide.load31.1 = load <4 x i16>, ptr %i.j, align 8, !tbaa !14
  %i.k = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.1, i1 false)
  %i.l = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.1, i1 false)
  %i.m = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.g, <4 x i16> %i.k)
  %i.n = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.h, <4 x i16> %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load.2 = load <4 x i16>, ptr %i.o, align 16, !tbaa !14
  %wide.load31.2 = load <4 x i16>, ptr %i.p, align 8, !tbaa !14
  %i.q = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.2, i1 false)
  %i.r = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.2, i1 false)
  %i.s = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.m, <4 x i16> %i.q)
  %i.t = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.n, <4 x i16> %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.u, align 16, !tbaa !14
  %wide.load31.3 = load <4 x i16>, ptr %i.v, align 8, !tbaa !14
  %i.w = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.3, i1 false)
  %i.x = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.3, i1 false)
  %i.y = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.s, <4 x i16> %i.w)
  %i.z = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.t, <4 x i16> %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.aa, align 16, !tbaa !14
  %wide.load31.4 = load <4 x i16>, ptr %i.ab, align 8, !tbaa !14
  %i.ac = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.4, i1 false)
  %i.ad = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.4, i1 false)
  %i.ae = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.y, <4 x i16> %i.ac)
  %i.af = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.z, <4 x i16> %i.ad)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.ag, align 16, !tbaa !14
  %wide.load31.5 = load <4 x i16>, ptr %i.ah, align 8, !tbaa !14
  %i.ai = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.5, i1 false)
  %i.aj = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.5, i1 false)
  %i.ak = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ae, <4 x i16> %i.ai)
  %i.al = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.af, <4 x i16> %i.aj)
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.am, align 16, !tbaa !14
  %wide.load31.6 = load <4 x i16>, ptr %i.an, align 8, !tbaa !14
  %i.ao = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.6, i1 false)
  %i.ap = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.6, i1 false)
  %i.aq = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ak, <4 x i16> %i.ao)
  %i.ar = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.al, <4 x i16> %i.ap)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.as, align 16, !tbaa !14
  %wide.load31.7 = load <4 x i16>, ptr %i.at, align 8, !tbaa !14
  %i.au = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.7, i1 false)
  %i.av = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load31.7, i1 false)
  %i.aw = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.aq, <4 x i16> %i.au)
  %i.ax = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ar, <4 x i16> %i.av)
  %i.ay = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.aw, <4 x i16> %i.ax)
  %rdx.minmax = zext <4 x i16> %i.ay to <4 x i32>
  %5 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @sse16_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.077 = phi i32 [ %i.ff, %.lr.ph ], [ 0, %bb.a ]
  %.07176 = phi i32 [ %i.fc, %.lr.ph ], [ 0, %bb.a ]
  %.07275 = phi ptr [ %i.fd, %.lr.ph ], [ %1, %bb.a ] ; 17 uses
  %.07374 = phi ptr [ %i.fe, %.lr.ph ], [ %2, %bb.a ] ; 17 uses
  %i.b = load i8, ptr %.07275, align 1, !tbaa !15
  %i.c = zext i8 %i.b to i64
  %i.d = load i8, ptr %.07374, align 1, !tbaa !15
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = add i32 %i.h, %.07176
  %i.j = getelementptr inbounds nuw i8, ptr %.07275, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.07374, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64
  %i.p = sub nsw i64 %i.l, %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = add i32 %i.i, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.07275, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.07374, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = zext i8 %i.x to i64
  %i.z = sub nsw i64 %i.v, %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ac = add i32 %i.s, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.07275, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.07374, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = zext i8 %i.ah to i64
  %i.aj = sub nsw i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = add i32 %i.ac, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.07275, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.07374, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i64 %i.ap, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = add i32 %i.am, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.07275, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.07374, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = zext i8 %i.bb to i64
  %i.bd = sub nsw i64 %i.az, %i.bc
  %i.be = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = add i32 %i.aw, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.07275, i64 6
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.07374, i64 6
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = zext i8 %i.bl to i64
  %i.bn = sub nsw i64 %i.bj, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = add i32 %i.bg, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.07275, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.07374, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = zext i8 %i.bv to i64
  %i.bx = sub nsw i64 %i.bt, %i.bw
  %i.by = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16
  %i.ca = add i32 %i.bq, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.07275, i64 8
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.07374, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = zext i8 %i.cf to i64
  %i.ch = sub nsw i64 %i.cd, %i.cg
  %i.ci = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !16
  %i.ck = add i32 %i.ca, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.07275, i64 9
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.07374, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = zext i8 %i.cp to i64
  %i.cr = sub nsw i64 %i.cn, %i.cq
  %i.cs = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !16
  %i.cu = add i32 %i.ck, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.07275, i64 10
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !15
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.07374, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !15
  %i.da = zext i8 %i.cz to i64
  %i.db = sub nsw i64 %i.cx, %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.de = add i32 %i.cu, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.07275, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.07374, i64 11
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = zext i8 %i.dj to i64
  %i.dl = sub nsw i64 %i.dh, %i.dk
  %i.dm = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16
  %i.do = add i32 %i.de, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %.07275, i64 12
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.07374, i64 12
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = zext i8 %i.dt to i64
  %i.dv = sub nsw i64 %i.dr, %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !16
  %i.dy = add i32 %i.do, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.07275, i64 13
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.07374, i64 13
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !15
  %i.ee = zext i8 %i.ed to i64
  %i.ef = sub nsw i64 %i.eb, %i.ee
  %i.eg = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16
  %i.ei = add i32 %i.dy, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.07275, i64 14
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !15
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.07374, i64 14
  %i.en = load i8, ptr %i.em, align 1, !tbaa !15
  %i.eo = zext i8 %i.en to i64
  %i.ep = sub nsw i64 %i.el, %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !16
  %i.es = add i32 %i.ei, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.07275, i64 15
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !15
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.07374, i64 15
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ey = zext i8 %i.ex to i64
  %i.ez = sub nsw i64 %i.ev, %i.ey
  %i.fa = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !16
  %i.fc = add i32 %i.es, %i.fb                    ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.07275, i64 %3
  %i.fe = getelementptr inbounds i8, ptr %.07374, i64 %3
  %i.ff = add nuw nsw i32 %.077, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.071.lcssa = phi i32 [ 0, %bb.a ], [ %i.fc, %.lr.ph ]
  ret i32 %.071.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @sse8_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.045 = phi i32 [ %i.cd, %.lr.ph ], [ 0, %bb.a ]
  %.03944 = phi i32 [ %i.ca, %.lr.ph ], [ 0, %bb.a ]
  %.04043 = phi ptr [ %i.cb, %.lr.ph ], [ %1, %bb.a ] ; 9 uses
  %.04142 = phi ptr [ %i.cc, %.lr.ph ], [ %2, %bb.a ] ; 9 uses
  %i.b = load i8, ptr %.04043, align 1, !tbaa !15
  %i.c = zext i8 %i.b to i64
  %i.d = load i8, ptr %.04142, align 1, !tbaa !15
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
end_hunk_0
begin_hunk_1_@pix_median_abs8_c:bb.a
  %.pn108 = phi ptr [ %.092113, %.lr.ph ], [ %2, %bb.a ] ; 10 uses
  %.091112 = getelementptr inbounds i8, ptr %.pn93109, i64 %3 ; 8 uses
  %.092113 = getelementptr inbounds i8, ptr %.pn108, i64 %3 ; 8 uses
  %i.au = load i8, ptr %.pn93109, align 1, !tbaa !15
  %i.av = zext i8 %i.au to i32
  %i.aw = load i8, ptr %.pn108, align 1, !tbaa !15
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.091112, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %.092113, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn93109, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn108, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.091112, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.092113, i64 4
  %i.be = load i8, ptr %.092113, align 1, !tbaa !15
  %i.bf = load <4 x i8>, ptr %.092113, align 1, !tbaa !15
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bh = load <4 x i8>, ptr %i.az, align 1, !tbaa !15
  %i.bi = zext i8 %i.be to i32
  %i.bj = zext <4 x i8> %i.bf to <4 x i32>
  %i.bk = add nuw nsw i32 %i.bi, %i.av
  %i.bl = load i8, ptr %.091112, align 1, !tbaa !15
  %i.bm = load <4 x i8>, ptr %.091112, align 1, !tbaa !15
  %i.bn = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.bo = load <4 x i8>, ptr %i.ay, align 1, !tbaa !15
  %i.bp = zext i8 %i.bl to i32
  %i.bq = zext <4 x i8> %i.bm to <4 x i32>
  %i.br = sub nsw i32 %i.bp, %i.bk
  %i.bs = add nsw i32 %i.br, %i.ax
  %i.bt = tail call i32 @llvm.abs.i32(i32 %i.bs, i1 true)
  %i.bu = zext i8 %i.bn to i32
  %i.bv = zext <4 x i8> %i.bo to <4 x i32>
  %i.bw = zext i8 %i.bg to i32
  %i.bx = zext <4 x i8> %i.bh to <4 x i32>
  %i.by = load <4 x i8>, ptr %i.ba, align 1, !tbaa !15
  %i.bz = zext <4 x i8> %i.by to <4 x i32>
  %i.ca = load <4 x i8>, ptr %i.bb, align 1, !tbaa !15
  %i.cb = zext <4 x i8> %i.ca to <4 x i32>
  %i.cc = sub nsw <4 x i32> %i.bz, %i.cb          ; 3 uses
  %i.cd = sub nsw <4 x i32> %i.bq, %i.bj          ; 3 uses
  %i.ce = load <4 x i8>, ptr %.pn93109, align 1, !tbaa !15
  %i.cf = zext <4 x i8> %i.ce to <4 x i32>
  %i.cg = load <4 x i8>, ptr %.pn108, align 1, !tbaa !15
  %i.ch = zext <4 x i8> %i.cg to <4 x i32>
  %i.ci = add nsw <4 x i32> %i.cd, %i.cc
  %i.cj = sub nsw <4 x i32> %i.ci, %i.cf
  %i.ck = add nsw <4 x i32> %i.cj, %i.ch
  %i.cl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cc, <4 x i32> %i.cd)
  %i.cm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cc, <4 x i32> %i.cd)
  %i.cn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ck, <4 x i32> %i.cl)
  %i.co = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cm)
  %i.cp = add nsw <4 x i32> %i.co, %i.bx
  %i.cq = sub nsw <4 x i32> %i.bv, %i.cp
  %i.cr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cq, i1 true)
  %i.cs = getelementptr inbounds nuw i8, ptr %.091112, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.092113, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !15
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn93109, i64 5
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !15
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %.pn108, i64 5
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !15
  %i.dd = zext i8 %i.dc to i32
  %i.de = sub nsw i32 %i.da, %i.dd                ; 3 uses
  %i.df = sub nsw i32 %i.bu, %i.bw                ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn93109, i64 4
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn108, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !15
  %i.dl = zext i8 %i.dk to i32
  %.neg94.4 = add nsw i32 %i.df, %i.de
  %i.dm = sub nsw i32 %.neg94.4, %i.di
  %i.dn = add nsw i32 %i.dm, %i.dl
  %..i.4 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.de, i32 range(i32 -255, 256) %i.df)
  %.20.i.4 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.de, i32 range(i32 -255, 256) %i.df)
  %i.do = tail call i32 @llvm.smin.i32(i32 range(i32 -765, 766) %i.dn, i32 %..i.4)
  %i.dp = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.do, i32 %.20.i.4)
  %i.dq = add nsw i32 %i.dp, %i.cx
  %i.dr = sub nsw i32 %i.cu, %i.dq
  %i.ds = tail call i32 @llvm.abs.i32(i32 %i.dr, i1 true)
  %i.dt = getelementptr inbounds nuw i8, ptr %.091112, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.092113, i64 6
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn93109, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn108, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !15
  %i.ee = zext i8 %i.ed to i32
  %i.ef = sub nsw i32 %i.eb, %i.ee                ; 3 uses
  %i.eg = sub nsw i32 %i.cu, %i.cx                ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn93109, i64 5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn108, i64 5
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !15
  %i.em = zext i8 %i.el to i32
  %.neg94.5 = add nsw i32 %i.eg, %i.ef
  %i.en = sub nsw i32 %.neg94.5, %i.ej
  %i.eo = add nsw i32 %i.en, %i.em
  %..i.5 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.ef, i32 range(i32 -255, 256) %i.eg)
  %.20.i.5 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ef, i32 range(i32 -255, 256) %i.eg)
  %i.ep = tail call i32 @llvm.smin.i32(i32 range(i32 -765, 766) %i.eo, i32 %..i.5)
  %i.eq = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.ep, i32 %.20.i.5)
  %i.er = add nsw i32 %i.eq, %i.dy
  %i.es = sub nsw i32 %i.dv, %i.er
  %i.et = tail call i32 @llvm.abs.i32(i32 %i.es, i1 true)
  %i.eu = getelementptr inbounds nuw i8, ptr %.091112, i64 7
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = zext i8 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %.092113, i64 7
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn93109, i64 7
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %.pn108, i64 7
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sub nsw i32 %i.fc, %i.ff                ; 3 uses
  %i.fh = sub nsw i32 %i.dv, %i.dy                ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn93109, i64 6
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn108, i64 6
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !15
  %i.fn = zext i8 %i.fm to i32
  %.neg94.6 = add nsw i32 %i.fh, %i.fg
  %i.fo = sub nsw i32 %.neg94.6, %i.fk
  %i.fp = add nsw i32 %i.fo, %i.fn
  %..i.6 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.fg, i32 range(i32 -255, 256) %i.fh)
  %.20.i.6 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.fg, i32 range(i32 -255, 256) %i.fh)
  %i.fq = tail call i32 @llvm.smin.i32(i32 range(i32 -765, 766) %i.fp, i32 %..i.6)
  %i.fr = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.fq, i32 %.20.i.6)
  %i.fs = add nsw i32 %i.fr, %i.ez
  %i.ft = sub nsw i32 %i.ew, %i.fs
  %i.fu = tail call i32 @llvm.abs.i32(i32 %i.ft, i1 true)
  %i.fv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr)
  %op.rdx118 = add i32 %i.fv, %i.bt
  %op.rdx119 = add nuw i32 %i.ds, %i.et
  %op.rdx120 = add i32 %i.fu, %.090110
  %op.rdx121 = add i32 %op.rdx118, %op.rdx119
  %op.rdx122 = add i32 %op.rdx121, %op.rdx120     ; 2 uses
  %i.fw = add nuw nsw i32 %.089111, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fw, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.090.lcssa = phi i32 [ %op.rdx117, %bb.a ], [ %op.rdx122, %.lr.ph ]
  ret i32 %.090.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ff_simple_idct_int16_8bit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <12 x i32> @llvm.abs.v12i32(<12 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"short", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!"ScanTable", !18, i64 0, !6, i64 8, !6, i64 72}
!20 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"p1 _ZTS15AVRefStructPool", !10, i64 0}
!23 = !{!"BufferPoolContext", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !7, i64 40, !7, i64 44, !7, i64 48}
!24 = !{!"p1 _ZTS10MPVPicture", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"MPVWorkPicture", !6, i64 0, !6, i64 24, !24, i64 48, !18, i64 56, !6, i64 64, !25, i64 80, !18, i64 88, !6, i64 96, !7, i64 112}
!27 = !{!"p1 short", !10, i64 0}
!28 = !{!"ScratchpadContext", !18, i64 0, !18, i64 8, !6, i64 16, !7, i64 24}
!29 = !{!"BlockDSPContext", !10, i64 0, !10, i64 8, !6, i64 16}
!30 = !{!"H264ChromaContext", !6, i64 0, !6, i64 32}
!31 = !{!"HpelDSPContext", !6, i64 0, !6, i64 128, !6, i64 256, !6, i64 352}
!32 = !{!"IDCTDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !6, i64 48, !7, i64 112, !7, i64 116}
!33 = !{!"QpelDSPContext", !6, i64 0, !6, i64 256, !6, i64 512}
!34 = !{!"VideoDSPContext", !10, i64 0, !10, i64 8}
!35 = !{!"H263DSPContext", !10, i64 0, !10, i64 8}
!36 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!37 = !{!"p1 _ZTS11ThreadFrame", !10, i64 0}
!38 = !{!"p1 _ZTS14ThreadProgress", !10, i64 0}
!39 = !{!"ERPicture", !36, i64 0, !37, i64 8, !38, i64 16, !6, i64 24, !6, i64 40, !25, i64 56, !7, i64 64}
!40 = !{!"ERContext", !20, i64 0, !10, i64 8, !25, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !7, i64 60, !18, i64 64, !18, i64 72, !6, i64 80, !18, i64 104, !18, i64 112, !6, i64 120, !39, i64 184, !39, i64 256, !39, i64 328, !6, i64 400, !6, i64 416, !13, i64 432, !13, i64 434, !7, i64 436, !7, i64 440, !10, i64 448, !10, i64 456}
!41 = !{!"MpegEncContext", !17, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20, !7, i64 68, !19, i64 72, !19, i64 208, !20, i64 344, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !21, i64 416, !21, i64 424, !22, i64 432, !23, i64 440, !7, i64 496, !7, i64 500, !6, i64 504, !7, i64 760, !26, i64 768, !26, i64 888, !26, i64 1008, !27, i64 1128, !18, i64 1136, !18, i64 1144, !18, i64 1152, !18, i64 1160, !18, i64 1168, !27, i64 1176, !27, i64 1184, !27, i64 1192, !7, i64 1200, !18, i64 1208, !18, i64 1216, !18, i64 1224, !18, i64 1232, !28, i64 1240, !7, i64 1272, !7, i64 1276, !7, i64 1280, !7, i64 1284, !29, i64 1288, !30, i64 1320, !31, i64 1384, !32, i64 1768, !33, i64 1888, !34, i64 2656, !35, i64 2672, !27, i64 2688, !6, i64 2696, !7, i64 2728, !7, i64 2732, !6, i64 2736, !6, i64 2800, !6, i64 2816, !6, i64 2848, !7, i64 3104, !7, i64 3108, !7, i64 3112, !7, i64 3116, !6, i64 3120, !6, i64 3144, !6, i64 3168, !25, i64 3192, !6, i64 3200, !6, i64 3328, !6, i64 3456, !6, i64 3584, !7, i64 3712, !7, i64 3716, !7, i64 3720, !7, i64 3724, !7, i64 3728, !7, i64 3732, !7, i64 3736, !7, i64 3740, !21, i64 3744, !21, i64 3752, !13, i64 3760, !13, i64 3762, !13, i64 3764, !13, i64 3766, !7, i64 3768, !7, i64 3772, !7, i64 3776, !7, i64 3780, !7, i64 3784, !7, i64 3788, !7, i64 3792, !7, i64 3796, !6, i64 3800, !7, i64 3816, !7, i64 3820, !7, i64 3824, !7, i64 3828, !7, i64 3832, !7, i64 3836, !7, i64 3840, !7, i64 3844, !7, i64 3848, !7, i64 3852, !7, i64 3856, !7, i64 3860, !7, i64 3864, !7, i64 3868, !6, i64 3872, !7, i64 3880, !7, i64 3884, !10, i64 3888, !10, i64 3896, !7, i64 3904, !7, i64 3908, !40, i64 3912}
!42 = !{!"PutBitContext", !7, i64 0, !7, i64 4, !18, i64 8, !18, i64 16, !18, i64 24}
!43 = !{!"p1 _ZTS17MPVMainEncContext", !10, i64 0}
!44 = !{!"FDCTDSPContext", !10, i64 0, !10, i64 8}
!45 = !{!"MpegvideoEncDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !10, i64 72}
!46 = !{!"PixblockDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!47 = !{!"any p2 pointer", !10, i64 0}
!48 = !{!"MotionEstContext", !20, i64 0, !7, i64 8, !7, i64 12, !6, i64 16, !6, i64 48, !18, i64 80, !18, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !6, i64 168, !6, i64 296, !7, i64 424, !7, i64 428, !21, i64 432, !21, i64 440, !7, i64 448, !6, i64 456, !6, i64 504, !6, i64 552, !6, i64 600, !6, i64 648, !10, i64 712, !47, i64 720, !47, i64 728, !47, i64 736, !47, i64 744, !18, i64 752, !18, i64 760, !10, i64 768, !6, i64 776, !6, i64 1032}
!49 = !{!"p1 _ZTS12MJpegContext", !10, i64 0}
!50 = !{!"MPVEncContext", !41, i64 0, !42, i64 4384, !7, i64 4416, !7, i64 4420, !25, i64 4424, !7, i64 4432, !7, i64 4436, !7, i64 4440, !7, i64 4444, !7, i64 4448, !7, i64 4452, !7, i64 4456, !7, i64 4460, !36, i64 4464, !43, i64 4472, !44, i64 4480, !45, i64 4496, !46, i64 4576, !48, i64 4608, !7, i64 5896, !7, i64 5900, !27, i64 5904, !27, i64 5912, !27, i64 5920, !27, i64 5928, !27, i64 5936, !27, i64 5944, !6, i64 5952, !6, i64 6016, !6, i64 6032, !27, i64 6064, !27, i64 6072, !27, i64 6080, !18, i64 6088, !6, i64 6096, !7, i64 6120, !7, i64 6124, !7, i64 6128, !7, i64 6132, !7, i64 6136, !18, i64 6144, !18, i64 6152, !18, i64 6160, !18, i64 6168, !18, i64 6176, !18, i64 6184, !18, i64 6192, !6, i64 6200, !27, i64 6248, !25, i64 6256, !25, i64 6264, !25, i64 6272, !27, i64 6280, !27, i64 6288, !27, i64 6296, !25, i64 6304, !6, i64 6312, !27, i64 6320, !7, i64 6328, !7, i64 6332, !7, i64 6336, !7, i64 6340, !7, i64 6344, !7, i64 6348, !7, i64 6352, !7, i64 6356, !6, i64 6360, !7, i64 6372, !7, i64 6376, !7, i64 6380, !7, i64 6384, !7, i64 6388, !18, i64 6392, !7, i64 6400, !7, i64 6404, !7, i64 6408, !7, i64 6412, !7, i64 6416, !49, i64 6424, !7, i64 6432, !7, i64 6436, !7, i64 6440, !7, i64 6444, !7, i64 6448, !42, i64 6456, !42, i64 6488, !7, i64 6520, !7, i64 6524, !7, i64 6528, !7, i64 6532, !7, i64 6536, !7, i64 6540, !18, i64 6544, !10, i64 6552, !10, i64 6560, !6, i64 6568, !6, i64 6584, !6, i64 6600, !6, i64 6616, !10, i64 6632, !7, i64 6640, !6, i64 6644, !6, i64 6708, !6, i64 6784}
!51 = !{!50, !10, i64 4600}
!52 = !{!50, !10, i64 4480}
!53 = !{!50, !10, i64 6632}
!54 = !{!50, !7, i64 3116}
!55 = !{!50, !10, i64 6560}
!56 = !{!50, !7, i64 1272}
!57 = !{!50, !10, i64 3896}
!58 = !{!50, !7, i64 6136}
!59 = !{!50, !18, i64 6192}
!60 = !{!18, !18, i64 0}
!61 = !{!50, !20, i64 344}
!62 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!63 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!64 = !{!"AVRational", !7, i64 0, !7, i64 4}
!65 = !{!"float", !6, i64 0}
!66 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!67 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!68 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!69 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!70 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!71 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!72 = !{!"p2 _ZTS15AVFrameSideData", !47, i64 0}
!73 = !{!"AVCodecContext", !17, i64 0, !7, i64 8, !7, i64 12, !62, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !63, i64 40, !10, i64 48, !21, i64 56, !7, i64 64, !7, i64 68, !18, i64 72, !7, i64 80, !64, i64 84, !64, i64 92, !64, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !64, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !65, i64 204, !65, i64 208, !65, i64 212, !65, i64 216, !65, i64 220, !65, i64 224, !65, i64 228, !65, i64 232, !65, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !27, i64 288, !27, i64 296, !27, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !66, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !65, i64 428, !65, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !67, i64 456, !21, i64 464, !21, i64 472, !65, i64 480, !65, i64 484, !7, i64 488, !7, i64 492, !18, i64 496, !18, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !68, i64 536, !10, i64 544, !69, i64 552, !69, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !70, i64 728, !18, i64 736, !7, i64 744, !7, i64 748, !18, i64 752, !18, i64 760, !18, i64 768, !71, i64 776, !7, i64 784, !7, i64 788, !21, i64 792, !7, i64 800, !7, i64 804, !21, i64 808, !10, i64 816, !21, i64 824, !25, i64 832, !7, i64 840, !72, i64 848, !7, i64 856, !7, i64 860}
!74 = !{!73, !7, i64 240}
!75 = distinct !{!75, !12, !77, !78}
!76 = distinct !{!76, !12}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"", !6, i64 0, !6, i64 1, !13, i64 2}
!80 = !{!79, !13, i64 2}
!81 = !{!"MECmpContext", !10, i64 0, !6, i64 8, !6, i64 56, !6, i64 104, !6, i64 152, !6, i64 200, !6, i64 248, !6, i64 296, !6, i64 344, !6, i64 392, !6, i64 440, !6, i64 488, !6, i64 536, !6, i64 584, !6, i64 632, !6, i64 680, !6, i64 744}
!82 = !{!81, !10, i64 0}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = !{ptr @dct_sad8x8_c}
!94 = !{ptr @dct_max8x8_c}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = !{ptr @quant_psnr8x8_c}
!99 = distinct !{!99, !12}
!100 = !{!50, !10, i64 4592}
!101 = !{!50, !10, i64 1808}
!102 = !{ptr @bit8x8_c}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
end_hunk_1
