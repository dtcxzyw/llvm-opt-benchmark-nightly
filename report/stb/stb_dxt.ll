Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_dxt?download=true
inline.NumInlined: 20
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stb__From16Bit(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i16 %1, 11
  %i.b = lshr i16 %1, 5
  %i.c = and i16 %i.b, 63
  %i.d = and i16 %1, 31
  %i.e = mul nuw nsw i16 %i.a, 33
  %i.f = lshr i16 %i.e, 2
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %0, align 1, !tbaa !8
  %i.h = mul nuw nsw i16 %i.c, 65
  %i.i = lshr i16 %i.h, 4
  %i.j = trunc nuw i16 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !8
  %narrow = mul nuw nsw i16 %i.d, 33
  %i.l = lshr i16 %narrow, 2
  %i.m = trunc nuw i16 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.o, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i16 @stb__As16Bit(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %0, 31
  %i.b = add nsw i32 %i.a, 128                    ; 2 uses
  %i.c = lshr i32 %i.b, 8
  %i.d = add i32 %i.c, %i.b
  %i.e = shl i32 %i.d, 3
  %i.f = and i32 %i.e, 63488
  %i.g = mul nsw i32 %1, 63
  %i.h = add nsw i32 %i.g, 128                    ; 2 uses
  %i.i = lshr i32 %i.h, 8
  %i.j = add i32 %i.i, %i.h
  %i.k = lshr i32 %i.j, 3
  %i.l = and i32 %i.k, 65504
  %i.m = add nuw nsw i32 %i.l, %i.f
  %i.n = mul nsw i32 %2, 31
  %i.o = add nsw i32 %i.n, 128                    ; 2 uses
  %i.p = lshr i32 %i.o, 8
  %i.q = add i32 %i.p, %i.o
  %i.r = lshr i32 %i.q, 8
  %i.s = add nuw nsw i32 %i.m, %i.r
  %i.t = trunc i32 %i.s to i16
  ret i16 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -715827882, 715827883) i32 @stb__Lerp13(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %0, 1
  %i.b = add nsw i32 %i.a, %1
  %i.c = sdiv i32 %i.b, 3
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stb__Lerp13RGB(ptr nofree noundef writeonly captures(none) initializes((0, 3)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i16
  %i.c = load i8, ptr %2, align 1, !tbaa !8
  %i.d = zext i8 %i.c to i16
  %i.e = shl nuw nsw i16 %i.b, 1
  %.lhs.trunc = add nuw nsw i16 %i.e, %i.d
  %i.f = udiv i16 %.lhs.trunc, 3
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %0, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i16
  %i.n = shl nuw nsw i16 %i.j, 1
  %.lhs.trunc9 = add nuw nsw i16 %i.n, %i.m
  %i.o = udiv i16 %.lhs.trunc9, 3
  %i.p = trunc nuw i16 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i16
  %i.x = shl nuw nsw i16 %i.t, 1
  %.lhs.trunc11 = add nuw nsw i16 %i.x, %i.w
  %i.y = udiv i16 %.lhs.trunc11, 3
  %i.z = trunc nuw i16 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stb__EvalColors(ptr nofree noundef writeonly captures(none) initializes((0, 11), (12, 15)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.c, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.m = lshr i16 %1, 11
  %i.n = lshr i16 %1, 5
  %i.o = and i16 %i.n, 63
  %i.p = lshr i16 %2, 11
  %i.q = lshr i16 %2, 5
  %i.r = insertelement <4 x i16> poison, i16 %1, i64 0
  %i.s = insertelement <4 x i16> %i.r, i16 %i.p, i64 1
  %i.t = insertelement <4 x i16> %i.s, i16 %i.q, i64 2
  %i.u = insertelement <4 x i16> %i.t, i16 %2, i64 3
  %i.v = and <4 x i16> %i.u, <i16 31, i16 -1, i16 63, i16 31>
  %i.w = mul nuw nsw <4 x i16> %i.v, <i16 33, i16 33, i16 65, i16 33> ; 4 uses
  %i.x = extractelement <4 x i16> %i.w, i64 0
  %i.y = extractelement <4 x i16> %i.w, i64 1
  %i.z = extractelement <4 x i16> %i.w, i64 2
  %i.aa = extractelement <4 x i16> %i.w, i64 3
  %i.ab = mul nuw nsw i16 %i.m, 33
  %i.ac = lshr i16 %i.ab, 2                       ; 3 uses
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %0, align 1, !tbaa !8
  %i.ae = mul nuw nsw i16 %i.o, 65
  %i.af = lshr i16 %i.ae, 4                       ; 3 uses
  %i.ag = trunc nuw i16 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 1, !tbaa !8
  %i.ah = lshr i16 %i.x, 2                        ; 3 uses
  %i.ai = trunc nuw i16 %i.ah to i8
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !8
  %i.aj = lshr i16 %i.y, 2                        ; 3 uses
  %i.ak = trunc nuw i16 %i.aj to i8
  store i8 %i.ak, ptr %i.d, align 1, !tbaa !8
  %i.al = lshr i16 %i.z, 4                        ; 3 uses
  %i.am = trunc nuw i16 %i.al to i8
  store i8 %i.am, ptr %i.e, align 1, !tbaa !8
  %i.an = lshr i16 %i.aa, 2                       ; 3 uses
  %i.ao = trunc nuw i16 %i.an to i8
  store i8 %i.ao, ptr %i.f, align 1, !tbaa !8
  %i.ap = shl nuw nsw i16 %i.ac, 1
  %.lhs.trunc.i = add nuw nsw i16 %i.ap, %i.aj
  %i.aq = udiv i16 %.lhs.trunc.i, 3
  %i.ar = trunc nuw i16 %i.aq to i8
  store i8 %i.ar, ptr %i.h, align 1, !tbaa !8
  %i.as = shl nuw nsw i16 %i.af, 1
  %.lhs.trunc9.i = add nuw nsw i16 %i.as, %i.al
  %i.at = udiv i16 %.lhs.trunc9.i, 3
  %i.au = trunc nuw i16 %i.at to i8
  store i8 %i.au, ptr %i.i, align 1, !tbaa !8
  %i.av = insertelement <4 x i16> poison, i16 %i.ah, i64 0
  %i.aw = insertelement <4 x i16> %i.av, i16 %i.aj, i64 1
  %i.ax = insertelement <4 x i16> %i.aw, i16 %i.al, i64 2
  %i.ay = insertelement <4 x i16> %i.ax, i16 %i.an, i64 3
  %i.az = shl nuw nsw <4 x i16> %i.ay, splat (i16 1)
  %i.ba = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %i.bb = insertelement <4 x i16> %i.ba, i16 %i.ac, i64 1
  %i.bc = insertelement <4 x i16> %i.bb, i16 %i.af, i64 2
  %i.bd = insertelement <4 x i16> %i.bc, i16 %i.ah, i64 3
  %i.be = add nuw nsw <4 x i16> %i.az, %i.bd
  %i.bf = udiv <4 x i16> %i.be, splat (i16 3)     ; 4 uses
  %i.bg = bitcast <4 x i16> %i.bf to <8 x i8>
  %i.bh = extractelement <8 x i8> %i.bg, i64 0
  store i8 %i.bh, ptr %i.j, align 1, !tbaa !8
  %i.bi = bitcast <4 x i16> %i.bf to <8 x i8>
  %i.bj = extractelement <8 x i8> %i.bi, i64 2
  store i8 %i.bj, ptr %i.k, align 1, !tbaa !8
  %i.bk = bitcast <4 x i16> %i.bf to <8 x i8>
  %i.bl = extractelement <8 x i8> %i.bk, i64 4
  store i8 %i.bl, ptr %i.l, align 1, !tbaa !8
  %i.bm = bitcast <4 x i16> %i.bf to <8 x i8>
  %i.bn = extractelement <8 x i8> %i.bm, i64 6
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stb__MatchColorsBlock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bz = load i8, ptr %0, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i32
  %i.cb = load i8, ptr %i.f, align 1, !tbaa !8
  %i.cc = zext i8 %i.cb to i32
  %i.cd = zext i8 %i.h to i32
  %i.ce = load i8, ptr %i.i, align 1, !tbaa !8
  %i.cf = zext i8 %i.ce to i32
  %i.cg = load i8, ptr %i.j, align 1, !tbaa !8
  %i.ch = zext i8 %i.cg to i32
  %i.ci = zext i8 %i.l to i32
  %i.cj = load i8, ptr %i.m, align 1, !tbaa !8
  %i.ck = zext i8 %i.cj to i32
  %i.cl = load i8, ptr %i.n, align 1, !tbaa !8
  %i.cm = zext i8 %i.cl to i32
  %i.cn = zext i8 %i.p to i32
  %i.co = load i8, ptr %i.q, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i8, ptr %i.r, align 1, !tbaa !8
  %i.cr = zext i8 %i.cq to i32
  %i.cs = zext i8 %i.t to i32
  %i.ct = load i8, ptr %i.u, align 1, !tbaa !8
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i8, ptr %i.v, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i32
  %i.cx = zext i8 %i.x to i32
  %i.cy = load i8, ptr %i.y, align 1, !tbaa !8
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.z, align 1, !tbaa !8
  %i.db = zext i8 %i.da to i32
  %i.dc = zext i8 %i.ab to i32
  %i.dd = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.de = zext i8 %i.dd to i32
  %i.df = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.dg = zext i8 %i.df to i32
  %i.dh = zext i8 %i.af to i32
  %i.di = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i32
  %i.dk = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.dl = zext i8 %i.dk to i32
  %i.dm = zext i8 %i.aj to i32
  %i.dn = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.do = zext i8 %i.dn to i32
  %i.dp = load i8, ptr %i.al, align 1, !tbaa !8
  %i.dq = zext i8 %i.dp to i32
  %i.dr = zext i8 %i.an to i32
  %i.ds = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.dt = zext i8 %i.ds to i32
  %i.du = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.dv = zext i8 %i.du to i32
  %i.dw = zext i8 %i.ar to i32
  %i.dx = load i8, ptr %i.as, align 1, !tbaa !8
  %i.dy = zext i8 %i.dx to i32
  %i.dz = load i8, ptr %i.at, align 1, !tbaa !8
  %i.ea = zext i8 %i.dz to i32
  %i.eb = zext i8 %i.av to i32
  %i.ec = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ed = zext i8 %i.ec to i32
  %i.ee = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i32
  %i.eg = zext i8 %i.az to i32
  %i.eh = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.ei = zext i8 %i.eh to i32
  %i.ej = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.ek = zext i8 %i.ej to i32
  %i.el = zext i8 %i.bd to i32
  %i.em = load i8, ptr %i.be, align 1, !tbaa !8
  %i.en = zext i8 %i.em to i32
  %i.eo = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.ep = zext i8 %i.eo to i32
  %i.eq = zext i8 %i.bh to i32
  %i.er = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.es = zext i8 %i.er to i32
  %i.et = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.eu = zext i8 %i.et to i32
  %i.ev = zext i8 %i.bl to i32
  %i.ew = load i8, ptr %1, align 1, !tbaa !8
  %i.ex = zext i8 %i.ew to i32
  %i.ey = load i8, ptr %i.a, align 1, !tbaa !8
  %i.ez = zext i8 %i.ey to i32
  %i.fa = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.fd = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.fe = zext i8 %i.fd to i32
  %i.ff = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.fg = zext i8 %i.ff to i32
  %i.fh = load i8, ptr %i.d, align 1, !tbaa !8    ; 2 uses
  %i.fi = zext i8 %i.fh to i32
  %i.fj = load i8, ptr %i.e, align 1, !tbaa !8
  %i.fk = zext i8 %i.fj to i32
  %i.fl = sub nsw i32 %i.fi, %i.fk                ; 20 uses
  %2 = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.fm = load i8, ptr %i.by, align 1, !tbaa !8
  %i.fn = load i8, ptr %1, align 1, !tbaa !8
  %i.fo = zext i8 %i.fn to i32
  %i.fp = load i8, ptr %i.a, align 1, !tbaa !8
  %i.fq = zext i8 %i.fp to i32
  %i.fr = sub nsw i32 %i.fo, %i.fq                ; 20 uses
  %i.fs = load i8, ptr %i.b, align 1, !tbaa !8
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load i8, ptr %i.c, align 1, !tbaa !8
  %i.fv = zext i8 %i.fu to i32
  %i.fw = sub nsw i32 %i.ft, %i.fv                ; 20 uses
  %i.fx = mul nsw i32 %i.fr, %i.ca
  %i.fy = mul nsw i32 %i.fw, %i.cc
  %i.fz = add nsw i32 %i.fy, %i.fx
  %i.ga = mul nsw i32 %i.fl, %i.cd
  %i.gb = add nsw i32 %i.fz, %i.ga
  %i.gc = mul nsw i32 %i.fr, %i.cf
  %i.gd = mul nsw i32 %i.fw, %i.ch
  %i.ge = add nsw i32 %i.gd, %i.gc
  %i.gf = mul nsw i32 %i.fl, %i.ci
  %i.gg = add nsw i32 %i.ge, %i.gf
  %i.gh = mul nsw i32 %i.fr, %i.ck
  %i.gi = mul nsw i32 %i.fw, %i.cm
  %i.gj = add nsw i32 %i.gi, %i.gh
  %i.gk = mul nsw i32 %i.fl, %i.cn
  %i.gl = add nsw i32 %i.gj, %i.gk
  %i.gm = mul nsw i32 %i.fr, %i.cp
  %i.gn = mul nsw i32 %i.fw, %i.cr
  %i.go = add nsw i32 %i.gn, %i.gm
  %i.gp = mul nsw i32 %i.fl, %i.cs
  %i.gq = add nsw i32 %i.go, %i.gp
  %i.gr = mul nsw i32 %i.fr, %i.cu
  %i.gs = mul nsw i32 %i.fw, %i.cw
  %i.gt = add nsw i32 %i.gs, %i.gr
  %i.gu = mul nsw i32 %i.fl, %i.cx
  %i.gv = add nsw i32 %i.gt, %i.gu
  %i.gw = mul nsw i32 %i.fr, %i.cz
  %i.gx = mul nsw i32 %i.fw, %i.db
  %i.gy = add nsw i32 %i.gx, %i.gw
  %i.gz = mul nsw i32 %i.fl, %i.dc
  %i.ha = add nsw i32 %i.gy, %i.gz
  %i.hb = mul nsw i32 %i.fr, %i.de
  %i.hc = mul nsw i32 %i.fw, %i.dg
  %i.hd = add nsw i32 %i.hc, %i.hb
  %i.he = mul nsw i32 %i.fl, %i.dh
  %i.hf = add nsw i32 %i.hd, %i.he
  %i.hg = mul nsw i32 %i.fr, %i.dj
  %i.hh = mul nsw i32 %i.fw, %i.dl
  %i.hi = add nsw i32 %i.hh, %i.hg
  %i.hj = mul nsw i32 %i.fl, %i.dm
  %i.hk = add nsw i32 %i.hi, %i.hj
  %i.hl = mul nsw i32 %i.fr, %i.do
  %i.hm = mul nsw i32 %i.fw, %i.dq
  %i.hn = add nsw i32 %i.hm, %i.hl
  %i.ho = mul nsw i32 %i.fl, %i.dr
  %i.hp = add nsw i32 %i.hn, %i.ho
  %i.hq = mul nsw i32 %i.fr, %i.dt
  %i.hr = mul nsw i32 %i.fw, %i.dv
  %i.hs = add nsw i32 %i.hr, %i.hq
  %i.ht = mul nsw i32 %i.fl, %i.dw
  %i.hu = add nsw i32 %i.hs, %i.ht
  %i.hv = mul nsw i32 %i.fr, %i.dy
  %i.hw = mul nsw i32 %i.fw, %i.ea
  %i.hx = add nsw i32 %i.hw, %i.hv
  %i.hy = mul nsw i32 %i.fl, %i.eb
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = mul nsw i32 %i.fr, %i.ed
  %i.ib = mul nsw i32 %i.fw, %i.ef
  %i.ic = add nsw i32 %i.ib, %i.ia
  %i.id = mul nsw i32 %i.fl, %i.eg
  %i.ie = add nsw i32 %i.ic, %i.id
  %i.if = mul nsw i32 %i.fr, %i.ei
  %i.ig = mul nsw i32 %i.fw, %i.ek
  %i.ih = add nsw i32 %i.ig, %i.if
  %i.ii = mul nsw i32 %i.fl, %i.el
  %i.ij = add nsw i32 %i.ih, %i.ii
  %i.ik = mul nsw i32 %i.fr, %i.en
  %i.il = mul nsw i32 %i.fw, %i.ep
  %i.im = add nsw i32 %i.il, %i.ik
  %i.in = mul nsw i32 %i.fl, %i.eq
  %i.io = add nsw i32 %i.im, %i.in
  %i.ip = mul nsw i32 %i.fr, %i.es
  %i.iq = mul nsw i32 %i.fw, %i.eu
  %i.ir = add nsw i32 %i.iq, %i.ip
  %i.is = mul nsw i32 %i.fl, %i.ev
  %i.it = add nsw i32 %i.ir, %i.is
  %3 = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.iu = zext i8 %3 to i32
  %i.iv = mul nsw i32 %i.fr, %i.iu
  %i.iw = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.ix = zext i8 %i.iw to i32
  %i.iy = mul nsw i32 %i.fw, %i.ix
  %i.iz = add nsw i32 %i.iy, %i.iv
  %i.ja = zext i8 %2 to i32
  %i.jb = mul nsw i32 %i.fl, %i.ja
  %i.jc = mul nsw i32 %i.fr, %i.ex
  %4 = load i8, ptr %i.b, align 1, !tbaa !8
  %i.jd = zext i8 %4 to i32
  %i.je = mul nsw i32 %i.fw, %i.jd
  %i.jf = add nsw i32 %i.je, %i.jc
  %i.jg = zext i8 %i.fh to i32
  %i.jh = mul nsw i32 %i.fl, %i.jg
  %i.ji = add nsw i32 %i.jf, %i.jh
  %i.jj = mul nsw i32 %i.fr, %i.ez
  %i.jk = mul nsw i32 %i.fw, %i.fb
  %i.jl = add nsw i32 %i.jk, %i.jj
  %i.jm = zext i8 %i.br to i32
  %i.jn = mul nsw i32 %i.fl, %i.jm
  %i.jo = add nsw i32 %i.jl, %i.jn
  %i.jp = zext i8 %i.fc to i32
  %i.jq = mul nsw i32 %i.fr, %i.jp
  %i.jr = mul nsw i32 %i.fw, %i.fe
  %i.js = add nsw i32 %i.jr, %i.jq
  %i.jt = zext i8 %i.bv to i32
  %i.ju = mul nsw i32 %i.fl, %i.jt
  %i.jv = add nsw i32 %i.js, %i.ju
  %i.jw = mul nsw i32 %i.fr, %i.fg
  %5 = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.jx = zext i8 %5 to i32
  %i.jy = mul nsw i32 %i.fw, %i.jx
  %i.jz = add nsw i32 %i.jy, %i.jw
  %i.ka = zext i8 %i.fm to i32
  %i.kb = mul nsw i32 %i.fl, %i.ka
  %i.kc = add nsw i32 %i.jz, %i.kb
  %i.kd = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %i.ke = insertelement <4 x i32> %i.kd, i32 %i.kc, i64 1
  %i.kf = insertelement <4 x i32> %i.ke, i32 %i.jv, i64 2 ; 2 uses
  %i.kg = insertelement <4 x i32> %i.kf, i32 %i.ji, i64 3
  %i.kh = shufflevector <4 x i32> %i.kf, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.ki = insertelement <4 x i32> %i.kh, i32 %i.jb, i64 0
  %i.kj = insertelement <4 x i32> %i.ki, i32 %i.jo, i64 1
  %i.kk = add nsw <4 x i32> %i.kg, %i.kj          ; 4 uses
  %i.kl = shufflevector <4 x i32> %i.kk, <4 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.km = insertelement <16 x i32> %i.kl, i32 %i.it, i64 1
  %i.kn = insertelement <16 x i32> %i.km, i32 %i.ij, i64 2
  %i.ko = insertelement <16 x i32> %i.kn, i32 %i.io, i64 3
  %i.kp = insertelement <16 x i32> %i.ko, i32 %i.hz, i64 4
  %i.kq = insertelement <16 x i32> %i.kp, i32 %i.ie, i64 5
  %i.kr = insertelement <16 x i32> %i.kq, i32 %i.hp, i64 6
  %i.ks = insertelement <16 x i32> %i.kr, i32 %i.hu, i64 7
  %i.kt = insertelement <16 x i32> %i.ks, i32 %i.hf, i64 8
  %i.ku = insertelement <16 x i32> %i.kt, i32 %i.hk, i64 9
  %i.kv = insertelement <16 x i32> %i.ku, i32 %i.gv, i64 10
  %i.kw = insertelement <16 x i32> %i.kv, i32 %i.ha, i64 11
  %i.kx = insertelement <16 x i32> %i.kw, i32 %i.gl, i64 12
  %i.ky = insertelement <16 x i32> %i.kx, i32 %i.gq, i64 13
  %i.kz = insertelement <16 x i32> %i.ky, i32 %i.gb, i64 14
  %i.la = insertelement <16 x i32> %i.kz, i32 %i.gg, i64 15
  %i.lb = shl nsw <16 x i32> %i.la, splat (i32 1) ; 3 uses
  %i.lc = shufflevector <4 x i32> %i.kk, <4 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ld = icmp slt <16 x i32> %i.lb, %i.lc
  %i.le = shufflevector <4 x i32> %i.kk, <4 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.lf = icmp slt <16 x i32> %i.lb, %i.le
  %i.lg = select <16 x i1> %i.lf, <16 x i32> <i32 1073741824, i32 268435456, i32 16777216, i32 67108864, i32 1048576, i32 4194304, i32 65536, i32 262144, i32 4096, i32 16384, i32 256, i32 1024, i32 16, i32 64, i32 1, i32 4>, <16 x i32> <i32 -1073741824, i32 805306368, i32 50331648, i32 201326592, i32 3145728, i32 12582912, i32 196608, i32 786432, i32 12288, i32 49152, i32 768, i32 3072, i32 48, i32 192, i32 3, i32 12>
  %i.lh = shufflevector <4 x i32> %i.kk, <4 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.li = icmp slt <16 x i32> %i.lb, %i.lh
  %i.lj = select <16 x i1> %i.li, <16 x i32> <i32 -2147483648, i32 536870912, i32 33554432, i32 134217728, i32 2097152, i32 8388608, i32 131072, i32 524288, i32 8192, i32 32768, i32 512, i32 2048, i32 32, i32 128, i32 2, i32 8>, <16 x i32> zeroinitializer
  %i.lk = select <16 x i1> %i.ld, <16 x i32> %i.lg, <16 x i32> %i.lj
  %i.ll = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.lk)
  ret i32 %i.ll
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stb__OptimizeColorsBlock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 16 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = add nuw nsw i32 %i.f, %i.i
  %i.k = icmp ugt i8 %i.e, %i.h
  %i.l = tail call i32 @llvm.umax.i32(i32 %i.f, i32 %i.i)
  %.1129 = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.i) ; 2 uses
  %.1127 = select i1 %i.k, i32 %i.f, i32 %i.l     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = add nuw nsw i32 %i.j, %i.o
  %i.q = icmp samesign ugt i32 %.1129, %i.o
  %i.r = tail call i32 @llvm.umax.i32(i32 %.1127, i32 %i.o)
  %.1129.1 = tail call i32 @llvm.umin.i32(i32 %.1129, i32 %i.o) ; 2 uses
  %.1127.1 = select i1 %i.q, i32 %.1127, i32 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i32                      ; 4 uses
  %i.v = add nuw nsw i32 %i.p, %i.u
  %i.w = icmp samesign ugt i32 %.1129.1, %i.u
  %i.x = tail call i32 @llvm.umax.i32(i32 %.1127.1, i32 %i.u)
  %.1129.2 = tail call i32 @llvm.umin.i32(i32 %.1129.1, i32 %i.u) ; 2 uses
  %.1127.2 = select i1 %i.w, i32 %.1127.1, i32 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = zext i8 %i.z to i32                     ; 4 uses
  %i.ab = add nuw nsw i32 %i.v, %i.aa
  %i.ac = icmp samesign ugt i32 %.1129.2, %i.aa
  %i.ad = tail call i32 @llvm.umax.i32(i32 %.1127.2, i32 %i.aa)
  %.1129.3 = tail call i32 @llvm.umin.i32(i32 %.1129.2, i32 %i.aa) ; 2 uses
  %.1127.3 = select i1 %i.ac, i32 %.1127.2, i32 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i32                    ; 4 uses
  %i.ah = add nuw nsw i32 %i.ab, %i.ag
  %i.ai = icmp samesign ugt i32 %.1129.3, %i.ag
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.1127.3, i32 %i.ag)
  %.1129.4 = tail call i32 @llvm.umin.i32(i32 %.1129.3, i32 %i.ag) ; 2 uses
  %.1127.4 = select i1 %i.ai, i32 %.1127.3, i32 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.al to i32                    ; 4 uses
  %i.an = add nuw nsw i32 %i.ah, %i.am
  %i.ao = icmp samesign ugt i32 %.1129.4, %i.am
  %i.ap = tail call i32 @llvm.umax.i32(i32 %.1127.4, i32 %i.am)
  %.1129.5 = tail call i32 @llvm.umin.i32(i32 %.1129.4, i32 %i.am) ; 2 uses
  %.1127.5 = select i1 %i.ao, i32 %.1127.4, i32 %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = zext i8 %i.ar to i32                    ; 4 uses
  %i.at = add nuw nsw i32 %i.an, %i.as
  %i.au = icmp samesign ugt i32 %.1129.5, %i.as
  %i.av = tail call i32 @llvm.umax.i32(i32 %.1127.5, i32 %i.as)
  %.1129.6 = tail call i32 @llvm.umin.i32(i32 %.1129.5, i32 %i.as) ; 2 uses
  %.1127.6 = select i1 %i.au, i32 %.1127.5, i32 %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i32                    ; 4 uses
  %i.az = add nuw nsw i32 %i.at, %i.ay
  %i.ba = icmp samesign ugt i32 %.1129.6, %i.ay
  %i.bb = tail call i32 @llvm.umax.i32(i32 %.1127.6, i32 %i.ay)
  %.1129.7 = tail call i32 @llvm.umin.i32(i32 %.1129.6, i32 %i.ay) ; 2 uses
  %.1127.7 = select i1 %i.ba, i32 %.1127.6, i32 %i.bb ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = zext i8 %i.bd to i32                    ; 4 uses
  %i.bf = add nuw nsw i32 %i.az, %i.be
  %i.bg = icmp samesign ugt i32 %.1129.7, %i.be
  %i.bh = tail call i32 @llvm.umax.i32(i32 %.1127.7, i32 %i.be)
  %.1129.8 = tail call i32 @llvm.umin.i32(i32 %.1129.7, i32 %i.be) ; 2 uses
  %.1127.8 = select i1 %i.bg, i32 %.1127.7, i32 %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = zext i8 %i.bj to i32                    ; 4 uses
  %i.bl = add nuw nsw i32 %i.bf, %i.bk
  %i.bm = icmp samesign ugt i32 %.1129.8, %i.bk
  %i.bn = tail call i32 @llvm.umax.i32(i32 %.1127.8, i32 %i.bk)
  %.1129.9 = tail call i32 @llvm.umin.i32(i32 %.1129.8, i32 %i.bk) ; 2 uses
  %.1127.9 = select i1 %i.bm, i32 %.1127.8, i32 %i.bn ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = zext i8 %i.bp to i32                    ; 4 uses
  %i.br = add nuw nsw i32 %i.bl, %i.bq
  %i.bs = icmp samesign ugt i32 %.1129.9, %i.bq
  %i.bt = tail call i32 @llvm.umax.i32(i32 %.1127.9, i32 %i.bq)
  %.1129.10 = tail call i32 @llvm.umin.i32(i32 %.1129.9, i32 %i.bq) ; 2 uses
  %.1127.10 = select i1 %i.bs, i32 %.1127.9, i32 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i32                    ; 4 uses
  %i.bx = add nuw nsw i32 %i.br, %i.bw
  %i.by = icmp samesign ugt i32 %.1129.10, %i.bw
  %i.bz = tail call i32 @llvm.umax.i32(i32 %.1127.10, i32 %i.bw)
  %.1129.11 = tail call i32 @llvm.umin.i32(i32 %.1129.10, i32 %i.bw) ; 2 uses
  %.1127.11 = select i1 %i.by, i32 %.1127.10, i32 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = zext i8 %i.cb to i32                    ; 4 uses
  %i.cd = add nuw nsw i32 %i.bx, %i.cc
  %i.ce = icmp samesign ugt i32 %.1129.11, %i.cc
  %i.cf = tail call i32 @llvm.umax.i32(i32 %.1127.11, i32 %i.cc)
  %.1129.12 = tail call i32 @llvm.umin.i32(i32 %.1129.11, i32 %i.cc) ; 2 uses
  %.1127.12 = select i1 %i.ce, i32 %.1127.11, i32 %i.cf ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.ci = zext i8 %i.ch to i32                    ; 4 uses
  %i.cj = add nuw nsw i32 %i.cd, %i.ci
  %i.ck = icmp samesign ugt i32 %.1129.12, %i.ci
  %i.cl = tail call i32 @llvm.umax.i32(i32 %.1127.12, i32 %i.ci)
  %.1129.13 = tail call i32 @llvm.umin.i32(i32 %.1129.12, i32 %i.ci) ; 2 uses
  %.1127.13 = select i1 %i.ck, i32 %.1127.12, i32 %i.cl ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = zext i8 %i.cn to i32                    ; 4 uses
  %i.cp = add nuw nsw i32 %i.cj, %i.co
  %i.cq = icmp samesign ugt i32 %.1129.13, %i.co
  %i.cr = tail call i32 @llvm.umax.i32(i32 %.1127.13, i32 %i.co)
  %.1129.14 = tail call i32 @llvm.umin.i32(i32 %.1129.13, i32 %i.co)
  %.1127.14 = select i1 %i.cq, i32 %.1127.13, i32 %i.cr
  %i.cs = add nuw nsw i32 %i.cp, 8
  %i.ct = lshr i32 %i.cs, 4
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !9
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.1129.14, ptr %i.cv, align 4, !tbaa !9
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.1127.14, ptr %i.cw, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.preheader150.preheader, label %bb.b, !llvm.loop !15

.preheader150.preheader:                          ; preds = %bb.b
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !9
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.dc = uitofp nneg i32 %i.gr to float
  %i.dd = fdiv float %i.dc, 2.550000e+02          ; 4 uses
  %i.de = sitofp i32 %i.gt to float
end_hunk_0
