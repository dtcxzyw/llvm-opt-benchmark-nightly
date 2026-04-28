inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@YuvToRgba4444Row:bb.a
  %i.cf = sub nsw <16 x i32> %i.br, %i.ce         ; 2 uses
  %i.cg = add nsw <16 x i32> %i.cf, splat (i32 8708) ; 2 uses
  %i.ch = icmp ult <16 x i32> %i.cg, splat (i32 16384)
  %i.ci = lshr <16 x i32> %i.cg, splat (i32 10)
  %i.cj = icmp slt <16 x i32> %i.cf, splat (i32 -8708)
  %i.ck = select <16 x i1> %i.cj, <16 x i32> zeroinitializer, <16 x i32> splat (i32 15)
  %i.cl = select <16 x i1> %i.ch, <16 x i32> %i.ci, <16 x i32> %i.ck
  %i.cm = mul nuw nsw <16 x i32> %i.bo, splat (i32 33050)
  %i.cn = lshr <16 x i32> %i.cm, splat (i32 8)    ; 2 uses
end_hunk_0
begin_hunk_1_@YuvToRgba4444Row:bb.a
  %i.cu = select <16 x i1> %i.cq, <16 x i32> %i.cr, <16 x i32> %i.ct
  %i.cv = and <16 x i32> %i.bx, splat (i32 240)
  %i.cw = select <16 x i1> %i.bw, <16 x i32> %i.cv, <16 x i32> %i.bz
  %i.cx = or <16 x i32> %i.cw, %i.cl
  %i.cy = trunc <16 x i32> %i.cx to <16 x i8>
  %i.cz = trunc <16 x i32> %i.cu to <16 x i8>
  %i.da = or <16 x i8> %i.cz, splat (i8 15)
end_hunk_1
begin_hunk_2_@YuvToRgba4444Row:bb.a
  %i.fg = sub nsw <16 x i32> %i.ez, %i.ce         ; 2 uses
  %i.fh = add nsw <16 x i32> %i.fg, splat (i32 8708) ; 2 uses
  %i.fi = icmp ult <16 x i32> %i.fh, splat (i32 16384)
  %i.fj = lshr <16 x i32> %i.fh, splat (i32 10)
  %i.fk = icmp slt <16 x i32> %i.fg, splat (i32 -8708)
  %i.fl = select <16 x i1> %i.fk, <16 x i32> zeroinitializer, <16 x i32> splat (i32 15)
  %i.fm = select <16 x i1> %i.fi, <16 x i32> %i.fj, <16 x i32> %i.fl
  %i.fn = add nuw nsw <16 x i32> %i.ez, %i.cn     ; 2 uses
  %i.fo = add nsw <16 x i32> %i.fn, splat (i32 -17685) ; 2 uses
end_hunk_2
begin_hunk_3_@YuvToRgba4444Row:bb.a
  %i.ft = select <16 x i1> %i.fp, <16 x i32> %i.fq, <16 x i32> %i.fs
  %i.fu = and <16 x i32> %i.fd, splat (i32 240)
  %i.fv = select <16 x i1> %i.fc, <16 x i32> %i.fu, <16 x i32> %i.ff
  %i.fw = or <16 x i32> %i.fv, %i.fm
  %i.fx = trunc <16 x i32> %i.fw to <16 x i8>
  %i.fy = trunc <16 x i32> %i.ft to <16 x i8>
  %i.fz = or <16 x i8> %i.fy, splat (i8 15)
end_hunk_3
begin_hunk_4_@YuvToRgba4444Row:bb.a
  %i.hc = lshr <4 x i32> %i.hb, splat (i32 8)     ; 2 uses
  %i.hd = add nuw nsw <4 x i32> %i.hc, %i.ha      ; 2 uses
  %i.he = add nsw <4 x i32> %i.hd, splat (i32 -14234) ; 2 uses
  %i.hf = lshr <4 x i32> %i.he, splat (i32 6)
  %i.hg = mul nuw nsw <4 x i32> %i.gx, splat (i32 6419)
  %i.hh = lshr <4 x i32> %i.hg, splat (i32 8)
  %i.hi = mul nuw nsw <4 x i32> %i.gy, splat (i32 13320)
end_hunk_4
begin_hunk_5_@YuvToRgba4444Row:bb.a
  %i.hl = sub nsw <4 x i32> %i.ha, %i.hk          ; 2 uses
  %i.hm = add nsw <4 x i32> %i.hl, splat (i32 8708) ; 2 uses
  %i.hn = icmp ult <4 x i32> %i.hm, splat (i32 16384)
  %i.ho = lshr <4 x i32> %i.hm, splat (i32 10)
  %i.hp = icmp slt <4 x i32> %i.hl, splat (i32 -8708)
  %i.hq = select <4 x i1> %i.hp, <4 x i32> zeroinitializer, <4 x i32> splat (i32 15)
  %i.hr = select <4 x i1> %i.hn, <4 x i32> %i.ho, <4 x i32> %i.hq
  %i.hs = mul nuw nsw <4 x i32> %i.gx, splat (i32 33050)
  %i.ht = lshr <4 x i32> %i.hs, splat (i32 8)     ; 2 uses
  %i.hu = add nuw nsw <4 x i32> %i.ht, %i.ha      ; 2 uses
  %i.hv = add nsw <4 x i32> %i.hu, splat (i32 -17685) ; 2 uses
  %i.hw = lshr <4 x i32> %i.hv, splat (i32 6)
  %i.hx = and <4 x i32> %i.hf, splat (i32 240)
  %i.hy = getelementptr inbounds nuw i8, ptr %next.gep77, i64 1
  %i.hz = getelementptr i8, ptr %i.gk, i64 3
  %i.ia = getelementptr i8, ptr %i.gl, i64 5
end_hunk_5
begin_hunk_6_@YuvToRgba4444Row:bb.a
  %i.iq = sub nsw <4 x i32> %i.im, %i.hk          ; 2 uses
  %i.ir = add nsw <4 x i32> %i.iq, splat (i32 8708) ; 2 uses
  %i.is = icmp ult <4 x i32> %i.ir, splat (i32 16384)
  %i.it = lshr <4 x i32> %i.ir, splat (i32 10)
  %i.iu = icmp slt <4 x i32> %i.iq, splat (i32 -8708)
  %i.iv = select <4 x i1> %i.iu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 15)
  %i.iw = select <4 x i1> %i.is, <4 x i32> %i.it, <4 x i32> %i.iv
  %i.ix = add nuw nsw <4 x i32> %i.im, %i.ht      ; 2 uses
  %i.iy = add nsw <4 x i32> %i.ix, splat (i32 -17685) ; 2 uses
  %i.iz = lshr <4 x i32> %i.iy, splat (i32 6)
  %i.ja = and <4 x i32> %i.ip, splat (i32 240)
  %5 = shufflevector <4 x i32> %i.he, <4 x i32> %i.hv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = icmp ult <8 x i32> %5, splat (i32 16384)
  %7 = shufflevector <4 x i32> %i.hx, <4 x i32> %i.hw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x i32> %i.hd, <4 x i32> %i.hu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = icmp samesign ult <8 x i32> %8, <i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685>
  %10 = select <8 x i1> %9, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %11 = select <8 x i1> %6, <8 x i32> %7, <8 x i32> %10
  %i.jb = shufflevector <4 x i32> %i.hr, <4 x i32> splat (i32 15), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = or <8 x i32> %11, %i.jb
  %i.jc = trunc <8 x i32> %12 to <8 x i8>
  %i.jd = shufflevector <4 x i32> %i.io, <4 x i32> %i.iy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.je = icmp ult <8 x i32> %i.jd, splat (i32 16384)
  %i.jf = shufflevector <4 x i32> %i.ja, <4 x i32> %i.iz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
end_hunk_6
begin_hunk_7_@YuvToRgba4444Row:bb.a
  %i.jh = icmp samesign ult <8 x i32> %i.jg, <i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685>
  %i.ji = select <8 x i1> %i.jh, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.jj = select <8 x i1> %i.je, <8 x i32> %i.jf, <8 x i32> %i.ji
  %i.jk = shufflevector <4 x i32> %i.iw, <4 x i32> splat (i32 15), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jl = or <8 x i32> %i.jj, %i.jk
  %i.jm = trunc <8 x i32> %i.jl to <8 x i8>
  %interleaved.vec86 = shufflevector <8 x i8> %i.jc, <8 x i8> %i.jm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
end_hunk_7
begin_hunk_8_@YuvToRgba4444Row:bb.a
  %i.kj = sub nsw i32 %i.jv, %i.ki                ; 2 uses
  %i.kk = add nsw i32 %i.kj, 8708                 ; 2 uses
  %i.kl = icmp ult i32 %i.kk, 16384
  %i.km = lshr i32 %i.kk, 10
  %i.kn = icmp slt i32 %i.kj, -8708
  %i.ko = select i1 %i.kn, i32 0, i32 15
  %i.kp = select i1 %i.kl, i32 %i.km, i32 %i.ko
  %i.kq = mul nuw nsw i32 %i.jr, 33050
  %i.kr = lshr i32 %i.kq, 8                       ; 2 uses
end_hunk_8
begin_hunk_9_@YuvToRgba4444Row:bb.a
  %i.ky = select i1 %i.ku, i32 %i.kv, i32 %i.kx
  %i.kz = and i32 %i.kb, 240
  %i.la = select i1 %i.ka, i32 %i.kz, i32 %i.kd
  %i.lb = or i32 %i.la, %i.kp
  %i.lc = trunc i32 %i.lb to i8
  store i8 %i.lc, ptr %.02128, align 1, !tbaa !12
  %i.ld = trunc i32 %i.ky to i8
end_hunk_9
begin_hunk_10_@YuvToRgba4444Row:bb.a
  %i.ls = sub nsw i32 %i.ll, %i.ki                ; 2 uses
  %i.lt = add nsw i32 %i.ls, 8708                 ; 2 uses
  %i.lu = icmp ult i32 %i.lt, 16384
  %i.lv = lshr i32 %i.lt, 10
  %i.lw = icmp slt i32 %i.ls, -8708
  %i.lx = select i1 %i.lw, i32 0, i32 15
  %i.ly = select i1 %i.lu, i32 %i.lv, i32 %i.lx
  %i.lz = add nuw nsw i32 %i.ll, %i.kr            ; 2 uses
  %i.ma = add nsw i32 %i.lz, -17685               ; 2 uses
end_hunk_10
begin_hunk_11_@YuvToRgba4444Row:bb.a
  %i.mf = select i1 %i.mb, i32 %i.mc, i32 %i.me
  %i.mg = and i32 %i.lp, 240
  %i.mh = select i1 %i.lo, i32 %i.mg, i32 %i.lr
  %i.mi = or i32 %i.mh, %i.ly
  %i.mj = trunc i32 %i.mi to i8
  store i8 %i.mj, ptr %i.lj, align 1, !tbaa !12
  %i.mk = trunc i32 %i.mf to i8
end_hunk_11
begin_hunk_12_@YuvToRgba4444Row:bb.a
  %i.nn = sub nsw i32 %i.mz, %i.nm                ; 2 uses
  %i.no = add nsw i32 %i.nn, 8708                 ; 2 uses
  %i.np = icmp ult i32 %i.no, 16384
  %i.nq = lshr i32 %i.no, 10
  %i.nr = icmp slt i32 %i.nn, -8708
  %i.ns = select i1 %i.nr, i32 0, i32 15
  %i.nt = select i1 %i.np, i32 %i.nq, i32 %i.ns
  %i.nu = mul nuw nsw i32 %i.mv, 33050
  %i.nv = lshr i32 %i.nu, 8
end_hunk_12
begin_hunk_13_@YuvToRgba4444Row:bb.a
  %i.oc = select i1 %i.ny, i32 %i.nz, i32 %i.ob
  %i.od = and i32 %i.nf, 240
  %i.oe = select i1 %i.ne, i32 %i.od, i32 %i.nh
  %i.of = or i32 %i.oe, %i.nt
  %i.og = trunc i32 %i.of to i8
  store i8 %i.og, ptr %.021.lcssa, align 1, !tbaa !12
  %i.oh = trunc i32 %i.oc to i8
end_hunk_13
begin_hunk_14_@YuvToRgb565Row:bb.a
  %i.bt = lshr <16 x i32> %i.bs, splat (i32 8)    ; 2 uses
  %i.bu = add nuw nsw <16 x i32> %i.bt, %i.br     ; 2 uses
  %i.bv = add nsw <16 x i32> %i.bu, splat (i32 -14234) ; 2 uses
  %i.bw = lshr <16 x i32> %i.bv, splat (i32 6)
  %i.bx = mul nuw nsw <16 x i32> %i.bo, splat (i32 6419)
  %i.by = lshr <16 x i32> %i.bx, splat (i32 8)
  %i.bz = mul nuw nsw <16 x i32> %i.bp, splat (i32 13320)
end_hunk_14
begin_hunk_15_@YuvToRgb565Row:bb.a
  %i.ck = lshr <16 x i32> %i.cj, splat (i32 8)    ; 2 uses
  %i.cl = add nuw nsw <16 x i32> %i.ck, %i.br     ; 2 uses
  %i.cm = add nsw <16 x i32> %i.cl, splat (i32 -17685) ; 2 uses
  %i.cn = lshr <16 x i32> %i.cm, splat (i32 9)
  %i.co = and <16 x i32> %i.bw, splat (i32 248)
  %i.cp = lshr <16 x i32> %i.ci, splat (i32 5)
  %i.cq = shl nuw nsw <16 x i32> %i.ci, splat (i32 3)
  %i.cr = and <16 x i32> %i.cq, splat (i32 224)
  %i.cs = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ct = getelementptr i8, ptr %i.s, i64 3
  %i.cu = getelementptr i8, ptr %i.t, i64 5
end_hunk_15
begin_hunk_16_@YuvToRgb565Row:bb.a
  %i.fe = add nuw nsw <16 x i32> %i.eq, %i.ck     ; 2 uses
  %i.ff = add nsw <16 x i32> %i.fe, splat (i32 -17685) ; 2 uses
  %i.fg = icmp ult <16 x i32> %i.ff, splat (i32 16384)
  %i.fh = lshr <16 x i32> %i.ff, splat (i32 9)
  %i.fi = icmp samesign ult <16 x i32> %i.fe, splat (i32 17685)
  %i.fj = select <16 x i1> %i.fi, <16 x i32> zeroinitializer, <16 x i32> splat (i32 31)
  %i.fk = select <16 x i1> %i.fg, <16 x i32> %i.fh, <16 x i32> %i.fj
  %i.fl = and <16 x i32> %i.eu, splat (i32 248)
  %i.fm = select <16 x i1> %i.et, <16 x i32> %i.fl, <16 x i32> %i.ew
  %5 = lshr <16 x i32> %i.fd, splat (i32 5)
  %i.fn = shl nuw nsw <16 x i32> %i.fd, splat (i32 3)
  %i.fo = and <16 x i32> %i.fn, splat (i32 224)
  %6 = shufflevector <16 x i32> %i.cp, <16 x i32> %i.cr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %7 = shufflevector <16 x i32> %i.bv, <16 x i32> %i.cm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %8 = icmp ult <32 x i32> %7, splat (i32 16384)
  %i.fp = shufflevector <16 x i32> %i.co, <16 x i32> %i.cn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fq = shufflevector <16 x i32> %i.bu, <16 x i32> %i.cl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %9 = icmp samesign ult <32 x i32> %i.fq, <i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685, i32 17685>
  %10 = select <32 x i1> %9, <32 x i32> zeroinitializer, <32 x i32> <i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 248, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  %11 = select <32 x i1> %8, <32 x i32> %i.fp, <32 x i32> %10
  %i.fr = or <32 x i32> %6, %11
  %12 = or <16 x i32> %i.fm, %5
  %13 = or <16 x i32> %i.fo, %i.fk
  %14 = shufflevector <16 x i32> %12, <16 x i32> %13, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fs = shufflevector <32 x i32> %i.fr, <32 x i32> %14, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  %interleaved.vec = trunc <64 x i32> %i.fs to <64 x i8>
  store <64 x i8> %interleaved.vec, ptr %next.gep68, align 1, !tbaa !12, !alias.scope !110, !noalias !112
  %index.next = add nuw i64 %index, 16            ; 2 uses
end_hunk_16
begin_hunk_17_@YuvToRgb565Row:bb.a
  %i.gt = lshr <4 x i32> %i.gs, splat (i32 8)     ; 2 uses
  %i.gu = add nuw nsw <4 x i32> %i.gt, %i.gr      ; 2 uses
  %i.gv = add nsw <4 x i32> %i.gu, splat (i32 -14234) ; 2 uses
  %i.gw = lshr <4 x i32> %i.gv, splat (i32 6)
  %i.gx = mul nuw nsw <4 x i32> %i.go, splat (i32 6419)
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 8)
  %i.gz = mul nuw nsw <4 x i32> %i.gp, splat (i32 13320)
end_hunk_17
begin_hunk_18_@YuvToRgb565Row:bb.a
  %i.hk = lshr <4 x i32> %i.hj, splat (i32 8)     ; 2 uses
  %i.hl = add nuw nsw <4 x i32> %i.hk, %i.gr      ; 2 uses
  %i.hm = add nsw <4 x i32> %i.hl, splat (i32 -17685) ; 2 uses
  %i.hn = lshr <4 x i32> %i.hm, splat (i32 9)
  %i.ho = and <4 x i32> %i.gw, splat (i32 248)
  %i.hp = lshr <4 x i32> %i.hi, splat (i32 5)
  %i.hq = shl nuw nsw <4 x i32> %i.hi, splat (i32 3)
  %i.hr = and <4 x i32> %i.hq, splat (i32 224)
  %i.hs = getelementptr inbounds nuw i8, ptr %next.gep77, i64 1
  %i.ht = getelementptr i8, ptr %i.gb, i64 3
  %i.hu = getelementptr i8, ptr %i.gc, i64 5
end_hunk_18
begin_hunk_19_@YuvToRgb565Row:bb.a
  %i.iu = add nuw nsw <4 x i32> %i.ig, %i.hk      ; 2 uses
  %i.iv = add nsw <4 x i32> %i.iu, splat (i32 -17685) ; 2 uses
  %i.iw = icmp ult <4 x i32> %i.iv, splat (i32 16384)
  %i.ix = lshr <4 x i32> %i.iv, splat (i32 9)
  %i.iy = icmp samesign ult <4 x i32> %i.iu, splat (i32 17685)
  %i.iz = select <4 x i1> %i.iy, <4 x i32> zeroinitializer, <4 x i32> splat (i32 31)
  %i.ja = select <4 x i1> %i.iw, <4 x i32> %i.ix, <4 x i32> %i.iz
  %i.jb = and <4 x i32> %i.ik, splat (i32 248)
  %i.jc = select <4 x i1> %i.ij, <4 x i32> %i.jb, <4 x i32> %i.im
  %15 = lshr <4 x i32> %i.it, splat (i32 5)
  %i.jd = shl nuw nsw <4 x i32> %i.it, splat (i32 3)
  %i.je = and <4 x i32> %i.jd, splat (i32 224)
  %16 = shufflevector <4 x i32> %i.hp, <4 x i32> %i.hr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = shufflevector <4 x i32> %i.gv, <4 x i32> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = icmp ult <8 x i32> %17, splat (i32 16384)
  %i.jf = shufflevector <4 x i32> %i.ho, <4 x i32> %i.hn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %19 = shufflevector <4 x i32> %i.gu, <4 x i32> %i.hl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %20 = icmp samesign ult <8 x i32> %19, <i32 14234, i32 14234, i32 14234, i32 14234, i32 17685, i32 17685, i32 17685, i32 17685>
  %21 = select <8 x i1> %20, <8 x i32> zeroinitializer, <8 x i32> <i32 248, i32 248, i32 248, i32 248, i32 31, i32 31, i32 31, i32 31>
  %22 = select <8 x i1> %18, <8 x i32> %i.jf, <8 x i32> %21
  %i.jg = or <8 x i32> %16, %22
  %23 = trunc <8 x i32> %i.jg to <8 x i8>
  %24 = or <4 x i32> %i.jc, %15
  %25 = or <4 x i32> %i.je, %i.ja
  %26 = shufflevector <4 x i32> %24, <4 x i32> %25, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jh = trunc <8 x i32> %26 to <8 x i8>
  %interleaved.vec86 = shufflevector <8 x i8> %23, <8 x i8> %i.jh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec86, ptr %next.gep82, align 1, !tbaa !12, !alias.scope !110, !noalias !112
  %index.next87 = add nuw i64 %index76, 4         ; 2 uses
  %i.ji = icmp eq i64 %index.next87, %n.vec75
end_hunk_19
begin_hunk_20_@YuvToRgb565Row:bb.a
  %i.kn = add nuw nsw i32 %i.km, %i.jq            ; 2 uses
  %i.ko = add nsw i32 %i.kn, -17685               ; 2 uses
  %i.kp = icmp ult i32 %i.ko, 16384
  %i.kq = lshr i32 %i.ko, 9
  %i.kr = icmp samesign ult i32 %i.kn, 17685
  %i.ks = select i1 %i.kr, i32 0, i32 31
  %i.kt = select i1 %i.kp, i32 %i.kq, i32 %i.ks
  %i.ku = and i32 %i.jw, 248
  %i.kv = select i1 %i.jv, i32 %i.ku, i32 %i.jy
end_hunk_20
begin_hunk_21_@YuvToRgb565Row:bb.a
  %i.kx = or i32 %i.kw, %i.kv
  %i.ky = shl nuw nsw i32 %i.kk, 3
  %i.kz = and i32 %i.ky, 224
  %i.la = or i32 %i.kz, %i.kt
  %i.lb = trunc i32 %i.kx to i8
  store i8 %i.lb, ptr %.02128, align 1, !tbaa !12
  %i.lc = trunc i32 %i.la to i8
end_hunk_21
begin_hunk_22_@YuvToRgb565Row:bb.a
  %i.lx = add nuw nsw i32 %i.lj, %i.km            ; 2 uses
  %i.ly = add nsw i32 %i.lx, -17685               ; 2 uses
  %i.lz = icmp ult i32 %i.ly, 16384
  %i.ma = lshr i32 %i.ly, 9
  %i.mb = icmp samesign ult i32 %i.lx, 17685
  %i.mc = select i1 %i.mb, i32 0, i32 31
  %i.md = select i1 %i.lz, i32 %i.ma, i32 %i.mc
  %i.me = and i32 %i.ln, 248
  %i.mf = select i1 %i.lm, i32 %i.me, i32 %i.lp
end_hunk_22
begin_hunk_23_@YuvToRgb565Row:bb.a
  %i.mh = or i32 %i.mf, %i.mg
  %i.mi = shl nuw nsw i32 %i.lw, 3
  %i.mj = and i32 %i.mi, 224
  %i.mk = or i32 %i.mj, %i.md
  %i.ml = trunc i32 %i.mh to i8
  store i8 %i.ml, ptr %i.lh, align 1, !tbaa !12
  %i.mm = trunc i32 %i.mk to i8
end_hunk_23
begin_hunk_24_@YuvToRgb565Row:bb.a
  %i.nx = add nuw nsw i32 %i.nw, %i.na            ; 2 uses
  %i.ny = add nsw i32 %i.nx, -17685               ; 2 uses
  %i.nz = icmp ult i32 %i.ny, 16384
  %i.oa = lshr i32 %i.ny, 9
  %i.ob = icmp samesign ult i32 %i.nx, 17685
  %i.oc = select i1 %i.ob, i32 0, i32 31
  %i.od = select i1 %i.nz, i32 %i.oa, i32 %i.oc
  %i.oe = and i32 %i.ng, 248
  %i.of = select i1 %i.nf, i32 %i.oe, i32 %i.ni
end_hunk_24
begin_hunk_25_@YuvToRgb565Row:bb.a
  %i.oh = or i32 %i.of, %i.og
  %i.oi = shl nuw nsw i32 %i.nu, 3
  %i.oj = and i32 %i.oi, 224
  %i.ok = or i32 %i.oj, %i.od
  %i.ol = trunc i32 %i.oh to i8
  store i8 %i.ol, ptr %.021.lcssa, align 1, !tbaa !12
  %i.om = trunc i32 %i.ok to i8
end_hunk_25
